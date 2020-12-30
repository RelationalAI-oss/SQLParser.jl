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

# function convert_to_node_type(::Val{T}) where T
#     str_name = string(T)
#     @assert startswith(str_name, "T_")
#     type_name = SubString(str_name, 3)
#     return eval(Meta.parse("SQLParser.$type_name"))
# end

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
