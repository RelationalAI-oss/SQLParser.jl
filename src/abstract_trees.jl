struct FieldNameAndValuePair
    name::String
    value
end

function AbstractTrees.printnode(io::IO, x::FieldNameAndValuePair)
    if x.value isa Ptr && x.value == C_NULL
        Base.print(io, string(x.name, " -> ( 0x0 )"))
    else
        Base.print(io, x.name)
    end
end

function AbstractTrees.children(x::FieldNameAndValuePair)
    x.value isa Ptr && x.value == C_NULL && return ()
    return (simple_type_value(x.value), )
end

const IGNORE_LIST = [
    :T_Invalid,
    :T_TIDBitmap, #Cvoid
    :T_List,
    :T_SeqScan, #duplicate of Scan
    :T_DistinctExpr, #duplicate of OpExpr
    :T_NullIfExpr, #duplicate of OpExpr
    :T_Value, # special union struct
    :T_String,
    :T_Null,
    :T_Integer,
    :T_Float,
]

function generate_code_for_abstract_tree_interface()
    open(joinpath(@__DIR__, "abstract_trees_ext.jl"), "w") do io
        SQLParser.generate_code_for_abstract_tree_interface(io)
    end
end

function generate_code_for_abstract_tree_interface(io)

    Base.print(io,
    """
    # This is an auto-generated file.
    # You can regenerate this file using the following command:
    # `julia --project=. -e "using SQLParser; SQLParser.generate_code_for_abstract_tree_interface()"`
    """)

    node_tag_enum_names = map(x -> x[1], CEnum.name_value_pairs(NodeTag))

    target_node_tag_enum_names = filter(x -> !(x in IGNORE_LIST), node_tag_enum_names)

    for enum_name in target_node_tag_enum_names
        enum_name_str = string(enum_name)
        @assert startswith(enum_name_str, "T_")
        tp_name_str = SubString(enum_name_str, 3)
        tp_name = Symbol(tp_name_str)
        try
            tp = eval(Meta.parse("SQLParser.$tp_name"))
            tp == Nothing && continue
            local printnode_body =
            """
            hasfield($tp_name_str, :type) && $(enum_name != :T_Expr) && @assert x.type == $enum_name "x.type is \$(x.type), but expected to be $enum_name"
                Base.print(io, "$tp_name_str")
                Base.print(io, "(")
            """
            local children_body =
            """
            hasfield($tp_name_str, :type) && $(enum_name != :T_Expr) && @assert x.type == $enum_name "x.type is \$(x.type), but expected to be $enum_name"
                children = []
            """
            is_first_simple_field = true
            for (i, (fld, fld_tp)) in enumerate(zip(fieldnames(tp), tp.types))
                fld == :type && continue
                fld_name = string(fld)
                if is_simple_type(fld_tp)
                    printnode_body *=
                    """
                        $(!is_first_simple_field) && Base.print(io, ", ")
                        Base.print(io, "$fld_name")
                        Base.print(io, "=")
                        Base.print(io, simple_type_value(x.$fld_name))
                    """
                    is_first_simple_field = false
                else
                    children_body *=
                    """
                        push!(children, FieldNameAndValuePair("$fld_name", x.$fld_name))
                    """
                end
            end

            q =
            """
            function convert_to_node_type(::Val{$enum_name})
                return $tp_name
            end
            function AbstractTrees.printnode(io::IO, x::$tp_name)
                $printnode_body
                Base.print(io, ")")
            end

            function AbstractTrees.children(x::$tp_name)
                $children_body
                return children
            end
            """
            Base.print(io, q)
        catch e
            #swallow the error
        end
    end
end

function convert_to_node_type(::Val{T}) where T
    str_name = string(T)
    @assert startswith(str_name, "T_")
    type_name = SubString(str_name, 3)
    return eval(Meta.parse("SQLParser.$type_name"))
end

function convert_to_node_type(::Val{T_List})
    return List
end

function AbstractTrees.printnode(io::IO, x::List)
    @assert x.type == T_List
    Base.print(io, string("List(length=",x.length,")"))
end

function AbstractTrees.children(x::Ptr)
    return ()
end

function AbstractTrees.printnode(io::IO, x::Value)
    actual_value = convert_to_actual_value(x)
    if actual_value === nothing
        Base.print(io, "null")
    else
        AbstractTrees.printnode(io, actual_value === nothing ? C_NULL : actual_value)
    end
end
