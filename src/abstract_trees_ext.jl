function convert_to_node_type(::Val{T_Plan})
    return Plan
end
function AbstractTrees.printnode(io::IO, x::Plan)
    hasfield(Plan, :type) && true && @assert x.type == T_Plan "x.type is $(x.type), but expected to be T_Plan"
    Base.print(io, "Plan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "plan_width")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.plan_width))
    true && Base.print(io, ", ")
    Base.print(io, "parallel_aware")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_aware))
    true && Base.print(io, ", ")
    Base.print(io, "parallel_safe")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_safe))
    true && Base.print(io, ", ")
    Base.print(io, "plan_node_id")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.plan_node_id))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Plan)
    hasfield(Plan, :type) && true && @assert x.type == T_Plan "x.type is $(x.type), but expected to be T_Plan"
    children = []
    push!(children, FieldNameAndValuePair("startup_cost", x.startup_cost))
    push!(children, FieldNameAndValuePair("total_cost", x.total_cost))
    push!(children, FieldNameAndValuePair("plan_rows", x.plan_rows))
    push!(children, FieldNameAndValuePair("targetlist", x.targetlist))
    push!(children, FieldNameAndValuePair("qual", x.qual))
    push!(children, FieldNameAndValuePair("lefttree", x.lefttree))
    push!(children, FieldNameAndValuePair("righttree", x.righttree))
    push!(children, FieldNameAndValuePair("initPlan", x.initPlan))
    push!(children, FieldNameAndValuePair("extParam", x.extParam))
    push!(children, FieldNameAndValuePair("allParam", x.allParam))

    return children
end
function convert_to_node_type(::Val{T_Result})
    return Result
end
function AbstractTrees.printnode(io::IO, x::Result)
    hasfield(Result, :type) && true && @assert x.type == T_Result "x.type is $(x.type), but expected to be T_Result"
    Base.print(io, "Result")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::Result)
    hasfield(Result, :type) && true && @assert x.type == T_Result "x.type is $(x.type), but expected to be T_Result"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("resconstantqual", x.resconstantqual))

    return children
end
function convert_to_node_type(::Val{T_ProjectSet})
    return ProjectSet
end
function AbstractTrees.printnode(io::IO, x::ProjectSet)
    hasfield(ProjectSet, :type) && true && @assert x.type == T_ProjectSet "x.type is $(x.type), but expected to be T_ProjectSet"
    Base.print(io, "ProjectSet")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ProjectSet)
    hasfield(ProjectSet, :type) && true && @assert x.type == T_ProjectSet "x.type is $(x.type), but expected to be T_ProjectSet"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_ModifyTable})
    return ModifyTable
end
function AbstractTrees.printnode(io::IO, x::ModifyTable)
    hasfield(ModifyTable, :type) && true && @assert x.type == T_ModifyTable "x.type is $(x.type), but expected to be T_ModifyTable"
    Base.print(io, "ModifyTable")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "canSetTag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.canSetTag))
    true && Base.print(io, ", ")
    Base.print(io, "nominalRelation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nominalRelation))
    true && Base.print(io, ", ")
    Base.print(io, "resultRelIndex")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultRelIndex))
    true && Base.print(io, ", ")
    Base.print(io, "rootResultRelIndex")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rootResultRelIndex))
    true && Base.print(io, ", ")
    Base.print(io, "epqParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.epqParam))
    true && Base.print(io, ", ")
    Base.print(io, "exclRelRTI")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.exclRelRTI))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ModifyTable)
    hasfield(ModifyTable, :type) && true && @assert x.type == T_ModifyTable "x.type is $(x.type), but expected to be T_ModifyTable"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("operation", x.operation))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("resultRelations", x.resultRelations))
    push!(children, FieldNameAndValuePair("plans", x.plans))
    push!(children, FieldNameAndValuePair("withCheckOptionLists", x.withCheckOptionLists))
    push!(children, FieldNameAndValuePair("returningLists", x.returningLists))
    push!(children, FieldNameAndValuePair("fdwPrivLists", x.fdwPrivLists))
    push!(children, FieldNameAndValuePair("fdwDirectModifyPlans", x.fdwDirectModifyPlans))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))
    push!(children, FieldNameAndValuePair("onConflictAction", x.onConflictAction))
    push!(children, FieldNameAndValuePair("arbiterIndexes", x.arbiterIndexes))
    push!(children, FieldNameAndValuePair("onConflictSet", x.onConflictSet))
    push!(children, FieldNameAndValuePair("onConflictWhere", x.onConflictWhere))
    push!(children, FieldNameAndValuePair("exclRelTlist", x.exclRelTlist))

    return children
end
function convert_to_node_type(::Val{T_Append})
    return Append
end
function AbstractTrees.printnode(io::IO, x::Append)
    hasfield(Append, :type) && true && @assert x.type == T_Append "x.type is $(x.type), but expected to be T_Append"
    Base.print(io, "Append")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::Append)
    hasfield(Append, :type) && true && @assert x.type == T_Append "x.type is $(x.type), but expected to be T_Append"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("appendplans", x.appendplans))

    return children
end
function convert_to_node_type(::Val{T_MergeAppend})
    return MergeAppend
end
function AbstractTrees.printnode(io::IO, x::MergeAppend)
    hasfield(MergeAppend, :type) && true && @assert x.type == T_MergeAppend "x.type is $(x.type), but expected to be T_MergeAppend"
    Base.print(io, "MergeAppend")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "sortColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "sortOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortOperators))
    true && Base.print(io, ", ")
    Base.print(io, "collations")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collations))
    true && Base.print(io, ", ")
    Base.print(io, "nullsFirst")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nullsFirst))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MergeAppend)
    hasfield(MergeAppend, :type) && true && @assert x.type == T_MergeAppend "x.type is $(x.type), but expected to be T_MergeAppend"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("mergeplans", x.mergeplans))

    return children
end
function convert_to_node_type(::Val{T_RecursiveUnion})
    return RecursiveUnion
end
function AbstractTrees.printnode(io::IO, x::RecursiveUnion)
    hasfield(RecursiveUnion, :type) && true && @assert x.type == T_RecursiveUnion "x.type is $(x.type), but expected to be T_RecursiveUnion"
    Base.print(io, "RecursiveUnion")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "wtParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wtParam))
    true && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "dupColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dupColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "dupOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dupOperators))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RecursiveUnion)
    hasfield(RecursiveUnion, :type) && true && @assert x.type == T_RecursiveUnion "x.type is $(x.type), but expected to be T_RecursiveUnion"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_BitmapAnd})
    return BitmapAnd
end
function AbstractTrees.printnode(io::IO, x::BitmapAnd)
    hasfield(BitmapAnd, :type) && true && @assert x.type == T_BitmapAnd "x.type is $(x.type), but expected to be T_BitmapAnd"
    Base.print(io, "BitmapAnd")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapAnd)
    hasfield(BitmapAnd, :type) && true && @assert x.type == T_BitmapAnd "x.type is $(x.type), but expected to be T_BitmapAnd"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("bitmapplans", x.bitmapplans))

    return children
end
function convert_to_node_type(::Val{T_BitmapOr})
    return BitmapOr
end
function AbstractTrees.printnode(io::IO, x::BitmapOr)
    hasfield(BitmapOr, :type) && true && @assert x.type == T_BitmapOr "x.type is $(x.type), but expected to be T_BitmapOr"
    Base.print(io, "BitmapOr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "isshared")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isshared))

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapOr)
    hasfield(BitmapOr, :type) && true && @assert x.type == T_BitmapOr "x.type is $(x.type), but expected to be T_BitmapOr"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("bitmapplans", x.bitmapplans))

    return children
end
function convert_to_node_type(::Val{T_Scan})
    return Scan
end
function AbstractTrees.printnode(io::IO, x::Scan)
    hasfield(Scan, :type) && true && @assert x.type == T_Scan "x.type is $(x.type), but expected to be T_Scan"
    Base.print(io, "Scan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "scanrelid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.scanrelid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Scan)
    hasfield(Scan, :type) && true && @assert x.type == T_Scan "x.type is $(x.type), but expected to be T_Scan"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_SampleScan})
    return SampleScan
end
function AbstractTrees.printnode(io::IO, x::SampleScan)
    hasfield(SampleScan, :type) && true && @assert x.type == T_SampleScan "x.type is $(x.type), but expected to be T_SampleScan"
    Base.print(io, "SampleScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::SampleScan)
    hasfield(SampleScan, :type) && true && @assert x.type == T_SampleScan "x.type is $(x.type), but expected to be T_SampleScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("tablesample", x.tablesample))

    return children
end
function convert_to_node_type(::Val{T_IndexScan})
    return IndexScan
end
function AbstractTrees.printnode(io::IO, x::IndexScan)
    hasfield(IndexScan, :type) && true && @assert x.type == T_IndexScan "x.type is $(x.type), but expected to be T_IndexScan"
    Base.print(io, "IndexScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "indexid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexScan)
    hasfield(IndexScan, :type) && true && @assert x.type == T_IndexScan "x.type is $(x.type), but expected to be T_IndexScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("indexqual", x.indexqual))
    push!(children, FieldNameAndValuePair("indexqualorig", x.indexqualorig))
    push!(children, FieldNameAndValuePair("indexorderby", x.indexorderby))
    push!(children, FieldNameAndValuePair("indexorderbyorig", x.indexorderbyorig))
    push!(children, FieldNameAndValuePair("indexorderbyops", x.indexorderbyops))
    push!(children, FieldNameAndValuePair("indexorderdir", x.indexorderdir))

    return children
end
function convert_to_node_type(::Val{T_IndexOnlyScan})
    return IndexOnlyScan
end
function AbstractTrees.printnode(io::IO, x::IndexOnlyScan)
    hasfield(IndexOnlyScan, :type) && true && @assert x.type == T_IndexOnlyScan "x.type is $(x.type), but expected to be T_IndexOnlyScan"
    Base.print(io, "IndexOnlyScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "indexid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexOnlyScan)
    hasfield(IndexOnlyScan, :type) && true && @assert x.type == T_IndexOnlyScan "x.type is $(x.type), but expected to be T_IndexOnlyScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("indexqual", x.indexqual))
    push!(children, FieldNameAndValuePair("indexorderby", x.indexorderby))
    push!(children, FieldNameAndValuePair("indextlist", x.indextlist))
    push!(children, FieldNameAndValuePair("indexorderdir", x.indexorderdir))

    return children
end
function convert_to_node_type(::Val{T_BitmapIndexScan})
    return BitmapIndexScan
end
function AbstractTrees.printnode(io::IO, x::BitmapIndexScan)
    hasfield(BitmapIndexScan, :type) && true && @assert x.type == T_BitmapIndexScan "x.type is $(x.type), but expected to be T_BitmapIndexScan"
    Base.print(io, "BitmapIndexScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "indexid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexid))
    true && Base.print(io, ", ")
    Base.print(io, "isshared")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isshared))

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapIndexScan)
    hasfield(BitmapIndexScan, :type) && true && @assert x.type == T_BitmapIndexScan "x.type is $(x.type), but expected to be T_BitmapIndexScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("indexqual", x.indexqual))
    push!(children, FieldNameAndValuePair("indexqualorig", x.indexqualorig))

    return children
end
function convert_to_node_type(::Val{T_BitmapHeapScan})
    return BitmapHeapScan
end
function AbstractTrees.printnode(io::IO, x::BitmapHeapScan)
    hasfield(BitmapHeapScan, :type) && true && @assert x.type == T_BitmapHeapScan "x.type is $(x.type), but expected to be T_BitmapHeapScan"
    Base.print(io, "BitmapHeapScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapHeapScan)
    hasfield(BitmapHeapScan, :type) && true && @assert x.type == T_BitmapHeapScan "x.type is $(x.type), but expected to be T_BitmapHeapScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("bitmapqualorig", x.bitmapqualorig))

    return children
end
function convert_to_node_type(::Val{T_TidScan})
    return TidScan
end
function AbstractTrees.printnode(io::IO, x::TidScan)
    hasfield(TidScan, :type) && true && @assert x.type == T_TidScan "x.type is $(x.type), but expected to be T_TidScan"
    Base.print(io, "TidScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::TidScan)
    hasfield(TidScan, :type) && true && @assert x.type == T_TidScan "x.type is $(x.type), but expected to be T_TidScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("tidquals", x.tidquals))

    return children
end
function convert_to_node_type(::Val{T_SubqueryScan})
    return SubqueryScan
end
function AbstractTrees.printnode(io::IO, x::SubqueryScan)
    hasfield(SubqueryScan, :type) && true && @assert x.type == T_SubqueryScan "x.type is $(x.type), but expected to be T_SubqueryScan"
    Base.print(io, "SubqueryScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::SubqueryScan)
    hasfield(SubqueryScan, :type) && true && @assert x.type == T_SubqueryScan "x.type is $(x.type), but expected to be T_SubqueryScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("subplan", x.subplan))

    return children
end
function convert_to_node_type(::Val{T_FunctionScan})
    return FunctionScan
end
function AbstractTrees.printnode(io::IO, x::FunctionScan)
    hasfield(FunctionScan, :type) && true && @assert x.type == T_FunctionScan "x.type is $(x.type), but expected to be T_FunctionScan"
    Base.print(io, "FunctionScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "funcordinality")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcordinality))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FunctionScan)
    hasfield(FunctionScan, :type) && true && @assert x.type == T_FunctionScan "x.type is $(x.type), but expected to be T_FunctionScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("functions", x.functions))

    return children
end
function convert_to_node_type(::Val{T_ValuesScan})
    return ValuesScan
end
function AbstractTrees.printnode(io::IO, x::ValuesScan)
    hasfield(ValuesScan, :type) && true && @assert x.type == T_ValuesScan "x.type is $(x.type), but expected to be T_ValuesScan"
    Base.print(io, "ValuesScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ValuesScan)
    hasfield(ValuesScan, :type) && true && @assert x.type == T_ValuesScan "x.type is $(x.type), but expected to be T_ValuesScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("values_lists", x.values_lists))

    return children
end
function convert_to_node_type(::Val{T_TableFuncScan})
    return TableFuncScan
end
function AbstractTrees.printnode(io::IO, x::TableFuncScan)
    hasfield(TableFuncScan, :type) && true && @assert x.type == T_TableFuncScan "x.type is $(x.type), but expected to be T_TableFuncScan"
    Base.print(io, "TableFuncScan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::TableFuncScan)
    hasfield(TableFuncScan, :type) && true && @assert x.type == T_TableFuncScan "x.type is $(x.type), but expected to be T_TableFuncScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("tablefunc", x.tablefunc))

    return children
end
function convert_to_node_type(::Val{T_CteScan})
    return CteScan
end
function AbstractTrees.printnode(io::IO, x::CteScan)
    hasfield(CteScan, :type) && true && @assert x.type == T_CteScan "x.type is $(x.type), but expected to be T_CteScan"
    Base.print(io, "CteScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "ctePlanId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ctePlanId))
    true && Base.print(io, ", ")
    Base.print(io, "cteParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cteParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CteScan)
    hasfield(CteScan, :type) && true && @assert x.type == T_CteScan "x.type is $(x.type), but expected to be T_CteScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))

    return children
end
function convert_to_node_type(::Val{T_NamedTuplestoreScan})
    return NamedTuplestoreScan
end
function AbstractTrees.printnode(io::IO, x::NamedTuplestoreScan)
    hasfield(NamedTuplestoreScan, :type) && true && @assert x.type == T_NamedTuplestoreScan "x.type is $(x.type), but expected to be T_NamedTuplestoreScan"
    Base.print(io, "NamedTuplestoreScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "enrname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.enrname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NamedTuplestoreScan)
    hasfield(NamedTuplestoreScan, :type) && true && @assert x.type == T_NamedTuplestoreScan "x.type is $(x.type), but expected to be T_NamedTuplestoreScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))

    return children
end
function convert_to_node_type(::Val{T_WorkTableScan})
    return WorkTableScan
end
function AbstractTrees.printnode(io::IO, x::WorkTableScan)
    hasfield(WorkTableScan, :type) && true && @assert x.type == T_WorkTableScan "x.type is $(x.type), but expected to be T_WorkTableScan"
    Base.print(io, "WorkTableScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "wtParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wtParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WorkTableScan)
    hasfield(WorkTableScan, :type) && true && @assert x.type == T_WorkTableScan "x.type is $(x.type), but expected to be T_WorkTableScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))

    return children
end
function convert_to_node_type(::Val{T_ForeignScan})
    return ForeignScan
end
function AbstractTrees.printnode(io::IO, x::ForeignScan)
    hasfield(ForeignScan, :type) && true && @assert x.type == T_ForeignScan "x.type is $(x.type), but expected to be T_ForeignScan"
    Base.print(io, "ForeignScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "fs_server")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fs_server))
    true && Base.print(io, ", ")
    Base.print(io, "fsSystemCol")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fsSystemCol))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ForeignScan)
    hasfield(ForeignScan, :type) && true && @assert x.type == T_ForeignScan "x.type is $(x.type), but expected to be T_ForeignScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("operation", x.operation))
    push!(children, FieldNameAndValuePair("fdw_exprs", x.fdw_exprs))
    push!(children, FieldNameAndValuePair("fdw_private", x.fdw_private))
    push!(children, FieldNameAndValuePair("fdw_scan_tlist", x.fdw_scan_tlist))
    push!(children, FieldNameAndValuePair("fdw_recheck_quals", x.fdw_recheck_quals))
    push!(children, FieldNameAndValuePair("fs_relids", x.fs_relids))

    return children
end
function convert_to_node_type(::Val{T_CustomScan})
    return CustomScan
end
function AbstractTrees.printnode(io::IO, x::CustomScan)
    hasfield(CustomScan, :type) && true && @assert x.type == T_CustomScan "x.type is $(x.type), but expected to be T_CustomScan"
    Base.print(io, "CustomScan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "flags")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.flags))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CustomScan)
    hasfield(CustomScan, :type) && true && @assert x.type == T_CustomScan "x.type is $(x.type), but expected to be T_CustomScan"
    children = []
    push!(children, FieldNameAndValuePair("scan", x.scan))
    push!(children, FieldNameAndValuePair("custom_plans", x.custom_plans))
    push!(children, FieldNameAndValuePair("custom_exprs", x.custom_exprs))
    push!(children, FieldNameAndValuePair("custom_private", x.custom_private))
    push!(children, FieldNameAndValuePair("custom_scan_tlist", x.custom_scan_tlist))
    push!(children, FieldNameAndValuePair("custom_relids", x.custom_relids))
    push!(children, FieldNameAndValuePair("methods", x.methods))

    return children
end
function convert_to_node_type(::Val{T_Join})
    return Join
end
function AbstractTrees.printnode(io::IO, x::Join)
    hasfield(Join, :type) && true && @assert x.type == T_Join "x.type is $(x.type), but expected to be T_Join"
    Base.print(io, "Join")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "inner_unique")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inner_unique))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Join)
    hasfield(Join, :type) && true && @assert x.type == T_Join "x.type is $(x.type), but expected to be T_Join"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("jointype", x.jointype))
    push!(children, FieldNameAndValuePair("joinqual", x.joinqual))

    return children
end
function convert_to_node_type(::Val{T_NestLoop})
    return NestLoop
end
function AbstractTrees.printnode(io::IO, x::NestLoop)
    hasfield(NestLoop, :type) && true && @assert x.type == T_NestLoop "x.type is $(x.type), but expected to be T_NestLoop"
    Base.print(io, "NestLoop")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::NestLoop)
    hasfield(NestLoop, :type) && true && @assert x.type == T_NestLoop "x.type is $(x.type), but expected to be T_NestLoop"
    children = []
    push!(children, FieldNameAndValuePair("join", x.join))
    push!(children, FieldNameAndValuePair("nestParams", x.nestParams))

    return children
end
function convert_to_node_type(::Val{T_MergeJoin})
    return MergeJoin
end
function AbstractTrees.printnode(io::IO, x::MergeJoin)
    hasfield(MergeJoin, :type) && true && @assert x.type == T_MergeJoin "x.type is $(x.type), but expected to be T_MergeJoin"
    Base.print(io, "MergeJoin")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "skip_mark_restore")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skip_mark_restore))
    true && Base.print(io, ", ")
    Base.print(io, "mergeFamilies")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.mergeFamilies))
    true && Base.print(io, ", ")
    Base.print(io, "mergeCollations")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.mergeCollations))
    true && Base.print(io, ", ")
    Base.print(io, "mergeStrategies")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.mergeStrategies))
    true && Base.print(io, ", ")
    Base.print(io, "mergeNullsFirst")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.mergeNullsFirst))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MergeJoin)
    hasfield(MergeJoin, :type) && true && @assert x.type == T_MergeJoin "x.type is $(x.type), but expected to be T_MergeJoin"
    children = []
    push!(children, FieldNameAndValuePair("join", x.join))
    push!(children, FieldNameAndValuePair("mergeclauses", x.mergeclauses))

    return children
end
function convert_to_node_type(::Val{T_HashJoin})
    return HashJoin
end
function AbstractTrees.printnode(io::IO, x::HashJoin)
    hasfield(HashJoin, :type) && true && @assert x.type == T_HashJoin "x.type is $(x.type), but expected to be T_HashJoin"
    Base.print(io, "HashJoin")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::HashJoin)
    hasfield(HashJoin, :type) && true && @assert x.type == T_HashJoin "x.type is $(x.type), but expected to be T_HashJoin"
    children = []
    push!(children, FieldNameAndValuePair("join", x.join))
    push!(children, FieldNameAndValuePair("hashclauses", x.hashclauses))

    return children
end
function convert_to_node_type(::Val{T_Material})
    return Material
end
function AbstractTrees.printnode(io::IO, x::Material)
    hasfield(Material, :type) && true && @assert x.type == T_Material "x.type is $(x.type), but expected to be T_Material"
    Base.print(io, "Material")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::Material)
    hasfield(Material, :type) && true && @assert x.type == T_Material "x.type is $(x.type), but expected to be T_Material"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_Sort})
    return Sort
end
function AbstractTrees.printnode(io::IO, x::Sort)
    hasfield(Sort, :type) && true && @assert x.type == T_Sort "x.type is $(x.type), but expected to be T_Sort"
    Base.print(io, "Sort")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "sortColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "sortOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortOperators))
    true && Base.print(io, ", ")
    Base.print(io, "collations")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collations))
    true && Base.print(io, ", ")
    Base.print(io, "nullsFirst")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nullsFirst))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Sort)
    hasfield(Sort, :type) && true && @assert x.type == T_Sort "x.type is $(x.type), but expected to be T_Sort"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_Group})
    return Group
end
function AbstractTrees.printnode(io::IO, x::Group)
    hasfield(Group, :type) && true && @assert x.type == T_Group "x.type is $(x.type), but expected to be T_Group"
    Base.print(io, "Group")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "grpColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grpColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "grpOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grpOperators))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Group)
    hasfield(Group, :type) && true && @assert x.type == T_Group "x.type is $(x.type), but expected to be T_Group"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_Agg})
    return Agg
end
function AbstractTrees.printnode(io::IO, x::Agg)
    hasfield(Agg, :type) && true && @assert x.type == T_Agg "x.type is $(x.type), but expected to be T_Agg"
    Base.print(io, "Agg")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "grpColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grpColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "grpOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grpOperators))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Agg)
    hasfield(Agg, :type) && true && @assert x.type == T_Agg "x.type is $(x.type), but expected to be T_Agg"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("aggstrategy", x.aggstrategy))
    push!(children, FieldNameAndValuePair("aggsplit", x.aggsplit))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))
    push!(children, FieldNameAndValuePair("aggParams", x.aggParams))
    push!(children, FieldNameAndValuePair("groupingSets", x.groupingSets))
    push!(children, FieldNameAndValuePair("chain", x.chain))

    return children
end
function convert_to_node_type(::Val{T_WindowAgg})
    return WindowAgg
end
function AbstractTrees.printnode(io::IO, x::WindowAgg)
    hasfield(WindowAgg, :type) && true && @assert x.type == T_WindowAgg "x.type is $(x.type), but expected to be T_WindowAgg"
    Base.print(io, "WindowAgg")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "winref")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winref))
    true && Base.print(io, ", ")
    Base.print(io, "partNumCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.partNumCols))
    true && Base.print(io, ", ")
    Base.print(io, "partColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.partColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "partOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.partOperators))
    true && Base.print(io, ", ")
    Base.print(io, "ordNumCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ordNumCols))
    true && Base.print(io, ", ")
    Base.print(io, "ordColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ordColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "ordOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ordOperators))
    true && Base.print(io, ", ")
    Base.print(io, "frameOptions")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.frameOptions))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WindowAgg)
    hasfield(WindowAgg, :type) && true && @assert x.type == T_WindowAgg "x.type is $(x.type), but expected to be T_WindowAgg"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("startOffset", x.startOffset))
    push!(children, FieldNameAndValuePair("endOffset", x.endOffset))

    return children
end
function convert_to_node_type(::Val{T_Unique})
    return Unique
end
function AbstractTrees.printnode(io::IO, x::Unique)
    hasfield(Unique, :type) && true && @assert x.type == T_Unique "x.type is $(x.type), but expected to be T_Unique"
    Base.print(io, "Unique")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "uniqColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.uniqColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "uniqOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.uniqOperators))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Unique)
    hasfield(Unique, :type) && true && @assert x.type == T_Unique "x.type is $(x.type), but expected to be T_Unique"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_Gather})
    return Gather
end
function AbstractTrees.printnode(io::IO, x::Gather)
    hasfield(Gather, :type) && true && @assert x.type == T_Gather "x.type is $(x.type), but expected to be T_Gather"
    Base.print(io, "Gather")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "num_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.num_workers))
    true && Base.print(io, ", ")
    Base.print(io, "rescan_param")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rescan_param))
    true && Base.print(io, ", ")
    Base.print(io, "single_copy")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.single_copy))
    true && Base.print(io, ", ")
    Base.print(io, "invisible")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.invisible))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Gather)
    hasfield(Gather, :type) && true && @assert x.type == T_Gather "x.type is $(x.type), but expected to be T_Gather"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_GatherMerge})
    return GatherMerge
end
function AbstractTrees.printnode(io::IO, x::GatherMerge)
    hasfield(GatherMerge, :type) && true && @assert x.type == T_GatherMerge "x.type is $(x.type), but expected to be T_GatherMerge"
    Base.print(io, "GatherMerge")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "num_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.num_workers))
    true && Base.print(io, ", ")
    Base.print(io, "rescan_param")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rescan_param))
    true && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "sortColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "sortOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortOperators))
    true && Base.print(io, ", ")
    Base.print(io, "collations")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collations))
    true && Base.print(io, ", ")
    Base.print(io, "nullsFirst")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nullsFirst))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GatherMerge)
    hasfield(GatherMerge, :type) && true && @assert x.type == T_GatherMerge "x.type is $(x.type), but expected to be T_GatherMerge"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_Hash})
    return Hash
end
function AbstractTrees.printnode(io::IO, x::Hash)
    hasfield(Hash, :type) && true && @assert x.type == T_Hash "x.type is $(x.type), but expected to be T_Hash"
    Base.print(io, "Hash")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "skewTable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skewTable))
    true && Base.print(io, ", ")
    Base.print(io, "skewColumn")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skewColumn))
    true && Base.print(io, ", ")
    Base.print(io, "skewInherit")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skewInherit))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Hash)
    hasfield(Hash, :type) && true && @assert x.type == T_Hash "x.type is $(x.type), but expected to be T_Hash"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))

    return children
end
function convert_to_node_type(::Val{T_SetOp})
    return SetOp
end
function AbstractTrees.printnode(io::IO, x::SetOp)
    hasfield(SetOp, :type) && true && @assert x.type == T_SetOp "x.type is $(x.type), but expected to be T_SetOp"
    Base.print(io, "SetOp")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numCols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numCols))
    true && Base.print(io, ", ")
    Base.print(io, "dupColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dupColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "dupOperators")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dupOperators))
    true && Base.print(io, ", ")
    Base.print(io, "flagColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.flagColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "firstFlag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.firstFlag))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SetOp)
    hasfield(SetOp, :type) && true && @assert x.type == T_SetOp "x.type is $(x.type), but expected to be T_SetOp"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("cmd", x.cmd))
    push!(children, FieldNameAndValuePair("strategy", x.strategy))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_LockRows})
    return LockRows
end
function AbstractTrees.printnode(io::IO, x::LockRows)
    hasfield(LockRows, :type) && true && @assert x.type == T_LockRows "x.type is $(x.type), but expected to be T_LockRows"
    Base.print(io, "LockRows")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "epqParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.epqParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::LockRows)
    hasfield(LockRows, :type) && true && @assert x.type == T_LockRows "x.type is $(x.type), but expected to be T_LockRows"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))

    return children
end
function convert_to_node_type(::Val{T_Limit})
    return Limit
end
function AbstractTrees.printnode(io::IO, x::Limit)
    hasfield(Limit, :type) && true && @assert x.type == T_Limit "x.type is $(x.type), but expected to be T_Limit"
    Base.print(io, "Limit")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::Limit)
    hasfield(Limit, :type) && true && @assert x.type == T_Limit "x.type is $(x.type), but expected to be T_Limit"
    children = []
    push!(children, FieldNameAndValuePair("plan", x.plan))
    push!(children, FieldNameAndValuePair("limitOffset", x.limitOffset))
    push!(children, FieldNameAndValuePair("limitCount", x.limitCount))

    return children
end
function convert_to_node_type(::Val{T_NestLoopParam})
    return NestLoopParam
end
function AbstractTrees.printnode(io::IO, x::NestLoopParam)
    hasfield(NestLoopParam, :type) && true && @assert x.type == T_NestLoopParam "x.type is $(x.type), but expected to be T_NestLoopParam"
    Base.print(io, "NestLoopParam")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "paramno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramno))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NestLoopParam)
    hasfield(NestLoopParam, :type) && true && @assert x.type == T_NestLoopParam "x.type is $(x.type), but expected to be T_NestLoopParam"
    children = []
    push!(children, FieldNameAndValuePair("paramval", x.paramval))

    return children
end
function convert_to_node_type(::Val{T_PlanRowMark})
    return PlanRowMark
end
function AbstractTrees.printnode(io::IO, x::PlanRowMark)
    hasfield(PlanRowMark, :type) && true && @assert x.type == T_PlanRowMark "x.type is $(x.type), but expected to be T_PlanRowMark"
    Base.print(io, "PlanRowMark")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "rti")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rti))
    true && Base.print(io, ", ")
    Base.print(io, "prti")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.prti))
    true && Base.print(io, ", ")
    Base.print(io, "rowmarkId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rowmarkId))
    true && Base.print(io, ", ")
    Base.print(io, "allMarkTypes")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.allMarkTypes))
    true && Base.print(io, ", ")
    Base.print(io, "isParent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isParent))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlanRowMark)
    hasfield(PlanRowMark, :type) && true && @assert x.type == T_PlanRowMark "x.type is $(x.type), but expected to be T_PlanRowMark"
    children = []
    push!(children, FieldNameAndValuePair("markType", x.markType))
    push!(children, FieldNameAndValuePair("strength", x.strength))
    push!(children, FieldNameAndValuePair("waitPolicy", x.waitPolicy))

    return children
end
function convert_to_node_type(::Val{T_PlanInvalItem})
    return PlanInvalItem
end
function AbstractTrees.printnode(io::IO, x::PlanInvalItem)
    hasfield(PlanInvalItem, :type) && true && @assert x.type == T_PlanInvalItem "x.type is $(x.type), but expected to be T_PlanInvalItem"
    Base.print(io, "PlanInvalItem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "cacheId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cacheId))
    true && Base.print(io, ", ")
    Base.print(io, "hashValue")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hashValue))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlanInvalItem)
    hasfield(PlanInvalItem, :type) && true && @assert x.type == T_PlanInvalItem "x.type is $(x.type), but expected to be T_PlanInvalItem"
    children = []

    return children
end
function convert_to_node_type(::Val{T_Alias})
    return Alias
end
function AbstractTrees.printnode(io::IO, x::Alias)
    hasfield(Alias, :type) && true && @assert x.type == T_Alias "x.type is $(x.type), but expected to be T_Alias"
    Base.print(io, "Alias")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "aliasname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aliasname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Alias)
    hasfield(Alias, :type) && true && @assert x.type == T_Alias "x.type is $(x.type), but expected to be T_Alias"
    children = []
    push!(children, FieldNameAndValuePair("colnames", x.colnames))

    return children
end
function convert_to_node_type(::Val{T_RangeVar})
    return RangeVar
end
function AbstractTrees.printnode(io::IO, x::RangeVar)
    hasfield(RangeVar, :type) && true && @assert x.type == T_RangeVar "x.type is $(x.type), but expected to be T_RangeVar"
    Base.print(io, "RangeVar")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "catalogname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.catalogname))
    true && Base.print(io, ", ")
    Base.print(io, "schemaname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.schemaname))
    true && Base.print(io, ", ")
    Base.print(io, "relname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relname))
    true && Base.print(io, ", ")
    Base.print(io, "inh")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inh))
    true && Base.print(io, ", ")
    Base.print(io, "relpersistence")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relpersistence))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeVar)
    hasfield(RangeVar, :type) && true && @assert x.type == T_RangeVar "x.type is $(x.type), but expected to be T_RangeVar"
    children = []
    push!(children, FieldNameAndValuePair("alias", x.alias))

    return children
end
function convert_to_node_type(::Val{T_TableFunc})
    return TableFunc
end
function AbstractTrees.printnode(io::IO, x::TableFunc)
    hasfield(TableFunc, :type) && true && @assert x.type == T_TableFunc "x.type is $(x.type), but expected to be T_TableFunc"
    Base.print(io, "TableFunc")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "ordinalitycol")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ordinalitycol))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TableFunc)
    hasfield(TableFunc, :type) && true && @assert x.type == T_TableFunc "x.type is $(x.type), but expected to be T_TableFunc"
    children = []
    push!(children, FieldNameAndValuePair("ns_uris", x.ns_uris))
    push!(children, FieldNameAndValuePair("ns_names", x.ns_names))
    push!(children, FieldNameAndValuePair("docexpr", x.docexpr))
    push!(children, FieldNameAndValuePair("rowexpr", x.rowexpr))
    push!(children, FieldNameAndValuePair("colnames", x.colnames))
    push!(children, FieldNameAndValuePair("coltypes", x.coltypes))
    push!(children, FieldNameAndValuePair("coltypmods", x.coltypmods))
    push!(children, FieldNameAndValuePair("colcollations", x.colcollations))
    push!(children, FieldNameAndValuePair("colexprs", x.colexprs))
    push!(children, FieldNameAndValuePair("coldefexprs", x.coldefexprs))
    push!(children, FieldNameAndValuePair("notnulls", x.notnulls))

    return children
end
function convert_to_node_type(::Val{T_Expr})
    return Expr
end
function AbstractTrees.printnode(io::IO, x::Expr)
    hasfield(Expr, :type) && false && @assert x.type == T_Expr "x.type is $(x.type), but expected to be T_Expr"
    Base.print(io, "Expr")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::Expr)
    hasfield(Expr, :type) && false && @assert x.type == T_Expr "x.type is $(x.type), but expected to be T_Expr"
    children = []

    return children
end
function convert_to_node_type(::Val{T_Var})
    return Var
end
function AbstractTrees.printnode(io::IO, x::Var)
    hasfield(Var, :type) && true && @assert x.type == T_Var "x.type is $(x.type), but expected to be T_Var"
    Base.print(io, "Var")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "varno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varno))
    true && Base.print(io, ", ")
    Base.print(io, "varattno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varattno))
    true && Base.print(io, ", ")
    Base.print(io, "vartype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.vartype))
    true && Base.print(io, ", ")
    Base.print(io, "vartypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.vartypmod))
    true && Base.print(io, ", ")
    Base.print(io, "varcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varcollid))
    true && Base.print(io, ", ")
    Base.print(io, "varlevelsup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varlevelsup))
    true && Base.print(io, ", ")
    Base.print(io, "varnoold")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varnoold))
    true && Base.print(io, ", ")
    Base.print(io, "varoattno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.varoattno))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Var)
    hasfield(Var, :type) && true && @assert x.type == T_Var "x.type is $(x.type), but expected to be T_Var"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_Const})
    return Const
end
function AbstractTrees.printnode(io::IO, x::Const)
    hasfield(Const, :type) && true && @assert x.type == T_Const "x.type is $(x.type), but expected to be T_Const"
    Base.print(io, "Const")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "consttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.consttype))
    true && Base.print(io, ", ")
    Base.print(io, "consttypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.consttypmod))
    true && Base.print(io, ", ")
    Base.print(io, "constcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constcollid))
    true && Base.print(io, ", ")
    Base.print(io, "constlen")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constlen))
    true && Base.print(io, ", ")
    Base.print(io, "constvalue")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constvalue))
    true && Base.print(io, ", ")
    Base.print(io, "constisnull")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constisnull))
    true && Base.print(io, ", ")
    Base.print(io, "constbyval")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constbyval))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Const)
    hasfield(Const, :type) && true && @assert x.type == T_Const "x.type is $(x.type), but expected to be T_Const"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_Param})
    return Param
end
function AbstractTrees.printnode(io::IO, x::Param)
    hasfield(Param, :type) && true && @assert x.type == T_Param "x.type is $(x.type), but expected to be T_Param"
    Base.print(io, "Param")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "paramid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramid))
    true && Base.print(io, ", ")
    Base.print(io, "paramtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramtype))
    true && Base.print(io, ", ")
    Base.print(io, "paramtypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramtypmod))
    true && Base.print(io, ", ")
    Base.print(io, "paramcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Param)
    hasfield(Param, :type) && true && @assert x.type == T_Param "x.type is $(x.type), but expected to be T_Param"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("paramkind", x.paramkind))

    return children
end
function convert_to_node_type(::Val{T_Aggref})
    return Aggref
end
function AbstractTrees.printnode(io::IO, x::Aggref)
    hasfield(Aggref, :type) && true && @assert x.type == T_Aggref "x.type is $(x.type), but expected to be T_Aggref"
    Base.print(io, "Aggref")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "aggfnoid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggfnoid))
    true && Base.print(io, ", ")
    Base.print(io, "aggtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggtype))
    true && Base.print(io, ", ")
    Base.print(io, "aggcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggcollid))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "aggtranstype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggtranstype))
    true && Base.print(io, ", ")
    Base.print(io, "aggstar")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggstar))
    true && Base.print(io, ", ")
    Base.print(io, "aggvariadic")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggvariadic))
    true && Base.print(io, ", ")
    Base.print(io, "aggkind")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggkind))
    true && Base.print(io, ", ")
    Base.print(io, "agglevelsup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.agglevelsup))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Aggref)
    hasfield(Aggref, :type) && true && @assert x.type == T_Aggref "x.type is $(x.type), but expected to be T_Aggref"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("aggargtypes", x.aggargtypes))
    push!(children, FieldNameAndValuePair("aggdirectargs", x.aggdirectargs))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("aggorder", x.aggorder))
    push!(children, FieldNameAndValuePair("aggdistinct", x.aggdistinct))
    push!(children, FieldNameAndValuePair("aggfilter", x.aggfilter))
    push!(children, FieldNameAndValuePair("aggsplit", x.aggsplit))

    return children
end
function convert_to_node_type(::Val{T_GroupingFunc})
    return GroupingFunc
end
function AbstractTrees.printnode(io::IO, x::GroupingFunc)
    hasfield(GroupingFunc, :type) && true && @assert x.type == T_GroupingFunc "x.type is $(x.type), but expected to be T_GroupingFunc"
    Base.print(io, "GroupingFunc")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "agglevelsup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.agglevelsup))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GroupingFunc)
    hasfield(GroupingFunc, :type) && true && @assert x.type == T_GroupingFunc "x.type is $(x.type), but expected to be T_GroupingFunc"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("refs", x.refs))
    push!(children, FieldNameAndValuePair("cols", x.cols))

    return children
end
function convert_to_node_type(::Val{T_WindowFunc})
    return WindowFunc
end
function AbstractTrees.printnode(io::IO, x::WindowFunc)
    hasfield(WindowFunc, :type) && true && @assert x.type == T_WindowFunc "x.type is $(x.type), but expected to be T_WindowFunc"
    Base.print(io, "WindowFunc")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "winfnoid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winfnoid))
    true && Base.print(io, ", ")
    Base.print(io, "wintype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wintype))
    true && Base.print(io, ", ")
    Base.print(io, "wincollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wincollid))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "winref")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winref))
    true && Base.print(io, ", ")
    Base.print(io, "winstar")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winstar))
    true && Base.print(io, ", ")
    Base.print(io, "winagg")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winagg))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WindowFunc)
    hasfield(WindowFunc, :type) && true && @assert x.type == T_WindowFunc "x.type is $(x.type), but expected to be T_WindowFunc"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("aggfilter", x.aggfilter))

    return children
end
function convert_to_node_type(::Val{T_ArrayRef})
    return ArrayRef
end
function AbstractTrees.printnode(io::IO, x::ArrayRef)
    hasfield(ArrayRef, :type) && true && @assert x.type == T_ArrayRef "x.type is $(x.type), but expected to be T_ArrayRef"
    Base.print(io, "ArrayRef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "refarraytype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.refarraytype))
    true && Base.print(io, ", ")
    Base.print(io, "refelemtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.refelemtype))
    true && Base.print(io, ", ")
    Base.print(io, "reftypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.reftypmod))
    true && Base.print(io, ", ")
    Base.print(io, "refcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.refcollid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ArrayRef)
    hasfield(ArrayRef, :type) && true && @assert x.type == T_ArrayRef "x.type is $(x.type), but expected to be T_ArrayRef"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("refupperindexpr", x.refupperindexpr))
    push!(children, FieldNameAndValuePair("reflowerindexpr", x.reflowerindexpr))
    push!(children, FieldNameAndValuePair("refexpr", x.refexpr))
    push!(children, FieldNameAndValuePair("refassgnexpr", x.refassgnexpr))

    return children
end
function convert_to_node_type(::Val{T_FuncExpr})
    return FuncExpr
end
function AbstractTrees.printnode(io::IO, x::FuncExpr)
    hasfield(FuncExpr, :type) && true && @assert x.type == T_FuncExpr "x.type is $(x.type), but expected to be T_FuncExpr"
    Base.print(io, "FuncExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "funcid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcid))
    true && Base.print(io, ", ")
    Base.print(io, "funcresulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcresulttype))
    true && Base.print(io, ", ")
    Base.print(io, "funcretset")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcretset))
    true && Base.print(io, ", ")
    Base.print(io, "funcvariadic")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcvariadic))
    true && Base.print(io, ", ")
    Base.print(io, "funccollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funccollid))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FuncExpr)
    hasfield(FuncExpr, :type) && true && @assert x.type == T_FuncExpr "x.type is $(x.type), but expected to be T_FuncExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("funcformat", x.funcformat))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_NamedArgExpr})
    return NamedArgExpr
end
function AbstractTrees.printnode(io::IO, x::NamedArgExpr)
    hasfield(NamedArgExpr, :type) && true && @assert x.type == T_NamedArgExpr "x.type is $(x.type), but expected to be T_NamedArgExpr"
    Base.print(io, "NamedArgExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "argnumber")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.argnumber))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NamedArgExpr)
    hasfield(NamedArgExpr, :type) && true && @assert x.type == T_NamedArgExpr "x.type is $(x.type), but expected to be T_NamedArgExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))

    return children
end
function convert_to_node_type(::Val{T_OpExpr})
    return OpExpr
end
function AbstractTrees.printnode(io::IO, x::OpExpr)
    hasfield(OpExpr, :type) && true && @assert x.type == T_OpExpr "x.type is $(x.type), but expected to be T_OpExpr"
    Base.print(io, "OpExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "opno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opno))
    true && Base.print(io, ", ")
    Base.print(io, "opfuncid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opfuncid))
    true && Base.print(io, ", ")
    Base.print(io, "opresulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opresulttype))
    true && Base.print(io, ", ")
    Base.print(io, "opretset")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opretset))
    true && Base.print(io, ", ")
    Base.print(io, "opcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opcollid))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::OpExpr)
    hasfield(OpExpr, :type) && true && @assert x.type == T_OpExpr "x.type is $(x.type), but expected to be T_OpExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_ScalarArrayOpExpr})
    return ScalarArrayOpExpr
end
function AbstractTrees.printnode(io::IO, x::ScalarArrayOpExpr)
    hasfield(ScalarArrayOpExpr, :type) && true && @assert x.type == T_ScalarArrayOpExpr "x.type is $(x.type), but expected to be T_ScalarArrayOpExpr"
    Base.print(io, "ScalarArrayOpExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "opno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opno))
    true && Base.print(io, ", ")
    Base.print(io, "opfuncid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opfuncid))
    true && Base.print(io, ", ")
    Base.print(io, "useOr")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.useOr))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ScalarArrayOpExpr)
    hasfield(ScalarArrayOpExpr, :type) && true && @assert x.type == T_ScalarArrayOpExpr "x.type is $(x.type), but expected to be T_ScalarArrayOpExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_BoolExpr})
    return BoolExpr
end
function AbstractTrees.printnode(io::IO, x::BoolExpr)
    hasfield(BoolExpr, :type) && true && @assert x.type == T_BoolExpr "x.type is $(x.type), but expected to be T_BoolExpr"
    Base.print(io, "BoolExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::BoolExpr)
    hasfield(BoolExpr, :type) && true && @assert x.type == T_BoolExpr "x.type is $(x.type), but expected to be T_BoolExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("boolop", x.boolop))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_SubLink})
    return SubLink
end
function AbstractTrees.printnode(io::IO, x::SubLink)
    hasfield(SubLink, :type) && true && @assert x.type == T_SubLink "x.type is $(x.type), but expected to be T_SubLink"
    Base.print(io, "SubLink")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subLinkId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subLinkId))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SubLink)
    hasfield(SubLink, :type) && true && @assert x.type == T_SubLink "x.type is $(x.type), but expected to be T_SubLink"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("subLinkType", x.subLinkType))
    push!(children, FieldNameAndValuePair("testexpr", x.testexpr))
    push!(children, FieldNameAndValuePair("operName", x.operName))
    push!(children, FieldNameAndValuePair("subselect", x.subselect))

    return children
end
function convert_to_node_type(::Val{T_SubPlan})
    return SubPlan
end
function AbstractTrees.printnode(io::IO, x::SubPlan)
    hasfield(SubPlan, :type) && true && @assert x.type == T_SubPlan "x.type is $(x.type), but expected to be T_SubPlan"
    Base.print(io, "SubPlan")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "plan_id")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.plan_id))
    true && Base.print(io, ", ")
    Base.print(io, "plan_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.plan_name))
    true && Base.print(io, ", ")
    Base.print(io, "firstColType")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.firstColType))
    true && Base.print(io, ", ")
    Base.print(io, "firstColTypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.firstColTypmod))
    true && Base.print(io, ", ")
    Base.print(io, "firstColCollation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.firstColCollation))
    true && Base.print(io, ", ")
    Base.print(io, "useHashTable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.useHashTable))
    true && Base.print(io, ", ")
    Base.print(io, "unknownEqFalse")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.unknownEqFalse))
    true && Base.print(io, ", ")
    Base.print(io, "parallel_safe")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_safe))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SubPlan)
    hasfield(SubPlan, :type) && true && @assert x.type == T_SubPlan "x.type is $(x.type), but expected to be T_SubPlan"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("subLinkType", x.subLinkType))
    push!(children, FieldNameAndValuePair("testexpr", x.testexpr))
    push!(children, FieldNameAndValuePair("paramIds", x.paramIds))
    push!(children, FieldNameAndValuePair("setParam", x.setParam))
    push!(children, FieldNameAndValuePair("parParam", x.parParam))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("startup_cost", x.startup_cost))
    push!(children, FieldNameAndValuePair("per_call_cost", x.per_call_cost))

    return children
end
function convert_to_node_type(::Val{T_AlternativeSubPlan})
    return AlternativeSubPlan
end
function AbstractTrees.printnode(io::IO, x::AlternativeSubPlan)
    hasfield(AlternativeSubPlan, :type) && true && @assert x.type == T_AlternativeSubPlan "x.type is $(x.type), but expected to be T_AlternativeSubPlan"
    Base.print(io, "AlternativeSubPlan")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlternativeSubPlan)
    hasfield(AlternativeSubPlan, :type) && true && @assert x.type == T_AlternativeSubPlan "x.type is $(x.type), but expected to be T_AlternativeSubPlan"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("subplans", x.subplans))

    return children
end
function convert_to_node_type(::Val{T_FieldSelect})
    return FieldSelect
end
function AbstractTrees.printnode(io::IO, x::FieldSelect)
    hasfield(FieldSelect, :type) && true && @assert x.type == T_FieldSelect "x.type is $(x.type), but expected to be T_FieldSelect"
    Base.print(io, "FieldSelect")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "fieldnum")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fieldnum))
    true && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "resulttypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttypmod))
    true && Base.print(io, ", ")
    Base.print(io, "resultcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultcollid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FieldSelect)
    hasfield(FieldSelect, :type) && true && @assert x.type == T_FieldSelect "x.type is $(x.type), but expected to be T_FieldSelect"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))

    return children
end
function convert_to_node_type(::Val{T_FieldStore})
    return FieldStore
end
function AbstractTrees.printnode(io::IO, x::FieldStore)
    hasfield(FieldStore, :type) && true && @assert x.type == T_FieldStore "x.type is $(x.type), but expected to be T_FieldStore"
    Base.print(io, "FieldStore")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FieldStore)
    hasfield(FieldStore, :type) && true && @assert x.type == T_FieldStore "x.type is $(x.type), but expected to be T_FieldStore"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("newvals", x.newvals))
    push!(children, FieldNameAndValuePair("fieldnums", x.fieldnums))

    return children
end
function convert_to_node_type(::Val{T_RelabelType})
    return RelabelType
end
function AbstractTrees.printnode(io::IO, x::RelabelType)
    hasfield(RelabelType, :type) && true && @assert x.type == T_RelabelType "x.type is $(x.type), but expected to be T_RelabelType"
    Base.print(io, "RelabelType")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "resulttypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttypmod))
    true && Base.print(io, ", ")
    Base.print(io, "resultcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RelabelType)
    hasfield(RelabelType, :type) && true && @assert x.type == T_RelabelType "x.type is $(x.type), but expected to be T_RelabelType"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("relabelformat", x.relabelformat))

    return children
end
function convert_to_node_type(::Val{T_CoerceViaIO})
    return CoerceViaIO
end
function AbstractTrees.printnode(io::IO, x::CoerceViaIO)
    hasfield(CoerceViaIO, :type) && true && @assert x.type == T_CoerceViaIO "x.type is $(x.type), but expected to be T_CoerceViaIO"
    Base.print(io, "CoerceViaIO")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "resultcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CoerceViaIO)
    hasfield(CoerceViaIO, :type) && true && @assert x.type == T_CoerceViaIO "x.type is $(x.type), but expected to be T_CoerceViaIO"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("coerceformat", x.coerceformat))

    return children
end
function convert_to_node_type(::Val{T_ArrayCoerceExpr})
    return ArrayCoerceExpr
end
function AbstractTrees.printnode(io::IO, x::ArrayCoerceExpr)
    hasfield(ArrayCoerceExpr, :type) && true && @assert x.type == T_ArrayCoerceExpr "x.type is $(x.type), but expected to be T_ArrayCoerceExpr"
    Base.print(io, "ArrayCoerceExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "elemfuncid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.elemfuncid))
    true && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "resulttypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttypmod))
    true && Base.print(io, ", ")
    Base.print(io, "resultcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultcollid))
    true && Base.print(io, ", ")
    Base.print(io, "isExplicit")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isExplicit))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ArrayCoerceExpr)
    hasfield(ArrayCoerceExpr, :type) && true && @assert x.type == T_ArrayCoerceExpr "x.type is $(x.type), but expected to be T_ArrayCoerceExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("coerceformat", x.coerceformat))

    return children
end
function convert_to_node_type(::Val{T_ConvertRowtypeExpr})
    return ConvertRowtypeExpr
end
function AbstractTrees.printnode(io::IO, x::ConvertRowtypeExpr)
    hasfield(ConvertRowtypeExpr, :type) && true && @assert x.type == T_ConvertRowtypeExpr "x.type is $(x.type), but expected to be T_ConvertRowtypeExpr"
    Base.print(io, "ConvertRowtypeExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ConvertRowtypeExpr)
    hasfield(ConvertRowtypeExpr, :type) && true && @assert x.type == T_ConvertRowtypeExpr "x.type is $(x.type), but expected to be T_ConvertRowtypeExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("convertformat", x.convertformat))

    return children
end
function convert_to_node_type(::Val{T_CollateExpr})
    return CollateExpr
end
function AbstractTrees.printnode(io::IO, x::CollateExpr)
    hasfield(CollateExpr, :type) && true && @assert x.type == T_CollateExpr "x.type is $(x.type), but expected to be T_CollateExpr"
    Base.print(io, "CollateExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "collOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collOid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CollateExpr)
    hasfield(CollateExpr, :type) && true && @assert x.type == T_CollateExpr "x.type is $(x.type), but expected to be T_CollateExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))

    return children
end
function convert_to_node_type(::Val{T_CaseExpr})
    return CaseExpr
end
function AbstractTrees.printnode(io::IO, x::CaseExpr)
    hasfield(CaseExpr, :type) && true && @assert x.type == T_CaseExpr "x.type is $(x.type), but expected to be T_CaseExpr"
    Base.print(io, "CaseExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "casetype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.casetype))
    true && Base.print(io, ", ")
    Base.print(io, "casecollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.casecollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CaseExpr)
    hasfield(CaseExpr, :type) && true && @assert x.type == T_CaseExpr "x.type is $(x.type), but expected to be T_CaseExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("defresult", x.defresult))

    return children
end
function convert_to_node_type(::Val{T_CaseWhen})
    return CaseWhen
end
function AbstractTrees.printnode(io::IO, x::CaseWhen)
    hasfield(CaseWhen, :type) && true && @assert x.type == T_CaseWhen "x.type is $(x.type), but expected to be T_CaseWhen"
    Base.print(io, "CaseWhen")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CaseWhen)
    hasfield(CaseWhen, :type) && true && @assert x.type == T_CaseWhen "x.type is $(x.type), but expected to be T_CaseWhen"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("expr", x.expr))
    push!(children, FieldNameAndValuePair("result", x.result))

    return children
end
function convert_to_node_type(::Val{T_CaseTestExpr})
    return CaseTestExpr
end
function AbstractTrees.printnode(io::IO, x::CaseTestExpr)
    hasfield(CaseTestExpr, :type) && true && @assert x.type == T_CaseTestExpr "x.type is $(x.type), but expected to be T_CaseTestExpr"
    Base.print(io, "CaseTestExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "typeId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeId))
    true && Base.print(io, ", ")
    Base.print(io, "typeMod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeMod))
    true && Base.print(io, ", ")
    Base.print(io, "collation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collation))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CaseTestExpr)
    hasfield(CaseTestExpr, :type) && true && @assert x.type == T_CaseTestExpr "x.type is $(x.type), but expected to be T_CaseTestExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_ArrayExpr})
    return ArrayExpr
end
function AbstractTrees.printnode(io::IO, x::ArrayExpr)
    hasfield(ArrayExpr, :type) && true && @assert x.type == T_ArrayExpr "x.type is $(x.type), but expected to be T_ArrayExpr"
    Base.print(io, "ArrayExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "array_typeid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.array_typeid))
    true && Base.print(io, ", ")
    Base.print(io, "array_collid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.array_collid))
    true && Base.print(io, ", ")
    Base.print(io, "element_typeid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.element_typeid))
    true && Base.print(io, ", ")
    Base.print(io, "multidims")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.multidims))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ArrayExpr)
    hasfield(ArrayExpr, :type) && true && @assert x.type == T_ArrayExpr "x.type is $(x.type), but expected to be T_ArrayExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("elements", x.elements))

    return children
end
function convert_to_node_type(::Val{T_RowExpr})
    return RowExpr
end
function AbstractTrees.printnode(io::IO, x::RowExpr)
    hasfield(RowExpr, :type) && true && @assert x.type == T_RowExpr "x.type is $(x.type), but expected to be T_RowExpr"
    Base.print(io, "RowExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "row_typeid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.row_typeid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RowExpr)
    hasfield(RowExpr, :type) && true && @assert x.type == T_RowExpr "x.type is $(x.type), but expected to be T_RowExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("row_format", x.row_format))
    push!(children, FieldNameAndValuePair("colnames", x.colnames))

    return children
end
function convert_to_node_type(::Val{T_RowCompareExpr})
    return RowCompareExpr
end
function AbstractTrees.printnode(io::IO, x::RowCompareExpr)
    hasfield(RowCompareExpr, :type) && true && @assert x.type == T_RowCompareExpr "x.type is $(x.type), but expected to be T_RowCompareExpr"
    Base.print(io, "RowCompareExpr")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::RowCompareExpr)
    hasfield(RowCompareExpr, :type) && true && @assert x.type == T_RowCompareExpr "x.type is $(x.type), but expected to be T_RowCompareExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("rctype", x.rctype))
    push!(children, FieldNameAndValuePair("opnos", x.opnos))
    push!(children, FieldNameAndValuePair("opfamilies", x.opfamilies))
    push!(children, FieldNameAndValuePair("inputcollids", x.inputcollids))
    push!(children, FieldNameAndValuePair("largs", x.largs))
    push!(children, FieldNameAndValuePair("rargs", x.rargs))

    return children
end
function convert_to_node_type(::Val{T_CoalesceExpr})
    return CoalesceExpr
end
function AbstractTrees.printnode(io::IO, x::CoalesceExpr)
    hasfield(CoalesceExpr, :type) && true && @assert x.type == T_CoalesceExpr "x.type is $(x.type), but expected to be T_CoalesceExpr"
    Base.print(io, "CoalesceExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "coalescetype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.coalescetype))
    true && Base.print(io, ", ")
    Base.print(io, "coalescecollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.coalescecollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CoalesceExpr)
    hasfield(CoalesceExpr, :type) && true && @assert x.type == T_CoalesceExpr "x.type is $(x.type), but expected to be T_CoalesceExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_MinMaxExpr})
    return MinMaxExpr
end
function AbstractTrees.printnode(io::IO, x::MinMaxExpr)
    hasfield(MinMaxExpr, :type) && true && @assert x.type == T_MinMaxExpr "x.type is $(x.type), but expected to be T_MinMaxExpr"
    Base.print(io, "MinMaxExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "minmaxtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.minmaxtype))
    true && Base.print(io, ", ")
    Base.print(io, "minmaxcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.minmaxcollid))
    true && Base.print(io, ", ")
    Base.print(io, "inputcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inputcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MinMaxExpr)
    hasfield(MinMaxExpr, :type) && true && @assert x.type == T_MinMaxExpr "x.type is $(x.type), but expected to be T_MinMaxExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("op", x.op))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_SQLValueFunction})
    return SQLValueFunction
end
function AbstractTrees.printnode(io::IO, x::SQLValueFunction)
    hasfield(SQLValueFunction, :type) && true && @assert x.type == T_SQLValueFunction "x.type is $(x.type), but expected to be T_SQLValueFunction"
    Base.print(io, "SQLValueFunction")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "typmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typmod))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SQLValueFunction)
    hasfield(SQLValueFunction, :type) && true && @assert x.type == T_SQLValueFunction "x.type is $(x.type), but expected to be T_SQLValueFunction"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("op", x.op))

    return children
end
function convert_to_node_type(::Val{T_XmlExpr})
    return XmlExpr
end
function AbstractTrees.printnode(io::IO, x::XmlExpr)
    hasfield(XmlExpr, :type) && true && @assert x.type == T_XmlExpr "x.type is $(x.type), but expected to be T_XmlExpr"
    Base.print(io, "XmlExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "typmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typmod))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::XmlExpr)
    hasfield(XmlExpr, :type) && true && @assert x.type == T_XmlExpr "x.type is $(x.type), but expected to be T_XmlExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("op", x.op))
    push!(children, FieldNameAndValuePair("named_args", x.named_args))
    push!(children, FieldNameAndValuePair("arg_names", x.arg_names))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("xmloption", x.xmloption))

    return children
end
function convert_to_node_type(::Val{T_NullTest})
    return NullTest
end
function AbstractTrees.printnode(io::IO, x::NullTest)
    hasfield(NullTest, :type) && true && @assert x.type == T_NullTest "x.type is $(x.type), but expected to be T_NullTest"
    Base.print(io, "NullTest")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "argisrow")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.argisrow))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NullTest)
    hasfield(NullTest, :type) && true && @assert x.type == T_NullTest "x.type is $(x.type), but expected to be T_NullTest"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("nulltesttype", x.nulltesttype))

    return children
end
function convert_to_node_type(::Val{T_BooleanTest})
    return BooleanTest
end
function AbstractTrees.printnode(io::IO, x::BooleanTest)
    hasfield(BooleanTest, :type) && true && @assert x.type == T_BooleanTest "x.type is $(x.type), but expected to be T_BooleanTest"
    Base.print(io, "BooleanTest")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::BooleanTest)
    hasfield(BooleanTest, :type) && true && @assert x.type == T_BooleanTest "x.type is $(x.type), but expected to be T_BooleanTest"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("booltesttype", x.booltesttype))

    return children
end
function convert_to_node_type(::Val{T_CoerceToDomain})
    return CoerceToDomain
end
function AbstractTrees.printnode(io::IO, x::CoerceToDomain)
    hasfield(CoerceToDomain, :type) && true && @assert x.type == T_CoerceToDomain "x.type is $(x.type), but expected to be T_CoerceToDomain"
    Base.print(io, "CoerceToDomain")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resulttype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttype))
    true && Base.print(io, ", ")
    Base.print(io, "resulttypmod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resulttypmod))
    true && Base.print(io, ", ")
    Base.print(io, "resultcollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultcollid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CoerceToDomain)
    hasfield(CoerceToDomain, :type) && true && @assert x.type == T_CoerceToDomain "x.type is $(x.type), but expected to be T_CoerceToDomain"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("coercionformat", x.coercionformat))

    return children
end
function convert_to_node_type(::Val{T_CoerceToDomainValue})
    return CoerceToDomainValue
end
function AbstractTrees.printnode(io::IO, x::CoerceToDomainValue)
    hasfield(CoerceToDomainValue, :type) && true && @assert x.type == T_CoerceToDomainValue "x.type is $(x.type), but expected to be T_CoerceToDomainValue"
    Base.print(io, "CoerceToDomainValue")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "typeId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeId))
    true && Base.print(io, ", ")
    Base.print(io, "typeMod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeMod))
    true && Base.print(io, ", ")
    Base.print(io, "collation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collation))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CoerceToDomainValue)
    hasfield(CoerceToDomainValue, :type) && true && @assert x.type == T_CoerceToDomainValue "x.type is $(x.type), but expected to be T_CoerceToDomainValue"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_SetToDefault})
    return SetToDefault
end
function AbstractTrees.printnode(io::IO, x::SetToDefault)
    hasfield(SetToDefault, :type) && true && @assert x.type == T_SetToDefault "x.type is $(x.type), but expected to be T_SetToDefault"
    Base.print(io, "SetToDefault")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "typeId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeId))
    true && Base.print(io, ", ")
    Base.print(io, "typeMod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeMod))
    true && Base.print(io, ", ")
    Base.print(io, "collation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collation))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SetToDefault)
    hasfield(SetToDefault, :type) && true && @assert x.type == T_SetToDefault "x.type is $(x.type), but expected to be T_SetToDefault"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_CurrentOfExpr})
    return CurrentOfExpr
end
function AbstractTrees.printnode(io::IO, x::CurrentOfExpr)
    hasfield(CurrentOfExpr, :type) && true && @assert x.type == T_CurrentOfExpr "x.type is $(x.type), but expected to be T_CurrentOfExpr"
    Base.print(io, "CurrentOfExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "cvarno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cvarno))
    true && Base.print(io, ", ")
    Base.print(io, "cursor_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cursor_name))
    true && Base.print(io, ", ")
    Base.print(io, "cursor_param")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cursor_param))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CurrentOfExpr)
    hasfield(CurrentOfExpr, :type) && true && @assert x.type == T_CurrentOfExpr "x.type is $(x.type), but expected to be T_CurrentOfExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_NextValueExpr})
    return NextValueExpr
end
function AbstractTrees.printnode(io::IO, x::NextValueExpr)
    hasfield(NextValueExpr, :type) && true && @assert x.type == T_NextValueExpr "x.type is $(x.type), but expected to be T_NextValueExpr"
    Base.print(io, "NextValueExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "seqid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.seqid))
    true && Base.print(io, ", ")
    Base.print(io, "typeId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeId))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NextValueExpr)
    hasfield(NextValueExpr, :type) && true && @assert x.type == T_NextValueExpr "x.type is $(x.type), but expected to be T_NextValueExpr"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))

    return children
end
function convert_to_node_type(::Val{T_InferenceElem})
    return InferenceElem
end
function AbstractTrees.printnode(io::IO, x::InferenceElem)
    hasfield(InferenceElem, :type) && true && @assert x.type == T_InferenceElem "x.type is $(x.type), but expected to be T_InferenceElem"
    Base.print(io, "InferenceElem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "infercollid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.infercollid))
    true && Base.print(io, ", ")
    Base.print(io, "inferopclass")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inferopclass))

    Base.print(io, ")")
end

function AbstractTrees.children(x::InferenceElem)
    hasfield(InferenceElem, :type) && true && @assert x.type == T_InferenceElem "x.type is $(x.type), but expected to be T_InferenceElem"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("expr", x.expr))

    return children
end
function convert_to_node_type(::Val{T_TargetEntry})
    return TargetEntry
end
function AbstractTrees.printnode(io::IO, x::TargetEntry)
    hasfield(TargetEntry, :type) && true && @assert x.type == T_TargetEntry "x.type is $(x.type), but expected to be T_TargetEntry"
    Base.print(io, "TargetEntry")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "resno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resno))
    true && Base.print(io, ", ")
    Base.print(io, "resname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resname))
    true && Base.print(io, ", ")
    Base.print(io, "ressortgroupref")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ressortgroupref))
    true && Base.print(io, ", ")
    Base.print(io, "resorigtbl")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resorigtbl))
    true && Base.print(io, ", ")
    Base.print(io, "resorigcol")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resorigcol))
    true && Base.print(io, ", ")
    Base.print(io, "resjunk")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resjunk))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TargetEntry)
    hasfield(TargetEntry, :type) && true && @assert x.type == T_TargetEntry "x.type is $(x.type), but expected to be T_TargetEntry"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("expr", x.expr))

    return children
end
function convert_to_node_type(::Val{T_RangeTblRef})
    return RangeTblRef
end
function AbstractTrees.printnode(io::IO, x::RangeTblRef)
    hasfield(RangeTblRef, :type) && true && @assert x.type == T_RangeTblRef "x.type is $(x.type), but expected to be T_RangeTblRef"
    Base.print(io, "RangeTblRef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "rtindex")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rtindex))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTblRef)
    hasfield(RangeTblRef, :type) && true && @assert x.type == T_RangeTblRef "x.type is $(x.type), but expected to be T_RangeTblRef"
    children = []

    return children
end
function convert_to_node_type(::Val{T_JoinExpr})
    return JoinExpr
end
function AbstractTrees.printnode(io::IO, x::JoinExpr)
    hasfield(JoinExpr, :type) && true && @assert x.type == T_JoinExpr "x.type is $(x.type), but expected to be T_JoinExpr"
    Base.print(io, "JoinExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "isNatural")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isNatural))
    true && Base.print(io, ", ")
    Base.print(io, "rtindex")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rtindex))

    Base.print(io, ")")
end

function AbstractTrees.children(x::JoinExpr)
    hasfield(JoinExpr, :type) && true && @assert x.type == T_JoinExpr "x.type is $(x.type), but expected to be T_JoinExpr"
    children = []
    push!(children, FieldNameAndValuePair("jointype", x.jointype))
    push!(children, FieldNameAndValuePair("larg", x.larg))
    push!(children, FieldNameAndValuePair("rarg", x.rarg))
    push!(children, FieldNameAndValuePair("usingClause", x.usingClause))
    push!(children, FieldNameAndValuePair("quals", x.quals))
    push!(children, FieldNameAndValuePair("alias", x.alias))

    return children
end
function convert_to_node_type(::Val{T_FromExpr})
    return FromExpr
end
function AbstractTrees.printnode(io::IO, x::FromExpr)
    hasfield(FromExpr, :type) && true && @assert x.type == T_FromExpr "x.type is $(x.type), but expected to be T_FromExpr"
    Base.print(io, "FromExpr")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::FromExpr)
    hasfield(FromExpr, :type) && true && @assert x.type == T_FromExpr "x.type is $(x.type), but expected to be T_FromExpr"
    children = []
    push!(children, FieldNameAndValuePair("fromlist", x.fromlist))
    push!(children, FieldNameAndValuePair("quals", x.quals))

    return children
end
function convert_to_node_type(::Val{T_OnConflictExpr})
    return OnConflictExpr
end
function AbstractTrees.printnode(io::IO, x::OnConflictExpr)
    hasfield(OnConflictExpr, :type) && true && @assert x.type == T_OnConflictExpr "x.type is $(x.type), but expected to be T_OnConflictExpr"
    Base.print(io, "OnConflictExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "constraint")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.constraint))
    true && Base.print(io, ", ")
    Base.print(io, "exclRelIndex")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.exclRelIndex))

    Base.print(io, ")")
end

function AbstractTrees.children(x::OnConflictExpr)
    hasfield(OnConflictExpr, :type) && true && @assert x.type == T_OnConflictExpr "x.type is $(x.type), but expected to be T_OnConflictExpr"
    children = []
    push!(children, FieldNameAndValuePair("action", x.action))
    push!(children, FieldNameAndValuePair("arbiterElems", x.arbiterElems))
    push!(children, FieldNameAndValuePair("arbiterWhere", x.arbiterWhere))
    push!(children, FieldNameAndValuePair("onConflictSet", x.onConflictSet))
    push!(children, FieldNameAndValuePair("onConflictWhere", x.onConflictWhere))
    push!(children, FieldNameAndValuePair("exclRelTlist", x.exclRelTlist))

    return children
end
function convert_to_node_type(::Val{T_IntoClause})
    return IntoClause
end
function AbstractTrees.printnode(io::IO, x::IntoClause)
    hasfield(IntoClause, :type) && true && @assert x.type == T_IntoClause "x.type is $(x.type), but expected to be T_IntoClause"
    Base.print(io, "IntoClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tableSpaceName")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tableSpaceName))
    true && Base.print(io, ", ")
    Base.print(io, "skipData")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skipData))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IntoClause)
    hasfield(IntoClause, :type) && true && @assert x.type == T_IntoClause "x.type is $(x.type), but expected to be T_IntoClause"
    children = []
    push!(children, FieldNameAndValuePair("rel", x.rel))
    push!(children, FieldNameAndValuePair("colNames", x.colNames))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("onCommit", x.onCommit))
    push!(children, FieldNameAndValuePair("viewQuery", x.viewQuery))

    return children
end
function convert_to_node_type(::Val{T_PlannerInfo})
    return PlannerInfo
end
function AbstractTrees.printnode(io::IO, x::PlannerInfo)
    hasfield(PlannerInfo, :type) && true && @assert x.type == T_PlannerInfo "x.type is $(x.type), but expected to be T_PlannerInfo"
    Base.print(io, "PlannerInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "query_level")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.query_level))
    true && Base.print(io, ", ")
    Base.print(io, "simple_rel_array_size")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.simple_rel_array_size))
    true && Base.print(io, ", ")
    Base.print(io, "join_rel_hash")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.join_rel_hash))
    true && Base.print(io, ", ")
    Base.print(io, "join_cur_level")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.join_cur_level))
    true && Base.print(io, ", ")
    Base.print(io, "grouping_map")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grouping_map))
    true && Base.print(io, ", ")
    Base.print(io, "planner_cxt")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.planner_cxt))
    true && Base.print(io, ", ")
    Base.print(io, "qual_security_level")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.qual_security_level))
    true && Base.print(io, ", ")
    Base.print(io, "hasInheritedTarget")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasInheritedTarget))
    true && Base.print(io, ", ")
    Base.print(io, "hasJoinRTEs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasJoinRTEs))
    true && Base.print(io, ", ")
    Base.print(io, "hasLateralRTEs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasLateralRTEs))
    true && Base.print(io, ", ")
    Base.print(io, "hasDeletedRTEs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasDeletedRTEs))
    true && Base.print(io, ", ")
    Base.print(io, "hasHavingQual")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasHavingQual))
    true && Base.print(io, ", ")
    Base.print(io, "hasPseudoConstantQuals")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasPseudoConstantQuals))
    true && Base.print(io, ", ")
    Base.print(io, "hasRecursion")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasRecursion))
    true && Base.print(io, ", ")
    Base.print(io, "wt_param_id")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wt_param_id))
    true && Base.print(io, ", ")
    Base.print(io, "join_search_private")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.join_search_private))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlannerInfo)
    hasfield(PlannerInfo, :type) && true && @assert x.type == T_PlannerInfo "x.type is $(x.type), but expected to be T_PlannerInfo"
    children = []
    push!(children, FieldNameAndValuePair("parse", x.parse))
    push!(children, FieldNameAndValuePair("glob", x.glob))
    push!(children, FieldNameAndValuePair("parent_root", x.parent_root))
    push!(children, FieldNameAndValuePair("plan_params", x.plan_params))
    push!(children, FieldNameAndValuePair("outer_params", x.outer_params))
    push!(children, FieldNameAndValuePair("simple_rel_array", x.simple_rel_array))
    push!(children, FieldNameAndValuePair("simple_rte_array", x.simple_rte_array))
    push!(children, FieldNameAndValuePair("all_baserels", x.all_baserels))
    push!(children, FieldNameAndValuePair("nullable_baserels", x.nullable_baserels))
    push!(children, FieldNameAndValuePair("join_rel_list", x.join_rel_list))
    push!(children, FieldNameAndValuePair("join_rel_level", x.join_rel_level))
    push!(children, FieldNameAndValuePair("init_plans", x.init_plans))
    push!(children, FieldNameAndValuePair("cte_plan_ids", x.cte_plan_ids))
    push!(children, FieldNameAndValuePair("multiexpr_params", x.multiexpr_params))
    push!(children, FieldNameAndValuePair("eq_classes", x.eq_classes))
    push!(children, FieldNameAndValuePair("canon_pathkeys", x.canon_pathkeys))
    push!(children, FieldNameAndValuePair("left_join_clauses", x.left_join_clauses))
    push!(children, FieldNameAndValuePair("right_join_clauses", x.right_join_clauses))
    push!(children, FieldNameAndValuePair("full_join_clauses", x.full_join_clauses))
    push!(children, FieldNameAndValuePair("join_info_list", x.join_info_list))
    push!(children, FieldNameAndValuePair("append_rel_list", x.append_rel_list))
    push!(children, FieldNameAndValuePair("pcinfo_list", x.pcinfo_list))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))
    push!(children, FieldNameAndValuePair("placeholder_list", x.placeholder_list))
    push!(children, FieldNameAndValuePair("fkey_list", x.fkey_list))
    push!(children, FieldNameAndValuePair("query_pathkeys", x.query_pathkeys))
    push!(children, FieldNameAndValuePair("group_pathkeys", x.group_pathkeys))
    push!(children, FieldNameAndValuePair("window_pathkeys", x.window_pathkeys))
    push!(children, FieldNameAndValuePair("distinct_pathkeys", x.distinct_pathkeys))
    push!(children, FieldNameAndValuePair("sort_pathkeys", x.sort_pathkeys))
    push!(children, FieldNameAndValuePair("initial_rels", x.initial_rels))
    push!(children, FieldNameAndValuePair("upper_rels", x.upper_rels))
    push!(children, FieldNameAndValuePair("upper_targets", x.upper_targets))
    push!(children, FieldNameAndValuePair("processed_tlist", x.processed_tlist))
    push!(children, FieldNameAndValuePair("minmax_aggs", x.minmax_aggs))
    push!(children, FieldNameAndValuePair("total_table_pages", x.total_table_pages))
    push!(children, FieldNameAndValuePair("tuple_fraction", x.tuple_fraction))
    push!(children, FieldNameAndValuePair("limit_tuples", x.limit_tuples))
    push!(children, FieldNameAndValuePair("non_recursive_path", x.non_recursive_path))
    push!(children, FieldNameAndValuePair("curOuterRels", x.curOuterRels))
    push!(children, FieldNameAndValuePair("curOuterParams", x.curOuterParams))

    return children
end
function convert_to_node_type(::Val{T_PlannerGlobal})
    return PlannerGlobal
end
function AbstractTrees.printnode(io::IO, x::PlannerGlobal)
    hasfield(PlannerGlobal, :type) && true && @assert x.type == T_PlannerGlobal "x.type is $(x.type), but expected to be T_PlannerGlobal"
    Base.print(io, "PlannerGlobal")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "nParamExec")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nParamExec))
    true && Base.print(io, ", ")
    Base.print(io, "lastPHId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lastPHId))
    true && Base.print(io, ", ")
    Base.print(io, "lastRowMarkId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lastRowMarkId))
    true && Base.print(io, ", ")
    Base.print(io, "lastPlanNodeId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lastPlanNodeId))
    true && Base.print(io, ", ")
    Base.print(io, "transientPlan")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.transientPlan))
    true && Base.print(io, ", ")
    Base.print(io, "dependsOnRole")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dependsOnRole))
    true && Base.print(io, ", ")
    Base.print(io, "parallelModeOK")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallelModeOK))
    true && Base.print(io, ", ")
    Base.print(io, "parallelModeNeeded")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallelModeNeeded))
    true && Base.print(io, ", ")
    Base.print(io, "maxParallelHazard")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.maxParallelHazard))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlannerGlobal)
    hasfield(PlannerGlobal, :type) && true && @assert x.type == T_PlannerGlobal "x.type is $(x.type), but expected to be T_PlannerGlobal"
    children = []
    push!(children, FieldNameAndValuePair("boundParams", x.boundParams))
    push!(children, FieldNameAndValuePair("subplans", x.subplans))
    push!(children, FieldNameAndValuePair("subroots", x.subroots))
    push!(children, FieldNameAndValuePair("rewindPlanIDs", x.rewindPlanIDs))
    push!(children, FieldNameAndValuePair("finalrtable", x.finalrtable))
    push!(children, FieldNameAndValuePair("finalrowmarks", x.finalrowmarks))
    push!(children, FieldNameAndValuePair("resultRelations", x.resultRelations))
    push!(children, FieldNameAndValuePair("nonleafResultRelations", x.nonleafResultRelations))
    push!(children, FieldNameAndValuePair("rootResultRelations", x.rootResultRelations))
    push!(children, FieldNameAndValuePair("relationOids", x.relationOids))
    push!(children, FieldNameAndValuePair("invalItems", x.invalItems))

    return children
end
function convert_to_node_type(::Val{T_RelOptInfo})
    return RelOptInfo
end
function AbstractTrees.printnode(io::IO, x::RelOptInfo)
    hasfield(RelOptInfo, :type) && true && @assert x.type == T_RelOptInfo "x.type is $(x.type), but expected to be T_RelOptInfo"
    Base.print(io, "RelOptInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "consider_startup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.consider_startup))
    true && Base.print(io, ", ")
    Base.print(io, "consider_param_startup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.consider_param_startup))
    true && Base.print(io, ", ")
    Base.print(io, "consider_parallel")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.consider_parallel))
    true && Base.print(io, ", ")
    Base.print(io, "relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relid))
    true && Base.print(io, ", ")
    Base.print(io, "reltablespace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.reltablespace))
    true && Base.print(io, ", ")
    Base.print(io, "min_attr")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.min_attr))
    true && Base.print(io, ", ")
    Base.print(io, "max_attr")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.max_attr))
    true && Base.print(io, ", ")
    Base.print(io, "attr_widths")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.attr_widths))
    true && Base.print(io, ", ")
    Base.print(io, "pages")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pages))
    true && Base.print(io, ", ")
    Base.print(io, "rel_parallel_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rel_parallel_workers))
    true && Base.print(io, ", ")
    Base.print(io, "serverid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.serverid))
    true && Base.print(io, ", ")
    Base.print(io, "userid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.userid))
    true && Base.print(io, ", ")
    Base.print(io, "useridiscurrent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.useridiscurrent))
    true && Base.print(io, ", ")
    Base.print(io, "fdwroutine")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fdwroutine))
    true && Base.print(io, ", ")
    Base.print(io, "fdw_private")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fdw_private))
    true && Base.print(io, ", ")
    Base.print(io, "baserestrict_min_security")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.baserestrict_min_security))
    true && Base.print(io, ", ")
    Base.print(io, "has_eclass_joins")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.has_eclass_joins))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RelOptInfo)
    hasfield(RelOptInfo, :type) && true && @assert x.type == T_RelOptInfo "x.type is $(x.type), but expected to be T_RelOptInfo"
    children = []
    push!(children, FieldNameAndValuePair("reloptkind", x.reloptkind))
    push!(children, FieldNameAndValuePair("relids", x.relids))
    push!(children, FieldNameAndValuePair("rows", x.rows))
    push!(children, FieldNameAndValuePair("reltarget", x.reltarget))
    push!(children, FieldNameAndValuePair("pathlist", x.pathlist))
    push!(children, FieldNameAndValuePair("ppilist", x.ppilist))
    push!(children, FieldNameAndValuePair("partial_pathlist", x.partial_pathlist))
    push!(children, FieldNameAndValuePair("cheapest_startup_path", x.cheapest_startup_path))
    push!(children, FieldNameAndValuePair("cheapest_total_path", x.cheapest_total_path))
    push!(children, FieldNameAndValuePair("cheapest_unique_path", x.cheapest_unique_path))
    push!(children, FieldNameAndValuePair("cheapest_parameterized_paths", x.cheapest_parameterized_paths))
    push!(children, FieldNameAndValuePair("direct_lateral_relids", x.direct_lateral_relids))
    push!(children, FieldNameAndValuePair("lateral_relids", x.lateral_relids))
    push!(children, FieldNameAndValuePair("rtekind", x.rtekind))
    push!(children, FieldNameAndValuePair("attr_needed", x.attr_needed))
    push!(children, FieldNameAndValuePair("lateral_vars", x.lateral_vars))
    push!(children, FieldNameAndValuePair("lateral_referencers", x.lateral_referencers))
    push!(children, FieldNameAndValuePair("indexlist", x.indexlist))
    push!(children, FieldNameAndValuePair("statlist", x.statlist))
    push!(children, FieldNameAndValuePair("tuples", x.tuples))
    push!(children, FieldNameAndValuePair("allvisfrac", x.allvisfrac))
    push!(children, FieldNameAndValuePair("subroot", x.subroot))
    push!(children, FieldNameAndValuePair("subplan_params", x.subplan_params))
    push!(children, FieldNameAndValuePair("unique_for_rels", x.unique_for_rels))
    push!(children, FieldNameAndValuePair("non_unique_for_rels", x.non_unique_for_rels))
    push!(children, FieldNameAndValuePair("baserestrictinfo", x.baserestrictinfo))
    push!(children, FieldNameAndValuePair("baserestrictcost", x.baserestrictcost))
    push!(children, FieldNameAndValuePair("joininfo", x.joininfo))
    push!(children, FieldNameAndValuePair("top_parent_relids", x.top_parent_relids))

    return children
end
function convert_to_node_type(::Val{T_IndexOptInfo})
    return IndexOptInfo
end
function AbstractTrees.printnode(io::IO, x::IndexOptInfo)
    hasfield(IndexOptInfo, :type) && true && @assert x.type == T_IndexOptInfo "x.type is $(x.type), but expected to be T_IndexOptInfo"
    Base.print(io, "IndexOptInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "indexoid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexoid))
    true && Base.print(io, ", ")
    Base.print(io, "reltablespace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.reltablespace))
    true && Base.print(io, ", ")
    Base.print(io, "pages")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pages))
    true && Base.print(io, ", ")
    Base.print(io, "tree_height")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tree_height))
    true && Base.print(io, ", ")
    Base.print(io, "ncolumns")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ncolumns))
    true && Base.print(io, ", ")
    Base.print(io, "indexkeys")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexkeys))
    true && Base.print(io, ", ")
    Base.print(io, "indexcollations")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexcollations))
    true && Base.print(io, ", ")
    Base.print(io, "opfamily")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opfamily))
    true && Base.print(io, ", ")
    Base.print(io, "opcintype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.opcintype))
    true && Base.print(io, ", ")
    Base.print(io, "sortopfamily")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortopfamily))
    true && Base.print(io, ", ")
    Base.print(io, "reverse_sort")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.reverse_sort))
    true && Base.print(io, ", ")
    Base.print(io, "nulls_first")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nulls_first))
    true && Base.print(io, ", ")
    Base.print(io, "canreturn")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.canreturn))
    true && Base.print(io, ", ")
    Base.print(io, "relam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relam))
    true && Base.print(io, ", ")
    Base.print(io, "predOK")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.predOK))
    true && Base.print(io, ", ")
    Base.print(io, "unique")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.unique))
    true && Base.print(io, ", ")
    Base.print(io, "immediate")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.immediate))
    true && Base.print(io, ", ")
    Base.print(io, "hypothetical")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hypothetical))
    true && Base.print(io, ", ")
    Base.print(io, "amcanorderbyop")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amcanorderbyop))
    true && Base.print(io, ", ")
    Base.print(io, "amoptionalkey")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amoptionalkey))
    true && Base.print(io, ", ")
    Base.print(io, "amsearcharray")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amsearcharray))
    true && Base.print(io, ", ")
    Base.print(io, "amsearchnulls")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amsearchnulls))
    true && Base.print(io, ", ")
    Base.print(io, "amhasgettuple")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amhasgettuple))
    true && Base.print(io, ", ")
    Base.print(io, "amhasgetbitmap")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amhasgetbitmap))
    true && Base.print(io, ", ")
    Base.print(io, "amcanparallel")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amcanparallel))
    true && Base.print(io, ", ")
    Base.print(io, "amcostestimate")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amcostestimate))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexOptInfo)
    hasfield(IndexOptInfo, :type) && true && @assert x.type == T_IndexOptInfo "x.type is $(x.type), but expected to be T_IndexOptInfo"
    children = []
    push!(children, FieldNameAndValuePair("rel", x.rel))
    push!(children, FieldNameAndValuePair("tuples", x.tuples))
    push!(children, FieldNameAndValuePair("indexprs", x.indexprs))
    push!(children, FieldNameAndValuePair("indpred", x.indpred))
    push!(children, FieldNameAndValuePair("indextlist", x.indextlist))
    push!(children, FieldNameAndValuePair("indrestrictinfo", x.indrestrictinfo))

    return children
end
function convert_to_node_type(::Val{T_ForeignKeyOptInfo})
    return ForeignKeyOptInfo
end
function AbstractTrees.printnode(io::IO, x::ForeignKeyOptInfo)
    hasfield(ForeignKeyOptInfo, :type) && true && @assert x.type == T_ForeignKeyOptInfo "x.type is $(x.type), but expected to be T_ForeignKeyOptInfo"
    Base.print(io, "ForeignKeyOptInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "con_relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.con_relid))
    true && Base.print(io, ", ")
    Base.print(io, "ref_relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ref_relid))
    true && Base.print(io, ", ")
    Base.print(io, "nkeys")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nkeys))
    true && Base.print(io, ", ")
    Base.print(io, "nmatched_ec")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nmatched_ec))
    true && Base.print(io, ", ")
    Base.print(io, "nmatched_rcols")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nmatched_rcols))
    true && Base.print(io, ", ")
    Base.print(io, "nmatched_ri")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nmatched_ri))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ForeignKeyOptInfo)
    hasfield(ForeignKeyOptInfo, :type) && true && @assert x.type == T_ForeignKeyOptInfo "x.type is $(x.type), but expected to be T_ForeignKeyOptInfo"
    children = []
    push!(children, FieldNameAndValuePair("conkey", x.conkey))
    push!(children, FieldNameAndValuePair("confkey", x.confkey))
    push!(children, FieldNameAndValuePair("conpfeqop", x.conpfeqop))
    push!(children, FieldNameAndValuePair("eclass", x.eclass))
    push!(children, FieldNameAndValuePair("rinfos", x.rinfos))

    return children
end
function convert_to_node_type(::Val{T_ParamPathInfo})
    return ParamPathInfo
end
function AbstractTrees.printnode(io::IO, x::ParamPathInfo)
    hasfield(ParamPathInfo, :type) && true && @assert x.type == T_ParamPathInfo "x.type is $(x.type), but expected to be T_ParamPathInfo"
    Base.print(io, "ParamPathInfo")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ParamPathInfo)
    hasfield(ParamPathInfo, :type) && true && @assert x.type == T_ParamPathInfo "x.type is $(x.type), but expected to be T_ParamPathInfo"
    children = []
    push!(children, FieldNameAndValuePair("ppi_req_outer", x.ppi_req_outer))
    push!(children, FieldNameAndValuePair("ppi_rows", x.ppi_rows))
    push!(children, FieldNameAndValuePair("ppi_clauses", x.ppi_clauses))

    return children
end
function convert_to_node_type(::Val{T_Path})
    return Path
end
function AbstractTrees.printnode(io::IO, x::Path)
    hasfield(Path, :type) && true && @assert x.type == T_Path "x.type is $(x.type), but expected to be T_Path"
    Base.print(io, "Path")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "parallel_aware")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_aware))
    true && Base.print(io, ", ")
    Base.print(io, "parallel_safe")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_safe))
    true && Base.print(io, ", ")
    Base.print(io, "parallel_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallel_workers))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Path)
    hasfield(Path, :type) && true && @assert x.type == T_Path "x.type is $(x.type), but expected to be T_Path"
    children = []
    push!(children, FieldNameAndValuePair("pathtype", x.pathtype))
    push!(children, FieldNameAndValuePair("parent", x.parent))
    push!(children, FieldNameAndValuePair("pathtarget", x.pathtarget))
    push!(children, FieldNameAndValuePair("param_info", x.param_info))
    push!(children, FieldNameAndValuePair("rows", x.rows))
    push!(children, FieldNameAndValuePair("startup_cost", x.startup_cost))
    push!(children, FieldNameAndValuePair("total_cost", x.total_cost))
    push!(children, FieldNameAndValuePair("pathkeys", x.pathkeys))

    return children
end
function convert_to_node_type(::Val{T_IndexPath})
    return IndexPath
end
function AbstractTrees.printnode(io::IO, x::IndexPath)
    hasfield(IndexPath, :type) && true && @assert x.type == T_IndexPath "x.type is $(x.type), but expected to be T_IndexPath"
    Base.print(io, "IndexPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexPath)
    hasfield(IndexPath, :type) && true && @assert x.type == T_IndexPath "x.type is $(x.type), but expected to be T_IndexPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("indexinfo", x.indexinfo))
    push!(children, FieldNameAndValuePair("indexclauses", x.indexclauses))
    push!(children, FieldNameAndValuePair("indexquals", x.indexquals))
    push!(children, FieldNameAndValuePair("indexqualcols", x.indexqualcols))
    push!(children, FieldNameAndValuePair("indexorderbys", x.indexorderbys))
    push!(children, FieldNameAndValuePair("indexorderbycols", x.indexorderbycols))
    push!(children, FieldNameAndValuePair("indexscandir", x.indexscandir))
    push!(children, FieldNameAndValuePair("indextotalcost", x.indextotalcost))
    push!(children, FieldNameAndValuePair("indexselectivity", x.indexselectivity))

    return children
end
function convert_to_node_type(::Val{T_BitmapHeapPath})
    return BitmapHeapPath
end
function AbstractTrees.printnode(io::IO, x::BitmapHeapPath)
    hasfield(BitmapHeapPath, :type) && true && @assert x.type == T_BitmapHeapPath "x.type is $(x.type), but expected to be T_BitmapHeapPath"
    Base.print(io, "BitmapHeapPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapHeapPath)
    hasfield(BitmapHeapPath, :type) && true && @assert x.type == T_BitmapHeapPath "x.type is $(x.type), but expected to be T_BitmapHeapPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("bitmapqual", x.bitmapqual))

    return children
end
function convert_to_node_type(::Val{T_BitmapAndPath})
    return BitmapAndPath
end
function AbstractTrees.printnode(io::IO, x::BitmapAndPath)
    hasfield(BitmapAndPath, :type) && true && @assert x.type == T_BitmapAndPath "x.type is $(x.type), but expected to be T_BitmapAndPath"
    Base.print(io, "BitmapAndPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapAndPath)
    hasfield(BitmapAndPath, :type) && true && @assert x.type == T_BitmapAndPath "x.type is $(x.type), but expected to be T_BitmapAndPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("bitmapquals", x.bitmapquals))
    push!(children, FieldNameAndValuePair("bitmapselectivity", x.bitmapselectivity))

    return children
end
function convert_to_node_type(::Val{T_BitmapOrPath})
    return BitmapOrPath
end
function AbstractTrees.printnode(io::IO, x::BitmapOrPath)
    hasfield(BitmapOrPath, :type) && true && @assert x.type == T_BitmapOrPath "x.type is $(x.type), but expected to be T_BitmapOrPath"
    Base.print(io, "BitmapOrPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::BitmapOrPath)
    hasfield(BitmapOrPath, :type) && true && @assert x.type == T_BitmapOrPath "x.type is $(x.type), but expected to be T_BitmapOrPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("bitmapquals", x.bitmapquals))
    push!(children, FieldNameAndValuePair("bitmapselectivity", x.bitmapselectivity))

    return children
end
function convert_to_node_type(::Val{T_TidPath})
    return TidPath
end
function AbstractTrees.printnode(io::IO, x::TidPath)
    hasfield(TidPath, :type) && true && @assert x.type == T_TidPath "x.type is $(x.type), but expected to be T_TidPath"
    Base.print(io, "TidPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::TidPath)
    hasfield(TidPath, :type) && true && @assert x.type == T_TidPath "x.type is $(x.type), but expected to be T_TidPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("tidquals", x.tidquals))

    return children
end
function convert_to_node_type(::Val{T_SubqueryScanPath})
    return SubqueryScanPath
end
function AbstractTrees.printnode(io::IO, x::SubqueryScanPath)
    hasfield(SubqueryScanPath, :type) && true && @assert x.type == T_SubqueryScanPath "x.type is $(x.type), but expected to be T_SubqueryScanPath"
    Base.print(io, "SubqueryScanPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::SubqueryScanPath)
    hasfield(SubqueryScanPath, :type) && true && @assert x.type == T_SubqueryScanPath "x.type is $(x.type), but expected to be T_SubqueryScanPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_ForeignPath})
    return ForeignPath
end
function AbstractTrees.printnode(io::IO, x::ForeignPath)
    hasfield(ForeignPath, :type) && true && @assert x.type == T_ForeignPath "x.type is $(x.type), but expected to be T_ForeignPath"
    Base.print(io, "ForeignPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ForeignPath)
    hasfield(ForeignPath, :type) && true && @assert x.type == T_ForeignPath "x.type is $(x.type), but expected to be T_ForeignPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("fdw_outerpath", x.fdw_outerpath))
    push!(children, FieldNameAndValuePair("fdw_private", x.fdw_private))

    return children
end
function convert_to_node_type(::Val{T_CustomPath})
    return CustomPath
end
function AbstractTrees.printnode(io::IO, x::CustomPath)
    hasfield(CustomPath, :type) && true && @assert x.type == T_CustomPath "x.type is $(x.type), but expected to be T_CustomPath"
    Base.print(io, "CustomPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "flags")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.flags))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CustomPath)
    hasfield(CustomPath, :type) && true && @assert x.type == T_CustomPath "x.type is $(x.type), but expected to be T_CustomPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("custom_paths", x.custom_paths))
    push!(children, FieldNameAndValuePair("custom_private", x.custom_private))
    push!(children, FieldNameAndValuePair("methods", x.methods))

    return children
end
function convert_to_node_type(::Val{T_NestPath})
    return NestPath
end
function AbstractTrees.printnode(io::IO, x::NestPath)
    hasfield(NestPath, :type) && true && @assert x.type == T_NestPath "x.type is $(x.type), but expected to be T_NestPath"
    Base.print(io, "NestPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "inner_unique")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inner_unique))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NestPath)
    hasfield(NestPath, :type) && true && @assert x.type == T_NestPath "x.type is $(x.type), but expected to be T_NestPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("jointype", x.jointype))
    push!(children, FieldNameAndValuePair("outerjoinpath", x.outerjoinpath))
    push!(children, FieldNameAndValuePair("innerjoinpath", x.innerjoinpath))
    push!(children, FieldNameAndValuePair("joinrestrictinfo", x.joinrestrictinfo))

    return children
end
function convert_to_node_type(::Val{T_MergePath})
    return MergePath
end
function AbstractTrees.printnode(io::IO, x::MergePath)
    hasfield(MergePath, :type) && true && @assert x.type == T_MergePath "x.type is $(x.type), but expected to be T_MergePath"
    Base.print(io, "MergePath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "skip_mark_restore")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skip_mark_restore))
    true && Base.print(io, ", ")
    Base.print(io, "materialize_inner")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.materialize_inner))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MergePath)
    hasfield(MergePath, :type) && true && @assert x.type == T_MergePath "x.type is $(x.type), but expected to be T_MergePath"
    children = []
    push!(children, FieldNameAndValuePair("jpath", x.jpath))
    push!(children, FieldNameAndValuePair("path_mergeclauses", x.path_mergeclauses))
    push!(children, FieldNameAndValuePair("outersortkeys", x.outersortkeys))
    push!(children, FieldNameAndValuePair("innersortkeys", x.innersortkeys))

    return children
end
function convert_to_node_type(::Val{T_HashPath})
    return HashPath
end
function AbstractTrees.printnode(io::IO, x::HashPath)
    hasfield(HashPath, :type) && true && @assert x.type == T_HashPath "x.type is $(x.type), but expected to be T_HashPath"
    Base.print(io, "HashPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "num_batches")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.num_batches))

    Base.print(io, ")")
end

function AbstractTrees.children(x::HashPath)
    hasfield(HashPath, :type) && true && @assert x.type == T_HashPath "x.type is $(x.type), but expected to be T_HashPath"
    children = []
    push!(children, FieldNameAndValuePair("jpath", x.jpath))
    push!(children, FieldNameAndValuePair("path_hashclauses", x.path_hashclauses))

    return children
end
function convert_to_node_type(::Val{T_AppendPath})
    return AppendPath
end
function AbstractTrees.printnode(io::IO, x::AppendPath)
    hasfield(AppendPath, :type) && true && @assert x.type == T_AppendPath "x.type is $(x.type), but expected to be T_AppendPath"
    Base.print(io, "AppendPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AppendPath)
    hasfield(AppendPath, :type) && true && @assert x.type == T_AppendPath "x.type is $(x.type), but expected to be T_AppendPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("subpaths", x.subpaths))

    return children
end
function convert_to_node_type(::Val{T_MergeAppendPath})
    return MergeAppendPath
end
function AbstractTrees.printnode(io::IO, x::MergeAppendPath)
    hasfield(MergeAppendPath, :type) && true && @assert x.type == T_MergeAppendPath "x.type is $(x.type), but expected to be T_MergeAppendPath"
    Base.print(io, "MergeAppendPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::MergeAppendPath)
    hasfield(MergeAppendPath, :type) && true && @assert x.type == T_MergeAppendPath "x.type is $(x.type), but expected to be T_MergeAppendPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("subpaths", x.subpaths))
    push!(children, FieldNameAndValuePair("limit_tuples", x.limit_tuples))

    return children
end
function convert_to_node_type(::Val{T_ResultPath})
    return ResultPath
end
function AbstractTrees.printnode(io::IO, x::ResultPath)
    hasfield(ResultPath, :type) && true && @assert x.type == T_ResultPath "x.type is $(x.type), but expected to be T_ResultPath"
    Base.print(io, "ResultPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ResultPath)
    hasfield(ResultPath, :type) && true && @assert x.type == T_ResultPath "x.type is $(x.type), but expected to be T_ResultPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("quals", x.quals))

    return children
end
function convert_to_node_type(::Val{T_MaterialPath})
    return MaterialPath
end
function AbstractTrees.printnode(io::IO, x::MaterialPath)
    hasfield(MaterialPath, :type) && true && @assert x.type == T_MaterialPath "x.type is $(x.type), but expected to be T_MaterialPath"
    Base.print(io, "MaterialPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::MaterialPath)
    hasfield(MaterialPath, :type) && true && @assert x.type == T_MaterialPath "x.type is $(x.type), but expected to be T_MaterialPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_UniquePath})
    return UniquePath
end
function AbstractTrees.printnode(io::IO, x::UniquePath)
    hasfield(UniquePath, :type) && true && @assert x.type == T_UniquePath "x.type is $(x.type), but expected to be T_UniquePath"
    Base.print(io, "UniquePath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::UniquePath)
    hasfield(UniquePath, :type) && true && @assert x.type == T_UniquePath "x.type is $(x.type), but expected to be T_UniquePath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("umethod", x.umethod))
    push!(children, FieldNameAndValuePair("in_operators", x.in_operators))
    push!(children, FieldNameAndValuePair("uniq_exprs", x.uniq_exprs))

    return children
end
function convert_to_node_type(::Val{T_GatherPath})
    return GatherPath
end
function AbstractTrees.printnode(io::IO, x::GatherPath)
    hasfield(GatherPath, :type) && true && @assert x.type == T_GatherPath "x.type is $(x.type), but expected to be T_GatherPath"
    Base.print(io, "GatherPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "single_copy")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.single_copy))
    true && Base.print(io, ", ")
    Base.print(io, "num_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.num_workers))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GatherPath)
    hasfield(GatherPath, :type) && true && @assert x.type == T_GatherPath "x.type is $(x.type), but expected to be T_GatherPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_GatherMergePath})
    return GatherMergePath
end
function AbstractTrees.printnode(io::IO, x::GatherMergePath)
    hasfield(GatherMergePath, :type) && true && @assert x.type == T_GatherMergePath "x.type is $(x.type), but expected to be T_GatherMergePath"
    Base.print(io, "GatherMergePath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "num_workers")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.num_workers))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GatherMergePath)
    hasfield(GatherMergePath, :type) && true && @assert x.type == T_GatherMergePath "x.type is $(x.type), but expected to be T_GatherMergePath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_ProjectionPath})
    return ProjectionPath
end
function AbstractTrees.printnode(io::IO, x::ProjectionPath)
    hasfield(ProjectionPath, :type) && true && @assert x.type == T_ProjectionPath "x.type is $(x.type), but expected to be T_ProjectionPath"
    Base.print(io, "ProjectionPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "dummypp")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dummypp))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ProjectionPath)
    hasfield(ProjectionPath, :type) && true && @assert x.type == T_ProjectionPath "x.type is $(x.type), but expected to be T_ProjectionPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_ProjectSetPath})
    return ProjectSetPath
end
function AbstractTrees.printnode(io::IO, x::ProjectSetPath)
    hasfield(ProjectSetPath, :type) && true && @assert x.type == T_ProjectSetPath "x.type is $(x.type), but expected to be T_ProjectSetPath"
    Base.print(io, "ProjectSetPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ProjectSetPath)
    hasfield(ProjectSetPath, :type) && true && @assert x.type == T_ProjectSetPath "x.type is $(x.type), but expected to be T_ProjectSetPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_SortPath})
    return SortPath
end
function AbstractTrees.printnode(io::IO, x::SortPath)
    hasfield(SortPath, :type) && true && @assert x.type == T_SortPath "x.type is $(x.type), but expected to be T_SortPath"
    Base.print(io, "SortPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::SortPath)
    hasfield(SortPath, :type) && true && @assert x.type == T_SortPath "x.type is $(x.type), but expected to be T_SortPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_GroupPath})
    return GroupPath
end
function AbstractTrees.printnode(io::IO, x::GroupPath)
    hasfield(GroupPath, :type) && true && @assert x.type == T_GroupPath "x.type is $(x.type), but expected to be T_GroupPath"
    Base.print(io, "GroupPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::GroupPath)
    hasfield(GroupPath, :type) && true && @assert x.type == T_GroupPath "x.type is $(x.type), but expected to be T_GroupPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("groupClause", x.groupClause))
    push!(children, FieldNameAndValuePair("qual", x.qual))

    return children
end
function convert_to_node_type(::Val{T_UpperUniquePath})
    return UpperUniquePath
end
function AbstractTrees.printnode(io::IO, x::UpperUniquePath)
    hasfield(UpperUniquePath, :type) && true && @assert x.type == T_UpperUniquePath "x.type is $(x.type), but expected to be T_UpperUniquePath"
    Base.print(io, "UpperUniquePath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "numkeys")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.numkeys))

    Base.print(io, ")")
end

function AbstractTrees.children(x::UpperUniquePath)
    hasfield(UpperUniquePath, :type) && true && @assert x.type == T_UpperUniquePath "x.type is $(x.type), but expected to be T_UpperUniquePath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))

    return children
end
function convert_to_node_type(::Val{T_AggPath})
    return AggPath
end
function AbstractTrees.printnode(io::IO, x::AggPath)
    hasfield(AggPath, :type) && true && @assert x.type == T_AggPath "x.type is $(x.type), but expected to be T_AggPath"
    Base.print(io, "AggPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AggPath)
    hasfield(AggPath, :type) && true && @assert x.type == T_AggPath "x.type is $(x.type), but expected to be T_AggPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("aggstrategy", x.aggstrategy))
    push!(children, FieldNameAndValuePair("aggsplit", x.aggsplit))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))
    push!(children, FieldNameAndValuePair("groupClause", x.groupClause))
    push!(children, FieldNameAndValuePair("qual", x.qual))

    return children
end
function convert_to_node_type(::Val{T_GroupingSetsPath})
    return GroupingSetsPath
end
function AbstractTrees.printnode(io::IO, x::GroupingSetsPath)
    hasfield(GroupingSetsPath, :type) && true && @assert x.type == T_GroupingSetsPath "x.type is $(x.type), but expected to be T_GroupingSetsPath"
    Base.print(io, "GroupingSetsPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::GroupingSetsPath)
    hasfield(GroupingSetsPath, :type) && true && @assert x.type == T_GroupingSetsPath "x.type is $(x.type), but expected to be T_GroupingSetsPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("aggstrategy", x.aggstrategy))
    push!(children, FieldNameAndValuePair("rollups", x.rollups))
    push!(children, FieldNameAndValuePair("qual", x.qual))

    return children
end
function convert_to_node_type(::Val{T_MinMaxAggPath})
    return MinMaxAggPath
end
function AbstractTrees.printnode(io::IO, x::MinMaxAggPath)
    hasfield(MinMaxAggPath, :type) && true && @assert x.type == T_MinMaxAggPath "x.type is $(x.type), but expected to be T_MinMaxAggPath"
    Base.print(io, "MinMaxAggPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::MinMaxAggPath)
    hasfield(MinMaxAggPath, :type) && true && @assert x.type == T_MinMaxAggPath "x.type is $(x.type), but expected to be T_MinMaxAggPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("mmaggregates", x.mmaggregates))
    push!(children, FieldNameAndValuePair("quals", x.quals))

    return children
end
function convert_to_node_type(::Val{T_WindowAggPath})
    return WindowAggPath
end
function AbstractTrees.printnode(io::IO, x::WindowAggPath)
    hasfield(WindowAggPath, :type) && true && @assert x.type == T_WindowAggPath "x.type is $(x.type), but expected to be T_WindowAggPath"
    Base.print(io, "WindowAggPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::WindowAggPath)
    hasfield(WindowAggPath, :type) && true && @assert x.type == T_WindowAggPath "x.type is $(x.type), but expected to be T_WindowAggPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("winclause", x.winclause))
    push!(children, FieldNameAndValuePair("winpathkeys", x.winpathkeys))

    return children
end
function convert_to_node_type(::Val{T_SetOpPath})
    return SetOpPath
end
function AbstractTrees.printnode(io::IO, x::SetOpPath)
    hasfield(SetOpPath, :type) && true && @assert x.type == T_SetOpPath "x.type is $(x.type), but expected to be T_SetOpPath"
    Base.print(io, "SetOpPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "flagColIdx")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.flagColIdx))
    true && Base.print(io, ", ")
    Base.print(io, "firstFlag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.firstFlag))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SetOpPath)
    hasfield(SetOpPath, :type) && true && @assert x.type == T_SetOpPath "x.type is $(x.type), but expected to be T_SetOpPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("cmd", x.cmd))
    push!(children, FieldNameAndValuePair("strategy", x.strategy))
    push!(children, FieldNameAndValuePair("distinctList", x.distinctList))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_RecursiveUnionPath})
    return RecursiveUnionPath
end
function AbstractTrees.printnode(io::IO, x::RecursiveUnionPath)
    hasfield(RecursiveUnionPath, :type) && true && @assert x.type == T_RecursiveUnionPath "x.type is $(x.type), but expected to be T_RecursiveUnionPath"
    Base.print(io, "RecursiveUnionPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "wtParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.wtParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RecursiveUnionPath)
    hasfield(RecursiveUnionPath, :type) && true && @assert x.type == T_RecursiveUnionPath "x.type is $(x.type), but expected to be T_RecursiveUnionPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("leftpath", x.leftpath))
    push!(children, FieldNameAndValuePair("rightpath", x.rightpath))
    push!(children, FieldNameAndValuePair("distinctList", x.distinctList))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_LockRowsPath})
    return LockRowsPath
end
function AbstractTrees.printnode(io::IO, x::LockRowsPath)
    hasfield(LockRowsPath, :type) && true && @assert x.type == T_LockRowsPath "x.type is $(x.type), but expected to be T_LockRowsPath"
    Base.print(io, "LockRowsPath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "epqParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.epqParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::LockRowsPath)
    hasfield(LockRowsPath, :type) && true && @assert x.type == T_LockRowsPath "x.type is $(x.type), but expected to be T_LockRowsPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))

    return children
end
function convert_to_node_type(::Val{T_ModifyTablePath})
    return ModifyTablePath
end
function AbstractTrees.printnode(io::IO, x::ModifyTablePath)
    hasfield(ModifyTablePath, :type) && true && @assert x.type == T_ModifyTablePath "x.type is $(x.type), but expected to be T_ModifyTablePath"
    Base.print(io, "ModifyTablePath")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "canSetTag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.canSetTag))
    true && Base.print(io, ", ")
    Base.print(io, "nominalRelation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nominalRelation))
    true && Base.print(io, ", ")
    Base.print(io, "epqParam")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.epqParam))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ModifyTablePath)
    hasfield(ModifyTablePath, :type) && true && @assert x.type == T_ModifyTablePath "x.type is $(x.type), but expected to be T_ModifyTablePath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("operation", x.operation))
    push!(children, FieldNameAndValuePair("partitioned_rels", x.partitioned_rels))
    push!(children, FieldNameAndValuePair("resultRelations", x.resultRelations))
    push!(children, FieldNameAndValuePair("subpaths", x.subpaths))
    push!(children, FieldNameAndValuePair("subroots", x.subroots))
    push!(children, FieldNameAndValuePair("withCheckOptionLists", x.withCheckOptionLists))
    push!(children, FieldNameAndValuePair("returningLists", x.returningLists))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))
    push!(children, FieldNameAndValuePair("onconflict", x.onconflict))

    return children
end
function convert_to_node_type(::Val{T_LimitPath})
    return LimitPath
end
function AbstractTrees.printnode(io::IO, x::LimitPath)
    hasfield(LimitPath, :type) && true && @assert x.type == T_LimitPath "x.type is $(x.type), but expected to be T_LimitPath"
    Base.print(io, "LimitPath")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::LimitPath)
    hasfield(LimitPath, :type) && true && @assert x.type == T_LimitPath "x.type is $(x.type), but expected to be T_LimitPath"
    children = []
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("subpath", x.subpath))
    push!(children, FieldNameAndValuePair("limitOffset", x.limitOffset))
    push!(children, FieldNameAndValuePair("limitCount", x.limitCount))

    return children
end
function convert_to_node_type(::Val{T_EquivalenceClass})
    return EquivalenceClass
end
function AbstractTrees.printnode(io::IO, x::EquivalenceClass)
    hasfield(EquivalenceClass, :type) && true && @assert x.type == T_EquivalenceClass "x.type is $(x.type), but expected to be T_EquivalenceClass"
    Base.print(io, "EquivalenceClass")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "ec_collation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_collation))
    true && Base.print(io, ", ")
    Base.print(io, "ec_has_const")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_has_const))
    true && Base.print(io, ", ")
    Base.print(io, "ec_has_volatile")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_has_volatile))
    true && Base.print(io, ", ")
    Base.print(io, "ec_below_outer_join")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_below_outer_join))
    true && Base.print(io, ", ")
    Base.print(io, "ec_broken")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_broken))
    true && Base.print(io, ", ")
    Base.print(io, "ec_sortref")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_sortref))
    true && Base.print(io, ", ")
    Base.print(io, "ec_min_security")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_min_security))
    true && Base.print(io, ", ")
    Base.print(io, "ec_max_security")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ec_max_security))

    Base.print(io, ")")
end

function AbstractTrees.children(x::EquivalenceClass)
    hasfield(EquivalenceClass, :type) && true && @assert x.type == T_EquivalenceClass "x.type is $(x.type), but expected to be T_EquivalenceClass"
    children = []
    push!(children, FieldNameAndValuePair("ec_opfamilies", x.ec_opfamilies))
    push!(children, FieldNameAndValuePair("ec_members", x.ec_members))
    push!(children, FieldNameAndValuePair("ec_sources", x.ec_sources))
    push!(children, FieldNameAndValuePair("ec_derives", x.ec_derives))
    push!(children, FieldNameAndValuePair("ec_relids", x.ec_relids))
    push!(children, FieldNameAndValuePair("ec_merged", x.ec_merged))

    return children
end
function convert_to_node_type(::Val{T_EquivalenceMember})
    return EquivalenceMember
end
function AbstractTrees.printnode(io::IO, x::EquivalenceMember)
    hasfield(EquivalenceMember, :type) && true && @assert x.type == T_EquivalenceMember "x.type is $(x.type), but expected to be T_EquivalenceMember"
    Base.print(io, "EquivalenceMember")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "em_is_const")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.em_is_const))
    true && Base.print(io, ", ")
    Base.print(io, "em_is_child")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.em_is_child))
    true && Base.print(io, ", ")
    Base.print(io, "em_datatype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.em_datatype))

    Base.print(io, ")")
end

function AbstractTrees.children(x::EquivalenceMember)
    hasfield(EquivalenceMember, :type) && true && @assert x.type == T_EquivalenceMember "x.type is $(x.type), but expected to be T_EquivalenceMember"
    children = []
    push!(children, FieldNameAndValuePair("em_expr", x.em_expr))
    push!(children, FieldNameAndValuePair("em_relids", x.em_relids))
    push!(children, FieldNameAndValuePair("em_nullable_relids", x.em_nullable_relids))

    return children
end
function convert_to_node_type(::Val{T_PathKey})
    return PathKey
end
function AbstractTrees.printnode(io::IO, x::PathKey)
    hasfield(PathKey, :type) && true && @assert x.type == T_PathKey "x.type is $(x.type), but expected to be T_PathKey"
    Base.print(io, "PathKey")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "pk_opfamily")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pk_opfamily))
    true && Base.print(io, ", ")
    Base.print(io, "pk_strategy")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pk_strategy))
    true && Base.print(io, ", ")
    Base.print(io, "pk_nulls_first")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pk_nulls_first))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PathKey)
    hasfield(PathKey, :type) && true && @assert x.type == T_PathKey "x.type is $(x.type), but expected to be T_PathKey"
    children = []
    push!(children, FieldNameAndValuePair("pk_eclass", x.pk_eclass))

    return children
end
function convert_to_node_type(::Val{T_PathTarget})
    return PathTarget
end
function AbstractTrees.printnode(io::IO, x::PathTarget)
    hasfield(PathTarget, :type) && true && @assert x.type == T_PathTarget "x.type is $(x.type), but expected to be T_PathTarget"
    Base.print(io, "PathTarget")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "sortgrouprefs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortgrouprefs))
    true && Base.print(io, ", ")
    Base.print(io, "width")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.width))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PathTarget)
    hasfield(PathTarget, :type) && true && @assert x.type == T_PathTarget "x.type is $(x.type), but expected to be T_PathTarget"
    children = []
    push!(children, FieldNameAndValuePair("exprs", x.exprs))
    push!(children, FieldNameAndValuePair("cost", x.cost))

    return children
end
function convert_to_node_type(::Val{T_RestrictInfo})
    return RestrictInfo
end
function AbstractTrees.printnode(io::IO, x::RestrictInfo)
    hasfield(RestrictInfo, :type) && true && @assert x.type == T_RestrictInfo "x.type is $(x.type), but expected to be T_RestrictInfo"
    Base.print(io, "RestrictInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_pushed_down")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_pushed_down))
    true && Base.print(io, ", ")
    Base.print(io, "outerjoin_delayed")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.outerjoin_delayed))
    true && Base.print(io, ", ")
    Base.print(io, "can_join")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.can_join))
    true && Base.print(io, ", ")
    Base.print(io, "pseudoconstant")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pseudoconstant))
    true && Base.print(io, ", ")
    Base.print(io, "leakproof")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.leakproof))
    true && Base.print(io, ", ")
    Base.print(io, "security_level")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.security_level))
    true && Base.print(io, ", ")
    Base.print(io, "outer_is_left")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.outer_is_left))
    true && Base.print(io, ", ")
    Base.print(io, "hashjoinoperator")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hashjoinoperator))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RestrictInfo)
    hasfield(RestrictInfo, :type) && true && @assert x.type == T_RestrictInfo "x.type is $(x.type), but expected to be T_RestrictInfo"
    children = []
    push!(children, FieldNameAndValuePair("clause", x.clause))
    push!(children, FieldNameAndValuePair("clause_relids", x.clause_relids))
    push!(children, FieldNameAndValuePair("required_relids", x.required_relids))
    push!(children, FieldNameAndValuePair("outer_relids", x.outer_relids))
    push!(children, FieldNameAndValuePair("nullable_relids", x.nullable_relids))
    push!(children, FieldNameAndValuePair("left_relids", x.left_relids))
    push!(children, FieldNameAndValuePair("right_relids", x.right_relids))
    push!(children, FieldNameAndValuePair("orclause", x.orclause))
    push!(children, FieldNameAndValuePair("parent_ec", x.parent_ec))
    push!(children, FieldNameAndValuePair("eval_cost", x.eval_cost))
    push!(children, FieldNameAndValuePair("norm_selec", x.norm_selec))
    push!(children, FieldNameAndValuePair("outer_selec", x.outer_selec))
    push!(children, FieldNameAndValuePair("mergeopfamilies", x.mergeopfamilies))
    push!(children, FieldNameAndValuePair("left_ec", x.left_ec))
    push!(children, FieldNameAndValuePair("right_ec", x.right_ec))
    push!(children, FieldNameAndValuePair("left_em", x.left_em))
    push!(children, FieldNameAndValuePair("right_em", x.right_em))
    push!(children, FieldNameAndValuePair("scansel_cache", x.scansel_cache))
    push!(children, FieldNameAndValuePair("left_bucketsize", x.left_bucketsize))
    push!(children, FieldNameAndValuePair("right_bucketsize", x.right_bucketsize))

    return children
end
function convert_to_node_type(::Val{T_PlaceHolderVar})
    return PlaceHolderVar
end
function AbstractTrees.printnode(io::IO, x::PlaceHolderVar)
    hasfield(PlaceHolderVar, :type) && true && @assert x.type == T_PlaceHolderVar "x.type is $(x.type), but expected to be T_PlaceHolderVar"
    Base.print(io, "PlaceHolderVar")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "phid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.phid))
    true && Base.print(io, ", ")
    Base.print(io, "phlevelsup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.phlevelsup))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlaceHolderVar)
    hasfield(PlaceHolderVar, :type) && true && @assert x.type == T_PlaceHolderVar "x.type is $(x.type), but expected to be T_PlaceHolderVar"
    children = []
    push!(children, FieldNameAndValuePair("xpr", x.xpr))
    push!(children, FieldNameAndValuePair("phexpr", x.phexpr))
    push!(children, FieldNameAndValuePair("phrels", x.phrels))

    return children
end
function convert_to_node_type(::Val{T_SpecialJoinInfo})
    return SpecialJoinInfo
end
function AbstractTrees.printnode(io::IO, x::SpecialJoinInfo)
    hasfield(SpecialJoinInfo, :type) && true && @assert x.type == T_SpecialJoinInfo "x.type is $(x.type), but expected to be T_SpecialJoinInfo"
    Base.print(io, "SpecialJoinInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "lhs_strict")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lhs_strict))
    true && Base.print(io, ", ")
    Base.print(io, "delay_upper_joins")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.delay_upper_joins))
    true && Base.print(io, ", ")
    Base.print(io, "semi_can_btree")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.semi_can_btree))
    true && Base.print(io, ", ")
    Base.print(io, "semi_can_hash")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.semi_can_hash))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SpecialJoinInfo)
    hasfield(SpecialJoinInfo, :type) && true && @assert x.type == T_SpecialJoinInfo "x.type is $(x.type), but expected to be T_SpecialJoinInfo"
    children = []
    push!(children, FieldNameAndValuePair("min_lefthand", x.min_lefthand))
    push!(children, FieldNameAndValuePair("min_righthand", x.min_righthand))
    push!(children, FieldNameAndValuePair("syn_lefthand", x.syn_lefthand))
    push!(children, FieldNameAndValuePair("syn_righthand", x.syn_righthand))
    push!(children, FieldNameAndValuePair("jointype", x.jointype))
    push!(children, FieldNameAndValuePair("semi_operators", x.semi_operators))
    push!(children, FieldNameAndValuePair("semi_rhs_exprs", x.semi_rhs_exprs))

    return children
end
function convert_to_node_type(::Val{T_AppendRelInfo})
    return AppendRelInfo
end
function AbstractTrees.printnode(io::IO, x::AppendRelInfo)
    hasfield(AppendRelInfo, :type) && true && @assert x.type == T_AppendRelInfo "x.type is $(x.type), but expected to be T_AppendRelInfo"
    Base.print(io, "AppendRelInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "parent_relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parent_relid))
    true && Base.print(io, ", ")
    Base.print(io, "child_relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.child_relid))
    true && Base.print(io, ", ")
    Base.print(io, "parent_reltype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parent_reltype))
    true && Base.print(io, ", ")
    Base.print(io, "child_reltype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.child_reltype))
    true && Base.print(io, ", ")
    Base.print(io, "parent_reloid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parent_reloid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AppendRelInfo)
    hasfield(AppendRelInfo, :type) && true && @assert x.type == T_AppendRelInfo "x.type is $(x.type), but expected to be T_AppendRelInfo"
    children = []
    push!(children, FieldNameAndValuePair("translated_vars", x.translated_vars))

    return children
end
function convert_to_node_type(::Val{T_PartitionedChildRelInfo})
    return PartitionedChildRelInfo
end
function AbstractTrees.printnode(io::IO, x::PartitionedChildRelInfo)
    hasfield(PartitionedChildRelInfo, :type) && true && @assert x.type == T_PartitionedChildRelInfo "x.type is $(x.type), but expected to be T_PartitionedChildRelInfo"
    Base.print(io, "PartitionedChildRelInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "parent_relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parent_relid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionedChildRelInfo)
    hasfield(PartitionedChildRelInfo, :type) && true && @assert x.type == T_PartitionedChildRelInfo "x.type is $(x.type), but expected to be T_PartitionedChildRelInfo"
    children = []
    push!(children, FieldNameAndValuePair("child_rels", x.child_rels))

    return children
end
function convert_to_node_type(::Val{T_PlaceHolderInfo})
    return PlaceHolderInfo
end
function AbstractTrees.printnode(io::IO, x::PlaceHolderInfo)
    hasfield(PlaceHolderInfo, :type) && true && @assert x.type == T_PlaceHolderInfo "x.type is $(x.type), but expected to be T_PlaceHolderInfo"
    Base.print(io, "PlaceHolderInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "phid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.phid))
    true && Base.print(io, ", ")
    Base.print(io, "ph_width")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ph_width))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlaceHolderInfo)
    hasfield(PlaceHolderInfo, :type) && true && @assert x.type == T_PlaceHolderInfo "x.type is $(x.type), but expected to be T_PlaceHolderInfo"
    children = []
    push!(children, FieldNameAndValuePair("ph_var", x.ph_var))
    push!(children, FieldNameAndValuePair("ph_eval_at", x.ph_eval_at))
    push!(children, FieldNameAndValuePair("ph_lateral", x.ph_lateral))
    push!(children, FieldNameAndValuePair("ph_needed", x.ph_needed))

    return children
end
function convert_to_node_type(::Val{T_MinMaxAggInfo})
    return MinMaxAggInfo
end
function AbstractTrees.printnode(io::IO, x::MinMaxAggInfo)
    hasfield(MinMaxAggInfo, :type) && true && @assert x.type == T_MinMaxAggInfo "x.type is $(x.type), but expected to be T_MinMaxAggInfo"
    Base.print(io, "MinMaxAggInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "aggfnoid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggfnoid))
    true && Base.print(io, ", ")
    Base.print(io, "aggsortop")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.aggsortop))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MinMaxAggInfo)
    hasfield(MinMaxAggInfo, :type) && true && @assert x.type == T_MinMaxAggInfo "x.type is $(x.type), but expected to be T_MinMaxAggInfo"
    children = []
    push!(children, FieldNameAndValuePair("target", x.target))
    push!(children, FieldNameAndValuePair("subroot", x.subroot))
    push!(children, FieldNameAndValuePair("path", x.path))
    push!(children, FieldNameAndValuePair("pathcost", x.pathcost))
    push!(children, FieldNameAndValuePair("param", x.param))

    return children
end
function convert_to_node_type(::Val{T_PlannerParamItem})
    return PlannerParamItem
end
function AbstractTrees.printnode(io::IO, x::PlannerParamItem)
    hasfield(PlannerParamItem, :type) && true && @assert x.type == T_PlannerParamItem "x.type is $(x.type), but expected to be T_PlannerParamItem"
    Base.print(io, "PlannerParamItem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "paramId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.paramId))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlannerParamItem)
    hasfield(PlannerParamItem, :type) && true && @assert x.type == T_PlannerParamItem "x.type is $(x.type), but expected to be T_PlannerParamItem"
    children = []
    push!(children, FieldNameAndValuePair("item", x.item))

    return children
end
function convert_to_node_type(::Val{T_RollupData})
    return RollupData
end
function AbstractTrees.printnode(io::IO, x::RollupData)
    hasfield(RollupData, :type) && true && @assert x.type == T_RollupData "x.type is $(x.type), but expected to be T_RollupData"
    Base.print(io, "RollupData")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "hashable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hashable))
    true && Base.print(io, ", ")
    Base.print(io, "is_hashed")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_hashed))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RollupData)
    hasfield(RollupData, :type) && true && @assert x.type == T_RollupData "x.type is $(x.type), but expected to be T_RollupData"
    children = []
    push!(children, FieldNameAndValuePair("groupClause", x.groupClause))
    push!(children, FieldNameAndValuePair("gsets", x.gsets))
    push!(children, FieldNameAndValuePair("gsets_data", x.gsets_data))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_GroupingSetData})
    return GroupingSetData
end
function AbstractTrees.printnode(io::IO, x::GroupingSetData)
    hasfield(GroupingSetData, :type) && true && @assert x.type == T_GroupingSetData "x.type is $(x.type), but expected to be T_GroupingSetData"
    Base.print(io, "GroupingSetData")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::GroupingSetData)
    hasfield(GroupingSetData, :type) && true && @assert x.type == T_GroupingSetData "x.type is $(x.type), but expected to be T_GroupingSetData"
    children = []
    push!(children, FieldNameAndValuePair("set", x.set))
    push!(children, FieldNameAndValuePair("numGroups", x.numGroups))

    return children
end
function convert_to_node_type(::Val{T_StatisticExtInfo})
    return StatisticExtInfo
end
function AbstractTrees.printnode(io::IO, x::StatisticExtInfo)
    hasfield(StatisticExtInfo, :type) && true && @assert x.type == T_StatisticExtInfo "x.type is $(x.type), but expected to be T_StatisticExtInfo"
    Base.print(io, "StatisticExtInfo")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "statOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.statOid))
    true && Base.print(io, ", ")
    Base.print(io, "kind")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.kind))

    Base.print(io, ")")
end

function AbstractTrees.children(x::StatisticExtInfo)
    hasfield(StatisticExtInfo, :type) && true && @assert x.type == T_StatisticExtInfo "x.type is $(x.type), but expected to be T_StatisticExtInfo"
    children = []
    push!(children, FieldNameAndValuePair("rel", x.rel))
    push!(children, FieldNameAndValuePair("keys", x.keys))

    return children
end
function convert_to_node_type(::Val{T_MemoryContext})
    return MemoryContext
end
function AbstractTrees.printnode(io::IO, x::MemoryContext)
    hasfield(MemoryContext, :type) && true && @assert x.type == T_MemoryContext "x.type is $(x.type), but expected to be T_MemoryContext"
    Base.print(io, "MemoryContext")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::MemoryContext)
    hasfield(MemoryContext, :type) && true && @assert x.type == T_MemoryContext "x.type is $(x.type), but expected to be T_MemoryContext"
    children = []

    return children
end
function convert_to_node_type(::Val{T_ExtensibleNode})
    return ExtensibleNode
end
function AbstractTrees.printnode(io::IO, x::ExtensibleNode)
    hasfield(ExtensibleNode, :type) && true && @assert x.type == T_ExtensibleNode "x.type is $(x.type), but expected to be T_ExtensibleNode"
    Base.print(io, "ExtensibleNode")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "extnodename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.extnodename))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ExtensibleNode)
    hasfield(ExtensibleNode, :type) && true && @assert x.type == T_ExtensibleNode "x.type is $(x.type), but expected to be T_ExtensibleNode"
    children = []

    return children
end
function convert_to_node_type(::Val{T_RawStmt})
    return RawStmt
end
function AbstractTrees.printnode(io::IO, x::RawStmt)
    hasfield(RawStmt, :type) && true && @assert x.type == T_RawStmt "x.type is $(x.type), but expected to be T_RawStmt"
    Base.print(io, "RawStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "stmt_location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_location))
    true && Base.print(io, ", ")
    Base.print(io, "stmt_len")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_len))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RawStmt)
    hasfield(RawStmt, :type) && true && @assert x.type == T_RawStmt "x.type is $(x.type), but expected to be T_RawStmt"
    children = []
    push!(children, FieldNameAndValuePair("stmt", x.stmt))

    return children
end
function convert_to_node_type(::Val{T_Query})
    return Query
end
function AbstractTrees.printnode(io::IO, x::Query)
    hasfield(Query, :type) && true && @assert x.type == T_Query "x.type is $(x.type), but expected to be T_Query"
    Base.print(io, "Query")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "queryId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.queryId))
    true && Base.print(io, ", ")
    Base.print(io, "canSetTag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.canSetTag))
    true && Base.print(io, ", ")
    Base.print(io, "resultRelation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.resultRelation))
    true && Base.print(io, ", ")
    Base.print(io, "hasAggs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasAggs))
    true && Base.print(io, ", ")
    Base.print(io, "hasWindowFuncs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasWindowFuncs))
    true && Base.print(io, ", ")
    Base.print(io, "hasTargetSRFs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasTargetSRFs))
    true && Base.print(io, ", ")
    Base.print(io, "hasSubLinks")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasSubLinks))
    true && Base.print(io, ", ")
    Base.print(io, "hasDistinctOn")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasDistinctOn))
    true && Base.print(io, ", ")
    Base.print(io, "hasRecursive")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasRecursive))
    true && Base.print(io, ", ")
    Base.print(io, "hasModifyingCTE")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasModifyingCTE))
    true && Base.print(io, ", ")
    Base.print(io, "hasForUpdate")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasForUpdate))
    true && Base.print(io, ", ")
    Base.print(io, "hasRowSecurity")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasRowSecurity))
    true && Base.print(io, ", ")
    Base.print(io, "stmt_location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_location))
    true && Base.print(io, ", ")
    Base.print(io, "stmt_len")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_len))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Query)
    hasfield(Query, :type) && true && @assert x.type == T_Query "x.type is $(x.type), but expected to be T_Query"
    children = []
    push!(children, FieldNameAndValuePair("commandType", x.commandType))
    push!(children, FieldNameAndValuePair("querySource", x.querySource))
    push!(children, FieldNameAndValuePair("utilityStmt", x.utilityStmt))
    push!(children, FieldNameAndValuePair("cteList", x.cteList))
    push!(children, FieldNameAndValuePair("rtable", x.rtable))
    push!(children, FieldNameAndValuePair("jointree", x.jointree))
    push!(children, FieldNameAndValuePair("targetList", x.targetList))
    push!(children, FieldNameAndValuePair("override", x.override))
    push!(children, FieldNameAndValuePair("onConflict", x.onConflict))
    push!(children, FieldNameAndValuePair("returningList", x.returningList))
    push!(children, FieldNameAndValuePair("groupClause", x.groupClause))
    push!(children, FieldNameAndValuePair("groupingSets", x.groupingSets))
    push!(children, FieldNameAndValuePair("havingQual", x.havingQual))
    push!(children, FieldNameAndValuePair("windowClause", x.windowClause))
    push!(children, FieldNameAndValuePair("distinctClause", x.distinctClause))
    push!(children, FieldNameAndValuePair("sortClause", x.sortClause))
    push!(children, FieldNameAndValuePair("limitOffset", x.limitOffset))
    push!(children, FieldNameAndValuePair("limitCount", x.limitCount))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))
    push!(children, FieldNameAndValuePair("setOperations", x.setOperations))
    push!(children, FieldNameAndValuePair("constraintDeps", x.constraintDeps))
    push!(children, FieldNameAndValuePair("withCheckOptions", x.withCheckOptions))

    return children
end
function convert_to_node_type(::Val{T_PlannedStmt})
    return PlannedStmt
end
function AbstractTrees.printnode(io::IO, x::PlannedStmt)
    hasfield(PlannedStmt, :type) && true && @assert x.type == T_PlannedStmt "x.type is $(x.type), but expected to be T_PlannedStmt"
    Base.print(io, "PlannedStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "queryId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.queryId))
    true && Base.print(io, ", ")
    Base.print(io, "hasReturning")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasReturning))
    true && Base.print(io, ", ")
    Base.print(io, "hasModifyingCTE")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hasModifyingCTE))
    true && Base.print(io, ", ")
    Base.print(io, "canSetTag")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.canSetTag))
    true && Base.print(io, ", ")
    Base.print(io, "transientPlan")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.transientPlan))
    true && Base.print(io, ", ")
    Base.print(io, "dependsOnRole")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dependsOnRole))
    true && Base.print(io, ", ")
    Base.print(io, "parallelModeNeeded")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.parallelModeNeeded))
    true && Base.print(io, ", ")
    Base.print(io, "nParamExec")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nParamExec))
    true && Base.print(io, ", ")
    Base.print(io, "stmt_location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_location))
    true && Base.print(io, ", ")
    Base.print(io, "stmt_len")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.stmt_len))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PlannedStmt)
    hasfield(PlannedStmt, :type) && true && @assert x.type == T_PlannedStmt "x.type is $(x.type), but expected to be T_PlannedStmt"
    children = []
    push!(children, FieldNameAndValuePair("commandType", x.commandType))
    push!(children, FieldNameAndValuePair("planTree", x.planTree))
    push!(children, FieldNameAndValuePair("rtable", x.rtable))
    push!(children, FieldNameAndValuePair("resultRelations", x.resultRelations))
    push!(children, FieldNameAndValuePair("nonleafResultRelations", x.nonleafResultRelations))
    push!(children, FieldNameAndValuePair("rootResultRelations", x.rootResultRelations))
    push!(children, FieldNameAndValuePair("subplans", x.subplans))
    push!(children, FieldNameAndValuePair("rewindPlanIDs", x.rewindPlanIDs))
    push!(children, FieldNameAndValuePair("rowMarks", x.rowMarks))
    push!(children, FieldNameAndValuePair("relationOids", x.relationOids))
    push!(children, FieldNameAndValuePair("invalItems", x.invalItems))
    push!(children, FieldNameAndValuePair("utilityStmt", x.utilityStmt))

    return children
end
function convert_to_node_type(::Val{T_InsertStmt})
    return InsertStmt
end
function AbstractTrees.printnode(io::IO, x::InsertStmt)
    hasfield(InsertStmt, :type) && true && @assert x.type == T_InsertStmt "x.type is $(x.type), but expected to be T_InsertStmt"
    Base.print(io, "InsertStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::InsertStmt)
    hasfield(InsertStmt, :type) && true && @assert x.type == T_InsertStmt "x.type is $(x.type), but expected to be T_InsertStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("cols", x.cols))
    push!(children, FieldNameAndValuePair("selectStmt", x.selectStmt))
    push!(children, FieldNameAndValuePair("onConflictClause", x.onConflictClause))
    push!(children, FieldNameAndValuePair("returningList", x.returningList))
    push!(children, FieldNameAndValuePair("withClause", x.withClause))
    push!(children, FieldNameAndValuePair("override", x.override))

    return children
end
function convert_to_node_type(::Val{T_DeleteStmt})
    return DeleteStmt
end
function AbstractTrees.printnode(io::IO, x::DeleteStmt)
    hasfield(DeleteStmt, :type) && true && @assert x.type == T_DeleteStmt "x.type is $(x.type), but expected to be T_DeleteStmt"
    Base.print(io, "DeleteStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::DeleteStmt)
    hasfield(DeleteStmt, :type) && true && @assert x.type == T_DeleteStmt "x.type is $(x.type), but expected to be T_DeleteStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("usingClause", x.usingClause))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))
    push!(children, FieldNameAndValuePair("returningList", x.returningList))
    push!(children, FieldNameAndValuePair("withClause", x.withClause))

    return children
end
function convert_to_node_type(::Val{T_UpdateStmt})
    return UpdateStmt
end
function AbstractTrees.printnode(io::IO, x::UpdateStmt)
    hasfield(UpdateStmt, :type) && true && @assert x.type == T_UpdateStmt "x.type is $(x.type), but expected to be T_UpdateStmt"
    Base.print(io, "UpdateStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::UpdateStmt)
    hasfield(UpdateStmt, :type) && true && @assert x.type == T_UpdateStmt "x.type is $(x.type), but expected to be T_UpdateStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("targetList", x.targetList))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))
    push!(children, FieldNameAndValuePair("fromClause", x.fromClause))
    push!(children, FieldNameAndValuePair("returningList", x.returningList))
    push!(children, FieldNameAndValuePair("withClause", x.withClause))

    return children
end
function convert_to_node_type(::Val{T_SelectStmt})
    return SelectStmt
end
function AbstractTrees.printnode(io::IO, x::SelectStmt)
    hasfield(SelectStmt, :type) && true && @assert x.type == T_SelectStmt "x.type is $(x.type), but expected to be T_SelectStmt"
    Base.print(io, "SelectStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "all")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.all))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SelectStmt)
    hasfield(SelectStmt, :type) && true && @assert x.type == T_SelectStmt "x.type is $(x.type), but expected to be T_SelectStmt"
    children = []
    push!(children, FieldNameAndValuePair("distinctClause", x.distinctClause))
    push!(children, FieldNameAndValuePair("intoClause", x.intoClause))
    push!(children, FieldNameAndValuePair("targetList", x.targetList))
    push!(children, FieldNameAndValuePair("fromClause", x.fromClause))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))
    push!(children, FieldNameAndValuePair("groupClause", x.groupClause))
    push!(children, FieldNameAndValuePair("havingClause", x.havingClause))
    push!(children, FieldNameAndValuePair("windowClause", x.windowClause))
    push!(children, FieldNameAndValuePair("valuesLists", x.valuesLists))
    push!(children, FieldNameAndValuePair("sortClause", x.sortClause))
    push!(children, FieldNameAndValuePair("limitOffset", x.limitOffset))
    push!(children, FieldNameAndValuePair("limitCount", x.limitCount))
    push!(children, FieldNameAndValuePair("lockingClause", x.lockingClause))
    push!(children, FieldNameAndValuePair("withClause", x.withClause))
    push!(children, FieldNameAndValuePair("op", x.op))
    push!(children, FieldNameAndValuePair("larg", x.larg))
    push!(children, FieldNameAndValuePair("rarg", x.rarg))

    return children
end
function convert_to_node_type(::Val{T_AlterTableStmt})
    return AlterTableStmt
end
function AbstractTrees.printnode(io::IO, x::AlterTableStmt)
    hasfield(AlterTableStmt, :type) && true && @assert x.type == T_AlterTableStmt "x.type is $(x.type), but expected to be T_AlterTableStmt"
    Base.print(io, "AlterTableStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTableStmt)
    hasfield(AlterTableStmt, :type) && true && @assert x.type == T_AlterTableStmt "x.type is $(x.type), but expected to be T_AlterTableStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("cmds", x.cmds))
    push!(children, FieldNameAndValuePair("relkind", x.relkind))

    return children
end
function convert_to_node_type(::Val{T_AlterTableCmd})
    return AlterTableCmd
end
function AbstractTrees.printnode(io::IO, x::AlterTableCmd)
    hasfield(AlterTableCmd, :type) && true && @assert x.type == T_AlterTableCmd "x.type is $(x.type), but expected to be T_AlterTableCmd"
    Base.print(io, "AlterTableCmd")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTableCmd)
    hasfield(AlterTableCmd, :type) && true && @assert x.type == T_AlterTableCmd "x.type is $(x.type), but expected to be T_AlterTableCmd"
    children = []
    push!(children, FieldNameAndValuePair("subtype", x.subtype))
    push!(children, FieldNameAndValuePair("newowner", x.newowner))
    push!(children, FieldNameAndValuePair("def", x.def))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_AlterDomainStmt})
    return AlterDomainStmt
end
function AbstractTrees.printnode(io::IO, x::AlterDomainStmt)
    hasfield(AlterDomainStmt, :type) && true && @assert x.type == T_AlterDomainStmt "x.type is $(x.type), but expected to be T_AlterDomainStmt"
    Base.print(io, "AlterDomainStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subtype))
    true && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterDomainStmt)
    hasfield(AlterDomainStmt, :type) && true && @assert x.type == T_AlterDomainStmt "x.type is $(x.type), but expected to be T_AlterDomainStmt"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("def", x.def))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_SetOperationStmt})
    return SetOperationStmt
end
function AbstractTrees.printnode(io::IO, x::SetOperationStmt)
    hasfield(SetOperationStmt, :type) && true && @assert x.type == T_SetOperationStmt "x.type is $(x.type), but expected to be T_SetOperationStmt"
    Base.print(io, "SetOperationStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "all")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.all))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SetOperationStmt)
    hasfield(SetOperationStmt, :type) && true && @assert x.type == T_SetOperationStmt "x.type is $(x.type), but expected to be T_SetOperationStmt"
    children = []
    push!(children, FieldNameAndValuePair("op", x.op))
    push!(children, FieldNameAndValuePair("larg", x.larg))
    push!(children, FieldNameAndValuePair("rarg", x.rarg))
    push!(children, FieldNameAndValuePair("colTypes", x.colTypes))
    push!(children, FieldNameAndValuePair("colTypmods", x.colTypmods))
    push!(children, FieldNameAndValuePair("colCollations", x.colCollations))
    push!(children, FieldNameAndValuePair("groupClauses", x.groupClauses))

    return children
end
function convert_to_node_type(::Val{T_GrantStmt})
    return GrantStmt
end
function AbstractTrees.printnode(io::IO, x::GrantStmt)
    hasfield(GrantStmt, :type) && true && @assert x.type == T_GrantStmt "x.type is $(x.type), but expected to be T_GrantStmt"
    Base.print(io, "GrantStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_grant")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_grant))
    true && Base.print(io, ", ")
    Base.print(io, "grant_option")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.grant_option))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GrantStmt)
    hasfield(GrantStmt, :type) && true && @assert x.type == T_GrantStmt "x.type is $(x.type), but expected to be T_GrantStmt"
    children = []
    push!(children, FieldNameAndValuePair("targtype", x.targtype))
    push!(children, FieldNameAndValuePair("objtype", x.objtype))
    push!(children, FieldNameAndValuePair("objects", x.objects))
    push!(children, FieldNameAndValuePair("privileges", x.privileges))
    push!(children, FieldNameAndValuePair("grantees", x.grantees))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_GrantRoleStmt})
    return GrantRoleStmt
end
function AbstractTrees.printnode(io::IO, x::GrantRoleStmt)
    hasfield(GrantRoleStmt, :type) && true && @assert x.type == T_GrantRoleStmt "x.type is $(x.type), but expected to be T_GrantRoleStmt"
    Base.print(io, "GrantRoleStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_grant")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_grant))
    true && Base.print(io, ", ")
    Base.print(io, "admin_opt")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.admin_opt))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GrantRoleStmt)
    hasfield(GrantRoleStmt, :type) && true && @assert x.type == T_GrantRoleStmt "x.type is $(x.type), but expected to be T_GrantRoleStmt"
    children = []
    push!(children, FieldNameAndValuePair("granted_roles", x.granted_roles))
    push!(children, FieldNameAndValuePair("grantee_roles", x.grantee_roles))
    push!(children, FieldNameAndValuePair("grantor", x.grantor))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_AlterDefaultPrivilegesStmt})
    return AlterDefaultPrivilegesStmt
end
function AbstractTrees.printnode(io::IO, x::AlterDefaultPrivilegesStmt)
    hasfield(AlterDefaultPrivilegesStmt, :type) && true && @assert x.type == T_AlterDefaultPrivilegesStmt "x.type is $(x.type), but expected to be T_AlterDefaultPrivilegesStmt"
    Base.print(io, "AlterDefaultPrivilegesStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterDefaultPrivilegesStmt)
    hasfield(AlterDefaultPrivilegesStmt, :type) && true && @assert x.type == T_AlterDefaultPrivilegesStmt "x.type is $(x.type), but expected to be T_AlterDefaultPrivilegesStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("action", x.action))

    return children
end
function convert_to_node_type(::Val{T_ClosePortalStmt})
    return ClosePortalStmt
end
function AbstractTrees.printnode(io::IO, x::ClosePortalStmt)
    hasfield(ClosePortalStmt, :type) && true && @assert x.type == T_ClosePortalStmt "x.type is $(x.type), but expected to be T_ClosePortalStmt"
    Base.print(io, "ClosePortalStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "portalname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.portalname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ClosePortalStmt)
    hasfield(ClosePortalStmt, :type) && true && @assert x.type == T_ClosePortalStmt "x.type is $(x.type), but expected to be T_ClosePortalStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_ClusterStmt})
    return ClusterStmt
end
function AbstractTrees.printnode(io::IO, x::ClusterStmt)
    hasfield(ClusterStmt, :type) && true && @assert x.type == T_ClusterStmt "x.type is $(x.type), but expected to be T_ClusterStmt"
    Base.print(io, "ClusterStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "indexname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexname))
    true && Base.print(io, ", ")
    Base.print(io, "verbose")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.verbose))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ClusterStmt)
    hasfield(ClusterStmt, :type) && true && @assert x.type == T_ClusterStmt "x.type is $(x.type), but expected to be T_ClusterStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))

    return children
end
function convert_to_node_type(::Val{T_CopyStmt})
    return CopyStmt
end
function AbstractTrees.printnode(io::IO, x::CopyStmt)
    hasfield(CopyStmt, :type) && true && @assert x.type == T_CopyStmt "x.type is $(x.type), but expected to be T_CopyStmt"
    Base.print(io, "CopyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_from")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_from))
    true && Base.print(io, ", ")
    Base.print(io, "is_program")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_program))
    true && Base.print(io, ", ")
    Base.print(io, "filename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.filename))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CopyStmt)
    hasfield(CopyStmt, :type) && true && @assert x.type == T_CopyStmt "x.type is $(x.type), but expected to be T_CopyStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("query", x.query))
    push!(children, FieldNameAndValuePair("attlist", x.attlist))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_CreateStmt})
    return CreateStmt
end
function AbstractTrees.printnode(io::IO, x::CreateStmt)
    hasfield(CreateStmt, :type) && true && @assert x.type == T_CreateStmt "x.type is $(x.type), but expected to be T_CreateStmt"
    Base.print(io, "CreateStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateStmt)
    hasfield(CreateStmt, :type) && true && @assert x.type == T_CreateStmt "x.type is $(x.type), but expected to be T_CreateStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("tableElts", x.tableElts))
    push!(children, FieldNameAndValuePair("inhRelations", x.inhRelations))
    push!(children, FieldNameAndValuePair("partbound", x.partbound))
    push!(children, FieldNameAndValuePair("partspec", x.partspec))
    push!(children, FieldNameAndValuePair("ofTypename", x.ofTypename))
    push!(children, FieldNameAndValuePair("constraints", x.constraints))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("oncommit", x.oncommit))

    return children
end
function convert_to_node_type(::Val{T_DefineStmt})
    return DefineStmt
end
function AbstractTrees.printnode(io::IO, x::DefineStmt)
    hasfield(DefineStmt, :type) && true && @assert x.type == T_DefineStmt "x.type is $(x.type), but expected to be T_DefineStmt"
    Base.print(io, "DefineStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "oldstyle")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.oldstyle))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DefineStmt)
    hasfield(DefineStmt, :type) && true && @assert x.type == T_DefineStmt "x.type is $(x.type), but expected to be T_DefineStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("defnames", x.defnames))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("definition", x.definition))

    return children
end
function convert_to_node_type(::Val{T_DropStmt})
    return DropStmt
end
function AbstractTrees.printnode(io::IO, x::DropStmt)
    hasfield(DropStmt, :type) && true && @assert x.type == T_DropStmt "x.type is $(x.type), but expected to be T_DropStmt"
    Base.print(io, "DropStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))
    true && Base.print(io, ", ")
    Base.print(io, "concurrent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.concurrent))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropStmt)
    hasfield(DropStmt, :type) && true && @assert x.type == T_DropStmt "x.type is $(x.type), but expected to be T_DropStmt"
    children = []
    push!(children, FieldNameAndValuePair("objects", x.objects))
    push!(children, FieldNameAndValuePair("removeType", x.removeType))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_TruncateStmt})
    return TruncateStmt
end
function AbstractTrees.printnode(io::IO, x::TruncateStmt)
    hasfield(TruncateStmt, :type) && true && @assert x.type == T_TruncateStmt "x.type is $(x.type), but expected to be T_TruncateStmt"
    Base.print(io, "TruncateStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "restart_seqs")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.restart_seqs))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TruncateStmt)
    hasfield(TruncateStmt, :type) && true && @assert x.type == T_TruncateStmt "x.type is $(x.type), but expected to be T_TruncateStmt"
    children = []
    push!(children, FieldNameAndValuePair("relations", x.relations))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_CommentStmt})
    return CommentStmt
end
function AbstractTrees.printnode(io::IO, x::CommentStmt)
    hasfield(CommentStmt, :type) && true && @assert x.type == T_CommentStmt "x.type is $(x.type), but expected to be T_CommentStmt"
    Base.print(io, "CommentStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "comment")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.comment))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CommentStmt)
    hasfield(CommentStmt, :type) && true && @assert x.type == T_CommentStmt "x.type is $(x.type), but expected to be T_CommentStmt"
    children = []
    push!(children, FieldNameAndValuePair("objtype", x.objtype))
    push!(children, FieldNameAndValuePair("object", x.object))

    return children
end
function convert_to_node_type(::Val{T_FetchStmt})
    return FetchStmt
end
function AbstractTrees.printnode(io::IO, x::FetchStmt)
    hasfield(FetchStmt, :type) && true && @assert x.type == T_FetchStmt "x.type is $(x.type), but expected to be T_FetchStmt"
    Base.print(io, "FetchStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "portalname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.portalname))
    true && Base.print(io, ", ")
    Base.print(io, "ismove")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ismove))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FetchStmt)
    hasfield(FetchStmt, :type) && true && @assert x.type == T_FetchStmt "x.type is $(x.type), but expected to be T_FetchStmt"
    children = []
    push!(children, FieldNameAndValuePair("direction", x.direction))
    push!(children, FieldNameAndValuePair("howMany", x.howMany))

    return children
end
function convert_to_node_type(::Val{T_IndexStmt})
    return IndexStmt
end
function AbstractTrees.printnode(io::IO, x::IndexStmt)
    hasfield(IndexStmt, :type) && true && @assert x.type == T_IndexStmt "x.type is $(x.type), but expected to be T_IndexStmt"
    Base.print(io, "IndexStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "idxname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.idxname))
    true && Base.print(io, ", ")
    Base.print(io, "accessMethod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.accessMethod))
    true && Base.print(io, ", ")
    Base.print(io, "tableSpace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tableSpace))
    true && Base.print(io, ", ")
    Base.print(io, "idxcomment")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.idxcomment))
    true && Base.print(io, ", ")
    Base.print(io, "indexOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexOid))
    true && Base.print(io, ", ")
    Base.print(io, "oldNode")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.oldNode))
    true && Base.print(io, ", ")
    Base.print(io, "unique")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.unique))
    true && Base.print(io, ", ")
    Base.print(io, "primary")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.primary))
    true && Base.print(io, ", ")
    Base.print(io, "isconstraint")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isconstraint))
    true && Base.print(io, ", ")
    Base.print(io, "deferrable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.deferrable))
    true && Base.print(io, ", ")
    Base.print(io, "initdeferred")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.initdeferred))
    true && Base.print(io, ", ")
    Base.print(io, "transformed")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.transformed))
    true && Base.print(io, ", ")
    Base.print(io, "concurrent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.concurrent))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexStmt)
    hasfield(IndexStmt, :type) && true && @assert x.type == T_IndexStmt "x.type is $(x.type), but expected to be T_IndexStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("indexParams", x.indexParams))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))
    push!(children, FieldNameAndValuePair("excludeOpNames", x.excludeOpNames))

    return children
end
function convert_to_node_type(::Val{T_CreateFunctionStmt})
    return CreateFunctionStmt
end
function AbstractTrees.printnode(io::IO, x::CreateFunctionStmt)
    hasfield(CreateFunctionStmt, :type) && true && @assert x.type == T_CreateFunctionStmt "x.type is $(x.type), but expected to be T_CreateFunctionStmt"
    Base.print(io, "CreateFunctionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateFunctionStmt)
    hasfield(CreateFunctionStmt, :type) && true && @assert x.type == T_CreateFunctionStmt "x.type is $(x.type), but expected to be T_CreateFunctionStmt"
    children = []
    push!(children, FieldNameAndValuePair("funcname", x.funcname))
    push!(children, FieldNameAndValuePair("parameters", x.parameters))
    push!(children, FieldNameAndValuePair("returnType", x.returnType))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("withClause", x.withClause))

    return children
end
function convert_to_node_type(::Val{T_AlterFunctionStmt})
    return AlterFunctionStmt
end
function AbstractTrees.printnode(io::IO, x::AlterFunctionStmt)
    hasfield(AlterFunctionStmt, :type) && true && @assert x.type == T_AlterFunctionStmt "x.type is $(x.type), but expected to be T_AlterFunctionStmt"
    Base.print(io, "AlterFunctionStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterFunctionStmt)
    hasfield(AlterFunctionStmt, :type) && true && @assert x.type == T_AlterFunctionStmt "x.type is $(x.type), but expected to be T_AlterFunctionStmt"
    children = []
    push!(children, FieldNameAndValuePair("func", x.func))
    push!(children, FieldNameAndValuePair("actions", x.actions))

    return children
end
function convert_to_node_type(::Val{T_DoStmt})
    return DoStmt
end
function AbstractTrees.printnode(io::IO, x::DoStmt)
    hasfield(DoStmt, :type) && true && @assert x.type == T_DoStmt "x.type is $(x.type), but expected to be T_DoStmt"
    Base.print(io, "DoStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::DoStmt)
    hasfield(DoStmt, :type) && true && @assert x.type == T_DoStmt "x.type is $(x.type), but expected to be T_DoStmt"
    children = []
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_RenameStmt})
    return RenameStmt
end
function AbstractTrees.printnode(io::IO, x::RenameStmt)
    hasfield(RenameStmt, :type) && true && @assert x.type == T_RenameStmt "x.type is $(x.type), but expected to be T_RenameStmt"
    Base.print(io, "RenameStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subname))
    true && Base.print(io, ", ")
    Base.print(io, "newname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.newname))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RenameStmt)
    hasfield(RenameStmt, :type) && true && @assert x.type == T_RenameStmt "x.type is $(x.type), but expected to be T_RenameStmt"
    children = []
    push!(children, FieldNameAndValuePair("renameType", x.renameType))
    push!(children, FieldNameAndValuePair("relationType", x.relationType))
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("object", x.object))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_RuleStmt})
    return RuleStmt
end
function AbstractTrees.printnode(io::IO, x::RuleStmt)
    hasfield(RuleStmt, :type) && true && @assert x.type == T_RuleStmt "x.type is $(x.type), but expected to be T_RuleStmt"
    Base.print(io, "RuleStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "rulename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rulename))
    true && Base.print(io, ", ")
    Base.print(io, "instead")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.instead))
    true && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RuleStmt)
    hasfield(RuleStmt, :type) && true && @assert x.type == T_RuleStmt "x.type is $(x.type), but expected to be T_RuleStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))
    push!(children, FieldNameAndValuePair("event", x.event))
    push!(children, FieldNameAndValuePair("actions", x.actions))

    return children
end
function convert_to_node_type(::Val{T_NotifyStmt})
    return NotifyStmt
end
function AbstractTrees.printnode(io::IO, x::NotifyStmt)
    hasfield(NotifyStmt, :type) && true && @assert x.type == T_NotifyStmt "x.type is $(x.type), but expected to be T_NotifyStmt"
    Base.print(io, "NotifyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "conditionname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conditionname))
    true && Base.print(io, ", ")
    Base.print(io, "payload")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.payload))

    Base.print(io, ")")
end

function AbstractTrees.children(x::NotifyStmt)
    hasfield(NotifyStmt, :type) && true && @assert x.type == T_NotifyStmt "x.type is $(x.type), but expected to be T_NotifyStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_ListenStmt})
    return ListenStmt
end
function AbstractTrees.printnode(io::IO, x::ListenStmt)
    hasfield(ListenStmt, :type) && true && @assert x.type == T_ListenStmt "x.type is $(x.type), but expected to be T_ListenStmt"
    Base.print(io, "ListenStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "conditionname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conditionname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ListenStmt)
    hasfield(ListenStmt, :type) && true && @assert x.type == T_ListenStmt "x.type is $(x.type), but expected to be T_ListenStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_UnlistenStmt})
    return UnlistenStmt
end
function AbstractTrees.printnode(io::IO, x::UnlistenStmt)
    hasfield(UnlistenStmt, :type) && true && @assert x.type == T_UnlistenStmt "x.type is $(x.type), but expected to be T_UnlistenStmt"
    Base.print(io, "UnlistenStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "conditionname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conditionname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::UnlistenStmt)
    hasfield(UnlistenStmt, :type) && true && @assert x.type == T_UnlistenStmt "x.type is $(x.type), but expected to be T_UnlistenStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_TransactionStmt})
    return TransactionStmt
end
function AbstractTrees.printnode(io::IO, x::TransactionStmt)
    hasfield(TransactionStmt, :type) && true && @assert x.type == T_TransactionStmt "x.type is $(x.type), but expected to be T_TransactionStmt"
    Base.print(io, "TransactionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "gid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.gid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TransactionStmt)
    hasfield(TransactionStmt, :type) && true && @assert x.type == T_TransactionStmt "x.type is $(x.type), but expected to be T_TransactionStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_ViewStmt})
    return ViewStmt
end
function AbstractTrees.printnode(io::IO, x::ViewStmt)
    hasfield(ViewStmt, :type) && true && @assert x.type == T_ViewStmt "x.type is $(x.type), but expected to be T_ViewStmt"
    Base.print(io, "ViewStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ViewStmt)
    hasfield(ViewStmt, :type) && true && @assert x.type == T_ViewStmt "x.type is $(x.type), but expected to be T_ViewStmt"
    children = []
    push!(children, FieldNameAndValuePair("view", x.view))
    push!(children, FieldNameAndValuePair("aliases", x.aliases))
    push!(children, FieldNameAndValuePair("query", x.query))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("withCheckOption", x.withCheckOption))

    return children
end
function convert_to_node_type(::Val{T_LoadStmt})
    return LoadStmt
end
function AbstractTrees.printnode(io::IO, x::LoadStmt)
    hasfield(LoadStmt, :type) && true && @assert x.type == T_LoadStmt "x.type is $(x.type), but expected to be T_LoadStmt"
    Base.print(io, "LoadStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "filename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.filename))

    Base.print(io, ")")
end

function AbstractTrees.children(x::LoadStmt)
    hasfield(LoadStmt, :type) && true && @assert x.type == T_LoadStmt "x.type is $(x.type), but expected to be T_LoadStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_CreateDomainStmt})
    return CreateDomainStmt
end
function AbstractTrees.printnode(io::IO, x::CreateDomainStmt)
    hasfield(CreateDomainStmt, :type) && true && @assert x.type == T_CreateDomainStmt "x.type is $(x.type), but expected to be T_CreateDomainStmt"
    Base.print(io, "CreateDomainStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateDomainStmt)
    hasfield(CreateDomainStmt, :type) && true && @assert x.type == T_CreateDomainStmt "x.type is $(x.type), but expected to be T_CreateDomainStmt"
    children = []
    push!(children, FieldNameAndValuePair("domainname", x.domainname))
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("collClause", x.collClause))
    push!(children, FieldNameAndValuePair("constraints", x.constraints))

    return children
end
function convert_to_node_type(::Val{T_CreatedbStmt})
    return CreatedbStmt
end
function AbstractTrees.printnode(io::IO, x::CreatedbStmt)
    hasfield(CreatedbStmt, :type) && true && @assert x.type == T_CreatedbStmt "x.type is $(x.type), but expected to be T_CreatedbStmt"
    Base.print(io, "CreatedbStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "dbname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dbname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreatedbStmt)
    hasfield(CreatedbStmt, :type) && true && @assert x.type == T_CreatedbStmt "x.type is $(x.type), but expected to be T_CreatedbStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropdbStmt})
    return DropdbStmt
end
function AbstractTrees.printnode(io::IO, x::DropdbStmt)
    hasfield(DropdbStmt, :type) && true && @assert x.type == T_DropdbStmt "x.type is $(x.type), but expected to be T_DropdbStmt"
    Base.print(io, "DropdbStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "dbname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dbname))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropdbStmt)
    hasfield(DropdbStmt, :type) && true && @assert x.type == T_DropdbStmt "x.type is $(x.type), but expected to be T_DropdbStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_VacuumStmt})
    return VacuumStmt
end
function AbstractTrees.printnode(io::IO, x::VacuumStmt)
    hasfield(VacuumStmt, :type) && true && @assert x.type == T_VacuumStmt "x.type is $(x.type), but expected to be T_VacuumStmt"
    Base.print(io, "VacuumStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "options")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.options))

    Base.print(io, ")")
end

function AbstractTrees.children(x::VacuumStmt)
    hasfield(VacuumStmt, :type) && true && @assert x.type == T_VacuumStmt "x.type is $(x.type), but expected to be T_VacuumStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("va_cols", x.va_cols))

    return children
end
function convert_to_node_type(::Val{T_ExplainStmt})
    return ExplainStmt
end
function AbstractTrees.printnode(io::IO, x::ExplainStmt)
    hasfield(ExplainStmt, :type) && true && @assert x.type == T_ExplainStmt "x.type is $(x.type), but expected to be T_ExplainStmt"
    Base.print(io, "ExplainStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ExplainStmt)
    hasfield(ExplainStmt, :type) && true && @assert x.type == T_ExplainStmt "x.type is $(x.type), but expected to be T_ExplainStmt"
    children = []
    push!(children, FieldNameAndValuePair("query", x.query))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_CreateTableAsStmt})
    return CreateTableAsStmt
end
function AbstractTrees.printnode(io::IO, x::CreateTableAsStmt)
    hasfield(CreateTableAsStmt, :type) && true && @assert x.type == T_CreateTableAsStmt "x.type is $(x.type), but expected to be T_CreateTableAsStmt"
    Base.print(io, "CreateTableAsStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_select_into")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_select_into))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateTableAsStmt)
    hasfield(CreateTableAsStmt, :type) && true && @assert x.type == T_CreateTableAsStmt "x.type is $(x.type), but expected to be T_CreateTableAsStmt"
    children = []
    push!(children, FieldNameAndValuePair("query", x.query))
    push!(children, FieldNameAndValuePair("into", x.into))
    push!(children, FieldNameAndValuePair("relkind", x.relkind))

    return children
end
function convert_to_node_type(::Val{T_CreateSeqStmt})
    return CreateSeqStmt
end
function AbstractTrees.printnode(io::IO, x::CreateSeqStmt)
    hasfield(CreateSeqStmt, :type) && true && @assert x.type == T_CreateSeqStmt "x.type is $(x.type), but expected to be T_CreateSeqStmt"
    Base.print(io, "CreateSeqStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "ownerId")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ownerId))
    true && Base.print(io, ", ")
    Base.print(io, "for_identity")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_identity))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateSeqStmt)
    hasfield(CreateSeqStmt, :type) && true && @assert x.type == T_CreateSeqStmt "x.type is $(x.type), but expected to be T_CreateSeqStmt"
    children = []
    push!(children, FieldNameAndValuePair("sequence", x.sequence))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterSeqStmt})
    return AlterSeqStmt
end
function AbstractTrees.printnode(io::IO, x::AlterSeqStmt)
    hasfield(AlterSeqStmt, :type) && true && @assert x.type == T_AlterSeqStmt "x.type is $(x.type), but expected to be T_AlterSeqStmt"
    Base.print(io, "AlterSeqStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "for_identity")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_identity))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterSeqStmt)
    hasfield(AlterSeqStmt, :type) && true && @assert x.type == T_AlterSeqStmt "x.type is $(x.type), but expected to be T_AlterSeqStmt"
    children = []
    push!(children, FieldNameAndValuePair("sequence", x.sequence))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_VariableSetStmt})
    return VariableSetStmt
end
function AbstractTrees.printnode(io::IO, x::VariableSetStmt)
    hasfield(VariableSetStmt, :type) && true && @assert x.type == T_VariableSetStmt "x.type is $(x.type), but expected to be T_VariableSetStmt"
    Base.print(io, "VariableSetStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "is_local")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_local))

    Base.print(io, ")")
end

function AbstractTrees.children(x::VariableSetStmt)
    hasfield(VariableSetStmt, :type) && true && @assert x.type == T_VariableSetStmt "x.type is $(x.type), but expected to be T_VariableSetStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("args", x.args))

    return children
end
function convert_to_node_type(::Val{T_VariableShowStmt})
    return VariableShowStmt
end
function AbstractTrees.printnode(io::IO, x::VariableShowStmt)
    hasfield(VariableShowStmt, :type) && true && @assert x.type == T_VariableShowStmt "x.type is $(x.type), but expected to be T_VariableShowStmt"
    Base.print(io, "VariableShowStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::VariableShowStmt)
    hasfield(VariableShowStmt, :type) && true && @assert x.type == T_VariableShowStmt "x.type is $(x.type), but expected to be T_VariableShowStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_DiscardStmt})
    return DiscardStmt
end
function AbstractTrees.printnode(io::IO, x::DiscardStmt)
    hasfield(DiscardStmt, :type) && true && @assert x.type == T_DiscardStmt "x.type is $(x.type), but expected to be T_DiscardStmt"
    Base.print(io, "DiscardStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::DiscardStmt)
    hasfield(DiscardStmt, :type) && true && @assert x.type == T_DiscardStmt "x.type is $(x.type), but expected to be T_DiscardStmt"
    children = []
    push!(children, FieldNameAndValuePair("target", x.target))

    return children
end
function convert_to_node_type(::Val{T_CreateTrigStmt})
    return CreateTrigStmt
end
function AbstractTrees.printnode(io::IO, x::CreateTrigStmt)
    hasfield(CreateTrigStmt, :type) && true && @assert x.type == T_CreateTrigStmt "x.type is $(x.type), but expected to be T_CreateTrigStmt"
    Base.print(io, "CreateTrigStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "trigname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.trigname))
    true && Base.print(io, ", ")
    Base.print(io, "row")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.row))
    true && Base.print(io, ", ")
    Base.print(io, "timing")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.timing))
    true && Base.print(io, ", ")
    Base.print(io, "events")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.events))
    true && Base.print(io, ", ")
    Base.print(io, "isconstraint")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isconstraint))
    true && Base.print(io, ", ")
    Base.print(io, "deferrable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.deferrable))
    true && Base.print(io, ", ")
    Base.print(io, "initdeferred")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.initdeferred))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateTrigStmt)
    hasfield(CreateTrigStmt, :type) && true && @assert x.type == T_CreateTrigStmt "x.type is $(x.type), but expected to be T_CreateTrigStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("funcname", x.funcname))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("columns", x.columns))
    push!(children, FieldNameAndValuePair("whenClause", x.whenClause))
    push!(children, FieldNameAndValuePair("transitionRels", x.transitionRels))
    push!(children, FieldNameAndValuePair("constrrel", x.constrrel))

    return children
end
function convert_to_node_type(::Val{T_CreatePLangStmt})
    return CreatePLangStmt
end
function AbstractTrees.printnode(io::IO, x::CreatePLangStmt)
    hasfield(CreatePLangStmt, :type) && true && @assert x.type == T_CreatePLangStmt "x.type is $(x.type), but expected to be T_CreatePLangStmt"
    Base.print(io, "CreatePLangStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))
    true && Base.print(io, ", ")
    Base.print(io, "plname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.plname))
    true && Base.print(io, ", ")
    Base.print(io, "pltrusted")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pltrusted))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreatePLangStmt)
    hasfield(CreatePLangStmt, :type) && true && @assert x.type == T_CreatePLangStmt "x.type is $(x.type), but expected to be T_CreatePLangStmt"
    children = []
    push!(children, FieldNameAndValuePair("plhandler", x.plhandler))
    push!(children, FieldNameAndValuePair("plinline", x.plinline))
    push!(children, FieldNameAndValuePair("plvalidator", x.plvalidator))

    return children
end
function convert_to_node_type(::Val{T_CreateRoleStmt})
    return CreateRoleStmt
end
function AbstractTrees.printnode(io::IO, x::CreateRoleStmt)
    hasfield(CreateRoleStmt, :type) && true && @assert x.type == T_CreateRoleStmt "x.type is $(x.type), but expected to be T_CreateRoleStmt"
    Base.print(io, "CreateRoleStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "role")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.role))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateRoleStmt)
    hasfield(CreateRoleStmt, :type) && true && @assert x.type == T_CreateRoleStmt "x.type is $(x.type), but expected to be T_CreateRoleStmt"
    children = []
    push!(children, FieldNameAndValuePair("stmt_type", x.stmt_type))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterRoleStmt})
    return AlterRoleStmt
end
function AbstractTrees.printnode(io::IO, x::AlterRoleStmt)
    hasfield(AlterRoleStmt, :type) && true && @assert x.type == T_AlterRoleStmt "x.type is $(x.type), but expected to be T_AlterRoleStmt"
    Base.print(io, "AlterRoleStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "action")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.action))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterRoleStmt)
    hasfield(AlterRoleStmt, :type) && true && @assert x.type == T_AlterRoleStmt "x.type is $(x.type), but expected to be T_AlterRoleStmt"
    children = []
    push!(children, FieldNameAndValuePair("role", x.role))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropRoleStmt})
    return DropRoleStmt
end
function AbstractTrees.printnode(io::IO, x::DropRoleStmt)
    hasfield(DropRoleStmt, :type) && true && @assert x.type == T_DropRoleStmt "x.type is $(x.type), but expected to be T_DropRoleStmt"
    Base.print(io, "DropRoleStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropRoleStmt)
    hasfield(DropRoleStmt, :type) && true && @assert x.type == T_DropRoleStmt "x.type is $(x.type), but expected to be T_DropRoleStmt"
    children = []
    push!(children, FieldNameAndValuePair("roles", x.roles))

    return children
end
function convert_to_node_type(::Val{T_LockStmt})
    return LockStmt
end
function AbstractTrees.printnode(io::IO, x::LockStmt)
    hasfield(LockStmt, :type) && true && @assert x.type == T_LockStmt "x.type is $(x.type), but expected to be T_LockStmt"
    Base.print(io, "LockStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "mode")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.mode))
    true && Base.print(io, ", ")
    Base.print(io, "nowait")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nowait))

    Base.print(io, ")")
end

function AbstractTrees.children(x::LockStmt)
    hasfield(LockStmt, :type) && true && @assert x.type == T_LockStmt "x.type is $(x.type), but expected to be T_LockStmt"
    children = []
    push!(children, FieldNameAndValuePair("relations", x.relations))

    return children
end
function convert_to_node_type(::Val{T_ConstraintsSetStmt})
    return ConstraintsSetStmt
end
function AbstractTrees.printnode(io::IO, x::ConstraintsSetStmt)
    hasfield(ConstraintsSetStmt, :type) && true && @assert x.type == T_ConstraintsSetStmt "x.type is $(x.type), but expected to be T_ConstraintsSetStmt"
    Base.print(io, "ConstraintsSetStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "deferred")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.deferred))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ConstraintsSetStmt)
    hasfield(ConstraintsSetStmt, :type) && true && @assert x.type == T_ConstraintsSetStmt "x.type is $(x.type), but expected to be T_ConstraintsSetStmt"
    children = []
    push!(children, FieldNameAndValuePair("constraints", x.constraints))

    return children
end
function convert_to_node_type(::Val{T_ReindexStmt})
    return ReindexStmt
end
function AbstractTrees.printnode(io::IO, x::ReindexStmt)
    hasfield(ReindexStmt, :type) && true && @assert x.type == T_ReindexStmt "x.type is $(x.type), but expected to be T_ReindexStmt"
    Base.print(io, "ReindexStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "options")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.options))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ReindexStmt)
    hasfield(ReindexStmt, :type) && true && @assert x.type == T_ReindexStmt "x.type is $(x.type), but expected to be T_ReindexStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("relation", x.relation))

    return children
end
function convert_to_node_type(::Val{T_CheckPointStmt})
    return CheckPointStmt
end
function AbstractTrees.printnode(io::IO, x::CheckPointStmt)
    hasfield(CheckPointStmt, :type) && true && @assert x.type == T_CheckPointStmt "x.type is $(x.type), but expected to be T_CheckPointStmt"
    Base.print(io, "CheckPointStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::CheckPointStmt)
    hasfield(CheckPointStmt, :type) && true && @assert x.type == T_CheckPointStmt "x.type is $(x.type), but expected to be T_CheckPointStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_CreateSchemaStmt})
    return CreateSchemaStmt
end
function AbstractTrees.printnode(io::IO, x::CreateSchemaStmt)
    hasfield(CreateSchemaStmt, :type) && true && @assert x.type == T_CreateSchemaStmt "x.type is $(x.type), but expected to be T_CreateSchemaStmt"
    Base.print(io, "CreateSchemaStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "schemaname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.schemaname))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateSchemaStmt)
    hasfield(CreateSchemaStmt, :type) && true && @assert x.type == T_CreateSchemaStmt "x.type is $(x.type), but expected to be T_CreateSchemaStmt"
    children = []
    push!(children, FieldNameAndValuePair("authrole", x.authrole))
    push!(children, FieldNameAndValuePair("schemaElts", x.schemaElts))

    return children
end
function convert_to_node_type(::Val{T_AlterDatabaseStmt})
    return AlterDatabaseStmt
end
function AbstractTrees.printnode(io::IO, x::AlterDatabaseStmt)
    hasfield(AlterDatabaseStmt, :type) && true && @assert x.type == T_AlterDatabaseStmt "x.type is $(x.type), but expected to be T_AlterDatabaseStmt"
    Base.print(io, "AlterDatabaseStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "dbname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dbname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterDatabaseStmt)
    hasfield(AlterDatabaseStmt, :type) && true && @assert x.type == T_AlterDatabaseStmt "x.type is $(x.type), but expected to be T_AlterDatabaseStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterDatabaseSetStmt})
    return AlterDatabaseSetStmt
end
function AbstractTrees.printnode(io::IO, x::AlterDatabaseSetStmt)
    hasfield(AlterDatabaseSetStmt, :type) && true && @assert x.type == T_AlterDatabaseSetStmt "x.type is $(x.type), but expected to be T_AlterDatabaseSetStmt"
    Base.print(io, "AlterDatabaseSetStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "dbname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.dbname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterDatabaseSetStmt)
    hasfield(AlterDatabaseSetStmt, :type) && true && @assert x.type == T_AlterDatabaseSetStmt "x.type is $(x.type), but expected to be T_AlterDatabaseSetStmt"
    children = []
    push!(children, FieldNameAndValuePair("setstmt", x.setstmt))

    return children
end
function convert_to_node_type(::Val{T_AlterRoleSetStmt})
    return AlterRoleSetStmt
end
function AbstractTrees.printnode(io::IO, x::AlterRoleSetStmt)
    hasfield(AlterRoleSetStmt, :type) && true && @assert x.type == T_AlterRoleSetStmt "x.type is $(x.type), but expected to be T_AlterRoleSetStmt"
    Base.print(io, "AlterRoleSetStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "database")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.database))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterRoleSetStmt)
    hasfield(AlterRoleSetStmt, :type) && true && @assert x.type == T_AlterRoleSetStmt "x.type is $(x.type), but expected to be T_AlterRoleSetStmt"
    children = []
    push!(children, FieldNameAndValuePair("role", x.role))
    push!(children, FieldNameAndValuePair("setstmt", x.setstmt))

    return children
end
function convert_to_node_type(::Val{T_CreateConversionStmt})
    return CreateConversionStmt
end
function AbstractTrees.printnode(io::IO, x::CreateConversionStmt)
    hasfield(CreateConversionStmt, :type) && true && @assert x.type == T_CreateConversionStmt "x.type is $(x.type), but expected to be T_CreateConversionStmt"
    Base.print(io, "CreateConversionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "for_encoding_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_encoding_name))
    true && Base.print(io, ", ")
    Base.print(io, "to_encoding_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.to_encoding_name))
    true && Base.print(io, ", ")
    Base.print(io, "def")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.def))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateConversionStmt)
    hasfield(CreateConversionStmt, :type) && true && @assert x.type == T_CreateConversionStmt "x.type is $(x.type), but expected to be T_CreateConversionStmt"
    children = []
    push!(children, FieldNameAndValuePair("conversion_name", x.conversion_name))
    push!(children, FieldNameAndValuePair("func_name", x.func_name))

    return children
end
function convert_to_node_type(::Val{T_CreateCastStmt})
    return CreateCastStmt
end
function AbstractTrees.printnode(io::IO, x::CreateCastStmt)
    hasfield(CreateCastStmt, :type) && true && @assert x.type == T_CreateCastStmt "x.type is $(x.type), but expected to be T_CreateCastStmt"
    Base.print(io, "CreateCastStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "inout")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inout))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateCastStmt)
    hasfield(CreateCastStmt, :type) && true && @assert x.type == T_CreateCastStmt "x.type is $(x.type), but expected to be T_CreateCastStmt"
    children = []
    push!(children, FieldNameAndValuePair("sourcetype", x.sourcetype))
    push!(children, FieldNameAndValuePair("targettype", x.targettype))
    push!(children, FieldNameAndValuePair("func", x.func))
    push!(children, FieldNameAndValuePair("context", x.context))

    return children
end
function convert_to_node_type(::Val{T_CreateOpClassStmt})
    return CreateOpClassStmt
end
function AbstractTrees.printnode(io::IO, x::CreateOpClassStmt)
    hasfield(CreateOpClassStmt, :type) && true && @assert x.type == T_CreateOpClassStmt "x.type is $(x.type), but expected to be T_CreateOpClassStmt"
    Base.print(io, "CreateOpClassStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "amname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amname))
    true && Base.print(io, ", ")
    Base.print(io, "isDefault")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isDefault))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateOpClassStmt)
    hasfield(CreateOpClassStmt, :type) && true && @assert x.type == T_CreateOpClassStmt "x.type is $(x.type), but expected to be T_CreateOpClassStmt"
    children = []
    push!(children, FieldNameAndValuePair("opclassname", x.opclassname))
    push!(children, FieldNameAndValuePair("opfamilyname", x.opfamilyname))
    push!(children, FieldNameAndValuePair("datatype", x.datatype))
    push!(children, FieldNameAndValuePair("items", x.items))

    return children
end
function convert_to_node_type(::Val{T_CreateOpFamilyStmt})
    return CreateOpFamilyStmt
end
function AbstractTrees.printnode(io::IO, x::CreateOpFamilyStmt)
    hasfield(CreateOpFamilyStmt, :type) && true && @assert x.type == T_CreateOpFamilyStmt "x.type is $(x.type), but expected to be T_CreateOpFamilyStmt"
    Base.print(io, "CreateOpFamilyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "amname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateOpFamilyStmt)
    hasfield(CreateOpFamilyStmt, :type) && true && @assert x.type == T_CreateOpFamilyStmt "x.type is $(x.type), but expected to be T_CreateOpFamilyStmt"
    children = []
    push!(children, FieldNameAndValuePair("opfamilyname", x.opfamilyname))

    return children
end
function convert_to_node_type(::Val{T_AlterOpFamilyStmt})
    return AlterOpFamilyStmt
end
function AbstractTrees.printnode(io::IO, x::AlterOpFamilyStmt)
    hasfield(AlterOpFamilyStmt, :type) && true && @assert x.type == T_AlterOpFamilyStmt "x.type is $(x.type), but expected to be T_AlterOpFamilyStmt"
    Base.print(io, "AlterOpFamilyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "amname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amname))
    true && Base.print(io, ", ")
    Base.print(io, "isDrop")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isDrop))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterOpFamilyStmt)
    hasfield(AlterOpFamilyStmt, :type) && true && @assert x.type == T_AlterOpFamilyStmt "x.type is $(x.type), but expected to be T_AlterOpFamilyStmt"
    children = []
    push!(children, FieldNameAndValuePair("opfamilyname", x.opfamilyname))
    push!(children, FieldNameAndValuePair("items", x.items))

    return children
end
function convert_to_node_type(::Val{T_PrepareStmt})
    return PrepareStmt
end
function AbstractTrees.printnode(io::IO, x::PrepareStmt)
    hasfield(PrepareStmt, :type) && true && @assert x.type == T_PrepareStmt "x.type is $(x.type), but expected to be T_PrepareStmt"
    Base.print(io, "PrepareStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PrepareStmt)
    hasfield(PrepareStmt, :type) && true && @assert x.type == T_PrepareStmt "x.type is $(x.type), but expected to be T_PrepareStmt"
    children = []
    push!(children, FieldNameAndValuePair("argtypes", x.argtypes))
    push!(children, FieldNameAndValuePair("query", x.query))

    return children
end
function convert_to_node_type(::Val{T_ExecuteStmt})
    return ExecuteStmt
end
function AbstractTrees.printnode(io::IO, x::ExecuteStmt)
    hasfield(ExecuteStmt, :type) && true && @assert x.type == T_ExecuteStmt "x.type is $(x.type), but expected to be T_ExecuteStmt"
    Base.print(io, "ExecuteStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ExecuteStmt)
    hasfield(ExecuteStmt, :type) && true && @assert x.type == T_ExecuteStmt "x.type is $(x.type), but expected to be T_ExecuteStmt"
    children = []
    push!(children, FieldNameAndValuePair("params", x.params))

    return children
end
function convert_to_node_type(::Val{T_DeallocateStmt})
    return DeallocateStmt
end
function AbstractTrees.printnode(io::IO, x::DeallocateStmt)
    hasfield(DeallocateStmt, :type) && true && @assert x.type == T_DeallocateStmt "x.type is $(x.type), but expected to be T_DeallocateStmt"
    Base.print(io, "DeallocateStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DeallocateStmt)
    hasfield(DeallocateStmt, :type) && true && @assert x.type == T_DeallocateStmt "x.type is $(x.type), but expected to be T_DeallocateStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_DeclareCursorStmt})
    return DeclareCursorStmt
end
function AbstractTrees.printnode(io::IO, x::DeclareCursorStmt)
    hasfield(DeclareCursorStmt, :type) && true && @assert x.type == T_DeclareCursorStmt "x.type is $(x.type), but expected to be T_DeclareCursorStmt"
    Base.print(io, "DeclareCursorStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "portalname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.portalname))
    true && Base.print(io, ", ")
    Base.print(io, "options")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.options))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DeclareCursorStmt)
    hasfield(DeclareCursorStmt, :type) && true && @assert x.type == T_DeclareCursorStmt "x.type is $(x.type), but expected to be T_DeclareCursorStmt"
    children = []
    push!(children, FieldNameAndValuePair("query", x.query))

    return children
end
function convert_to_node_type(::Val{T_CreateTableSpaceStmt})
    return CreateTableSpaceStmt
end
function AbstractTrees.printnode(io::IO, x::CreateTableSpaceStmt)
    hasfield(CreateTableSpaceStmt, :type) && true && @assert x.type == T_CreateTableSpaceStmt "x.type is $(x.type), but expected to be T_CreateTableSpaceStmt"
    Base.print(io, "CreateTableSpaceStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateTableSpaceStmt)
    hasfield(CreateTableSpaceStmt, :type) && true && @assert x.type == T_CreateTableSpaceStmt "x.type is $(x.type), but expected to be T_CreateTableSpaceStmt"
    children = []
    push!(children, FieldNameAndValuePair("owner", x.owner))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropTableSpaceStmt})
    return DropTableSpaceStmt
end
function AbstractTrees.printnode(io::IO, x::DropTableSpaceStmt)
    hasfield(DropTableSpaceStmt, :type) && true && @assert x.type == T_DropTableSpaceStmt "x.type is $(x.type), but expected to be T_DropTableSpaceStmt"
    Base.print(io, "DropTableSpaceStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropTableSpaceStmt)
    hasfield(DropTableSpaceStmt, :type) && true && @assert x.type == T_DropTableSpaceStmt "x.type is $(x.type), but expected to be T_DropTableSpaceStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_AlterObjectDependsStmt})
    return AlterObjectDependsStmt
end
function AbstractTrees.printnode(io::IO, x::AlterObjectDependsStmt)
    hasfield(AlterObjectDependsStmt, :type) && true && @assert x.type == T_AlterObjectDependsStmt "x.type is $(x.type), but expected to be T_AlterObjectDependsStmt"
    Base.print(io, "AlterObjectDependsStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterObjectDependsStmt)
    hasfield(AlterObjectDependsStmt, :type) && true && @assert x.type == T_AlterObjectDependsStmt "x.type is $(x.type), but expected to be T_AlterObjectDependsStmt"
    children = []
    push!(children, FieldNameAndValuePair("objectType", x.objectType))
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("object", x.object))
    push!(children, FieldNameAndValuePair("extname", x.extname))

    return children
end
function convert_to_node_type(::Val{T_AlterObjectSchemaStmt})
    return AlterObjectSchemaStmt
end
function AbstractTrees.printnode(io::IO, x::AlterObjectSchemaStmt)
    hasfield(AlterObjectSchemaStmt, :type) && true && @assert x.type == T_AlterObjectSchemaStmt "x.type is $(x.type), but expected to be T_AlterObjectSchemaStmt"
    Base.print(io, "AlterObjectSchemaStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "newschema")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.newschema))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterObjectSchemaStmt)
    hasfield(AlterObjectSchemaStmt, :type) && true && @assert x.type == T_AlterObjectSchemaStmt "x.type is $(x.type), but expected to be T_AlterObjectSchemaStmt"
    children = []
    push!(children, FieldNameAndValuePair("objectType", x.objectType))
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("object", x.object))

    return children
end
function convert_to_node_type(::Val{T_AlterOwnerStmt})
    return AlterOwnerStmt
end
function AbstractTrees.printnode(io::IO, x::AlterOwnerStmt)
    hasfield(AlterOwnerStmt, :type) && true && @assert x.type == T_AlterOwnerStmt "x.type is $(x.type), but expected to be T_AlterOwnerStmt"
    Base.print(io, "AlterOwnerStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterOwnerStmt)
    hasfield(AlterOwnerStmt, :type) && true && @assert x.type == T_AlterOwnerStmt "x.type is $(x.type), but expected to be T_AlterOwnerStmt"
    children = []
    push!(children, FieldNameAndValuePair("objectType", x.objectType))
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("object", x.object))
    push!(children, FieldNameAndValuePair("newowner", x.newowner))

    return children
end
function convert_to_node_type(::Val{T_AlterOperatorStmt})
    return AlterOperatorStmt
end
function AbstractTrees.printnode(io::IO, x::AlterOperatorStmt)
    hasfield(AlterOperatorStmt, :type) && true && @assert x.type == T_AlterOperatorStmt "x.type is $(x.type), but expected to be T_AlterOperatorStmt"
    Base.print(io, "AlterOperatorStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterOperatorStmt)
    hasfield(AlterOperatorStmt, :type) && true && @assert x.type == T_AlterOperatorStmt "x.type is $(x.type), but expected to be T_AlterOperatorStmt"
    children = []
    push!(children, FieldNameAndValuePair("opername", x.opername))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropOwnedStmt})
    return DropOwnedStmt
end
function AbstractTrees.printnode(io::IO, x::DropOwnedStmt)
    hasfield(DropOwnedStmt, :type) && true && @assert x.type == T_DropOwnedStmt "x.type is $(x.type), but expected to be T_DropOwnedStmt"
    Base.print(io, "DropOwnedStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropOwnedStmt)
    hasfield(DropOwnedStmt, :type) && true && @assert x.type == T_DropOwnedStmt "x.type is $(x.type), but expected to be T_DropOwnedStmt"
    children = []
    push!(children, FieldNameAndValuePair("roles", x.roles))
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_ReassignOwnedStmt})
    return ReassignOwnedStmt
end
function AbstractTrees.printnode(io::IO, x::ReassignOwnedStmt)
    hasfield(ReassignOwnedStmt, :type) && true && @assert x.type == T_ReassignOwnedStmt "x.type is $(x.type), but expected to be T_ReassignOwnedStmt"
    Base.print(io, "ReassignOwnedStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::ReassignOwnedStmt)
    hasfield(ReassignOwnedStmt, :type) && true && @assert x.type == T_ReassignOwnedStmt "x.type is $(x.type), but expected to be T_ReassignOwnedStmt"
    children = []
    push!(children, FieldNameAndValuePair("roles", x.roles))
    push!(children, FieldNameAndValuePair("newrole", x.newrole))

    return children
end
function convert_to_node_type(::Val{T_CompositeTypeStmt})
    return CompositeTypeStmt
end
function AbstractTrees.printnode(io::IO, x::CompositeTypeStmt)
    hasfield(CompositeTypeStmt, :type) && true && @assert x.type == T_CompositeTypeStmt "x.type is $(x.type), but expected to be T_CompositeTypeStmt"
    Base.print(io, "CompositeTypeStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::CompositeTypeStmt)
    hasfield(CompositeTypeStmt, :type) && true && @assert x.type == T_CompositeTypeStmt "x.type is $(x.type), but expected to be T_CompositeTypeStmt"
    children = []
    push!(children, FieldNameAndValuePair("typevar", x.typevar))
    push!(children, FieldNameAndValuePair("coldeflist", x.coldeflist))

    return children
end
function convert_to_node_type(::Val{T_CreateEnumStmt})
    return CreateEnumStmt
end
function AbstractTrees.printnode(io::IO, x::CreateEnumStmt)
    hasfield(CreateEnumStmt, :type) && true && @assert x.type == T_CreateEnumStmt "x.type is $(x.type), but expected to be T_CreateEnumStmt"
    Base.print(io, "CreateEnumStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateEnumStmt)
    hasfield(CreateEnumStmt, :type) && true && @assert x.type == T_CreateEnumStmt "x.type is $(x.type), but expected to be T_CreateEnumStmt"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("vals", x.vals))

    return children
end
function convert_to_node_type(::Val{T_CreateRangeStmt})
    return CreateRangeStmt
end
function AbstractTrees.printnode(io::IO, x::CreateRangeStmt)
    hasfield(CreateRangeStmt, :type) && true && @assert x.type == T_CreateRangeStmt "x.type is $(x.type), but expected to be T_CreateRangeStmt"
    Base.print(io, "CreateRangeStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateRangeStmt)
    hasfield(CreateRangeStmt, :type) && true && @assert x.type == T_CreateRangeStmt "x.type is $(x.type), but expected to be T_CreateRangeStmt"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("params", x.params))

    return children
end
function convert_to_node_type(::Val{T_AlterEnumStmt})
    return AlterEnumStmt
end
function AbstractTrees.printnode(io::IO, x::AlterEnumStmt)
    hasfield(AlterEnumStmt, :type) && true && @assert x.type == T_AlterEnumStmt "x.type is $(x.type), but expected to be T_AlterEnumStmt"
    Base.print(io, "AlterEnumStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "oldVal")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.oldVal))
    true && Base.print(io, ", ")
    Base.print(io, "newVal")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.newVal))
    true && Base.print(io, ", ")
    Base.print(io, "newValNeighbor")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.newValNeighbor))
    true && Base.print(io, ", ")
    Base.print(io, "newValIsAfter")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.newValIsAfter))
    true && Base.print(io, ", ")
    Base.print(io, "skipIfNewValExists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skipIfNewValExists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterEnumStmt)
    hasfield(AlterEnumStmt, :type) && true && @assert x.type == T_AlterEnumStmt "x.type is $(x.type), but expected to be T_AlterEnumStmt"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))

    return children
end
function convert_to_node_type(::Val{T_AlterTSDictionaryStmt})
    return AlterTSDictionaryStmt
end
function AbstractTrees.printnode(io::IO, x::AlterTSDictionaryStmt)
    hasfield(AlterTSDictionaryStmt, :type) && true && @assert x.type == T_AlterTSDictionaryStmt "x.type is $(x.type), but expected to be T_AlterTSDictionaryStmt"
    Base.print(io, "AlterTSDictionaryStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTSDictionaryStmt)
    hasfield(AlterTSDictionaryStmt, :type) && true && @assert x.type == T_AlterTSDictionaryStmt "x.type is $(x.type), but expected to be T_AlterTSDictionaryStmt"
    children = []
    push!(children, FieldNameAndValuePair("dictname", x.dictname))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterTSConfigurationStmt})
    return AlterTSConfigurationStmt
end
function AbstractTrees.printnode(io::IO, x::AlterTSConfigurationStmt)
    hasfield(AlterTSConfigurationStmt, :type) && true && @assert x.type == T_AlterTSConfigurationStmt "x.type is $(x.type), but expected to be T_AlterTSConfigurationStmt"
    Base.print(io, "AlterTSConfigurationStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "override")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.override))
    true && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTSConfigurationStmt)
    hasfield(AlterTSConfigurationStmt, :type) && true && @assert x.type == T_AlterTSConfigurationStmt "x.type is $(x.type), but expected to be T_AlterTSConfigurationStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("cfgname", x.cfgname))
    push!(children, FieldNameAndValuePair("tokentype", x.tokentype))
    push!(children, FieldNameAndValuePair("dicts", x.dicts))

    return children
end
function convert_to_node_type(::Val{T_CreateFdwStmt})
    return CreateFdwStmt
end
function AbstractTrees.printnode(io::IO, x::CreateFdwStmt)
    hasfield(CreateFdwStmt, :type) && true && @assert x.type == T_CreateFdwStmt "x.type is $(x.type), but expected to be T_CreateFdwStmt"
    Base.print(io, "CreateFdwStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "fdwname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fdwname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateFdwStmt)
    hasfield(CreateFdwStmt, :type) && true && @assert x.type == T_CreateFdwStmt "x.type is $(x.type), but expected to be T_CreateFdwStmt"
    children = []
    push!(children, FieldNameAndValuePair("func_options", x.func_options))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterFdwStmt})
    return AlterFdwStmt
end
function AbstractTrees.printnode(io::IO, x::AlterFdwStmt)
    hasfield(AlterFdwStmt, :type) && true && @assert x.type == T_AlterFdwStmt "x.type is $(x.type), but expected to be T_AlterFdwStmt"
    Base.print(io, "AlterFdwStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "fdwname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fdwname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterFdwStmt)
    hasfield(AlterFdwStmt, :type) && true && @assert x.type == T_AlterFdwStmt "x.type is $(x.type), but expected to be T_AlterFdwStmt"
    children = []
    push!(children, FieldNameAndValuePair("func_options", x.func_options))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_CreateForeignServerStmt})
    return CreateForeignServerStmt
end
function AbstractTrees.printnode(io::IO, x::CreateForeignServerStmt)
    hasfield(CreateForeignServerStmt, :type) && true && @assert x.type == T_CreateForeignServerStmt "x.type is $(x.type), but expected to be T_CreateForeignServerStmt"
    Base.print(io, "CreateForeignServerStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))
    true && Base.print(io, ", ")
    Base.print(io, "servertype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servertype))
    true && Base.print(io, ", ")
    Base.print(io, "version")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.version))
    true && Base.print(io, ", ")
    Base.print(io, "fdwname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fdwname))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateForeignServerStmt)
    hasfield(CreateForeignServerStmt, :type) && true && @assert x.type == T_CreateForeignServerStmt "x.type is $(x.type), but expected to be T_CreateForeignServerStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterForeignServerStmt})
    return AlterForeignServerStmt
end
function AbstractTrees.printnode(io::IO, x::AlterForeignServerStmt)
    hasfield(AlterForeignServerStmt, :type) && true && @assert x.type == T_AlterForeignServerStmt "x.type is $(x.type), but expected to be T_AlterForeignServerStmt"
    Base.print(io, "AlterForeignServerStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))
    true && Base.print(io, ", ")
    Base.print(io, "version")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.version))
    true && Base.print(io, ", ")
    Base.print(io, "has_version")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.has_version))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterForeignServerStmt)
    hasfield(AlterForeignServerStmt, :type) && true && @assert x.type == T_AlterForeignServerStmt "x.type is $(x.type), but expected to be T_AlterForeignServerStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_CreateUserMappingStmt})
    return CreateUserMappingStmt
end
function AbstractTrees.printnode(io::IO, x::CreateUserMappingStmt)
    hasfield(CreateUserMappingStmt, :type) && true && @assert x.type == T_CreateUserMappingStmt "x.type is $(x.type), but expected to be T_CreateUserMappingStmt"
    Base.print(io, "CreateUserMappingStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateUserMappingStmt)
    hasfield(CreateUserMappingStmt, :type) && true && @assert x.type == T_CreateUserMappingStmt "x.type is $(x.type), but expected to be T_CreateUserMappingStmt"
    children = []
    push!(children, FieldNameAndValuePair("user", x.user))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterUserMappingStmt})
    return AlterUserMappingStmt
end
function AbstractTrees.printnode(io::IO, x::AlterUserMappingStmt)
    hasfield(AlterUserMappingStmt, :type) && true && @assert x.type == T_AlterUserMappingStmt "x.type is $(x.type), but expected to be T_AlterUserMappingStmt"
    Base.print(io, "AlterUserMappingStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterUserMappingStmt)
    hasfield(AlterUserMappingStmt, :type) && true && @assert x.type == T_AlterUserMappingStmt "x.type is $(x.type), but expected to be T_AlterUserMappingStmt"
    children = []
    push!(children, FieldNameAndValuePair("user", x.user))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropUserMappingStmt})
    return DropUserMappingStmt
end
function AbstractTrees.printnode(io::IO, x::DropUserMappingStmt)
    hasfield(DropUserMappingStmt, :type) && true && @assert x.type == T_DropUserMappingStmt "x.type is $(x.type), but expected to be T_DropUserMappingStmt"
    Base.print(io, "DropUserMappingStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropUserMappingStmt)
    hasfield(DropUserMappingStmt, :type) && true && @assert x.type == T_DropUserMappingStmt "x.type is $(x.type), but expected to be T_DropUserMappingStmt"
    children = []
    push!(children, FieldNameAndValuePair("user", x.user))

    return children
end
function convert_to_node_type(::Val{T_AlterTableSpaceOptionsStmt})
    return AlterTableSpaceOptionsStmt
end
function AbstractTrees.printnode(io::IO, x::AlterTableSpaceOptionsStmt)
    hasfield(AlterTableSpaceOptionsStmt, :type) && true && @assert x.type == T_AlterTableSpaceOptionsStmt "x.type is $(x.type), but expected to be T_AlterTableSpaceOptionsStmt"
    Base.print(io, "AlterTableSpaceOptionsStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "isReset")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isReset))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTableSpaceOptionsStmt)
    hasfield(AlterTableSpaceOptionsStmt, :type) && true && @assert x.type == T_AlterTableSpaceOptionsStmt "x.type is $(x.type), but expected to be T_AlterTableSpaceOptionsStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterTableMoveAllStmt})
    return AlterTableMoveAllStmt
end
function AbstractTrees.printnode(io::IO, x::AlterTableMoveAllStmt)
    hasfield(AlterTableMoveAllStmt, :type) && true && @assert x.type == T_AlterTableMoveAllStmt "x.type is $(x.type), but expected to be T_AlterTableMoveAllStmt"
    Base.print(io, "AlterTableMoveAllStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "orig_tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.orig_tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "new_tablespacename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.new_tablespacename))
    true && Base.print(io, ", ")
    Base.print(io, "nowait")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nowait))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterTableMoveAllStmt)
    hasfield(AlterTableMoveAllStmt, :type) && true && @assert x.type == T_AlterTableMoveAllStmt "x.type is $(x.type), but expected to be T_AlterTableMoveAllStmt"
    children = []
    push!(children, FieldNameAndValuePair("objtype", x.objtype))
    push!(children, FieldNameAndValuePair("roles", x.roles))

    return children
end
function convert_to_node_type(::Val{T_SecLabelStmt})
    return SecLabelStmt
end
function AbstractTrees.printnode(io::IO, x::SecLabelStmt)
    hasfield(SecLabelStmt, :type) && true && @assert x.type == T_SecLabelStmt "x.type is $(x.type), but expected to be T_SecLabelStmt"
    Base.print(io, "SecLabelStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "provider")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.provider))
    true && Base.print(io, ", ")
    Base.print(io, "label")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.label))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SecLabelStmt)
    hasfield(SecLabelStmt, :type) && true && @assert x.type == T_SecLabelStmt "x.type is $(x.type), but expected to be T_SecLabelStmt"
    children = []
    push!(children, FieldNameAndValuePair("objtype", x.objtype))
    push!(children, FieldNameAndValuePair("object", x.object))

    return children
end
function convert_to_node_type(::Val{T_CreateForeignTableStmt})
    return CreateForeignTableStmt
end
function AbstractTrees.printnode(io::IO, x::CreateForeignTableStmt)
    hasfield(CreateForeignTableStmt, :type) && true && @assert x.type == T_CreateForeignTableStmt "x.type is $(x.type), but expected to be T_CreateForeignTableStmt"
    Base.print(io, "CreateForeignTableStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "servername")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.servername))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateForeignTableStmt)
    hasfield(CreateForeignTableStmt, :type) && true && @assert x.type == T_CreateForeignTableStmt "x.type is $(x.type), but expected to be T_CreateForeignTableStmt"
    children = []
    push!(children, FieldNameAndValuePair("base", x.base))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_ImportForeignSchemaStmt})
    return ImportForeignSchemaStmt
end
function AbstractTrees.printnode(io::IO, x::ImportForeignSchemaStmt)
    hasfield(ImportForeignSchemaStmt, :type) && true && @assert x.type == T_ImportForeignSchemaStmt "x.type is $(x.type), but expected to be T_ImportForeignSchemaStmt"
    Base.print(io, "ImportForeignSchemaStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "server_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.server_name))
    true && Base.print(io, ", ")
    Base.print(io, "remote_schema")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.remote_schema))
    true && Base.print(io, ", ")
    Base.print(io, "local_schema")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.local_schema))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ImportForeignSchemaStmt)
    hasfield(ImportForeignSchemaStmt, :type) && true && @assert x.type == T_ImportForeignSchemaStmt "x.type is $(x.type), but expected to be T_ImportForeignSchemaStmt"
    children = []
    push!(children, FieldNameAndValuePair("list_type", x.list_type))
    push!(children, FieldNameAndValuePair("table_list", x.table_list))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_CreateExtensionStmt})
    return CreateExtensionStmt
end
function AbstractTrees.printnode(io::IO, x::CreateExtensionStmt)
    hasfield(CreateExtensionStmt, :type) && true && @assert x.type == T_CreateExtensionStmt "x.type is $(x.type), but expected to be T_CreateExtensionStmt"
    Base.print(io, "CreateExtensionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "extname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.extname))
    true && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateExtensionStmt)
    hasfield(CreateExtensionStmt, :type) && true && @assert x.type == T_CreateExtensionStmt "x.type is $(x.type), but expected to be T_CreateExtensionStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterExtensionStmt})
    return AlterExtensionStmt
end
function AbstractTrees.printnode(io::IO, x::AlterExtensionStmt)
    hasfield(AlterExtensionStmt, :type) && true && @assert x.type == T_AlterExtensionStmt "x.type is $(x.type), but expected to be T_AlterExtensionStmt"
    Base.print(io, "AlterExtensionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "extname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.extname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterExtensionStmt)
    hasfield(AlterExtensionStmt, :type) && true && @assert x.type == T_AlterExtensionStmt "x.type is $(x.type), but expected to be T_AlterExtensionStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterExtensionContentsStmt})
    return AlterExtensionContentsStmt
end
function AbstractTrees.printnode(io::IO, x::AlterExtensionContentsStmt)
    hasfield(AlterExtensionContentsStmt, :type) && true && @assert x.type == T_AlterExtensionContentsStmt "x.type is $(x.type), but expected to be T_AlterExtensionContentsStmt"
    Base.print(io, "AlterExtensionContentsStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "extname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.extname))
    true && Base.print(io, ", ")
    Base.print(io, "action")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.action))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterExtensionContentsStmt)
    hasfield(AlterExtensionContentsStmt, :type) && true && @assert x.type == T_AlterExtensionContentsStmt "x.type is $(x.type), but expected to be T_AlterExtensionContentsStmt"
    children = []
    push!(children, FieldNameAndValuePair("objtype", x.objtype))
    push!(children, FieldNameAndValuePair("object", x.object))

    return children
end
function convert_to_node_type(::Val{T_CreateEventTrigStmt})
    return CreateEventTrigStmt
end
function AbstractTrees.printnode(io::IO, x::CreateEventTrigStmt)
    hasfield(CreateEventTrigStmt, :type) && true && @assert x.type == T_CreateEventTrigStmt "x.type is $(x.type), but expected to be T_CreateEventTrigStmt"
    Base.print(io, "CreateEventTrigStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "trigname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.trigname))
    true && Base.print(io, ", ")
    Base.print(io, "eventname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.eventname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateEventTrigStmt)
    hasfield(CreateEventTrigStmt, :type) && true && @assert x.type == T_CreateEventTrigStmt "x.type is $(x.type), but expected to be T_CreateEventTrigStmt"
    children = []
    push!(children, FieldNameAndValuePair("whenclause", x.whenclause))
    push!(children, FieldNameAndValuePair("funcname", x.funcname))

    return children
end
function convert_to_node_type(::Val{T_AlterEventTrigStmt})
    return AlterEventTrigStmt
end
function AbstractTrees.printnode(io::IO, x::AlterEventTrigStmt)
    hasfield(AlterEventTrigStmt, :type) && true && @assert x.type == T_AlterEventTrigStmt "x.type is $(x.type), but expected to be T_AlterEventTrigStmt"
    Base.print(io, "AlterEventTrigStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "trigname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.trigname))
    true && Base.print(io, ", ")
    Base.print(io, "tgenabled")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tgenabled))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterEventTrigStmt)
    hasfield(AlterEventTrigStmt, :type) && true && @assert x.type == T_AlterEventTrigStmt "x.type is $(x.type), but expected to be T_AlterEventTrigStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_RefreshMatViewStmt})
    return RefreshMatViewStmt
end
function AbstractTrees.printnode(io::IO, x::RefreshMatViewStmt)
    hasfield(RefreshMatViewStmt, :type) && true && @assert x.type == T_RefreshMatViewStmt "x.type is $(x.type), but expected to be T_RefreshMatViewStmt"
    Base.print(io, "RefreshMatViewStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "concurrent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.concurrent))
    true && Base.print(io, ", ")
    Base.print(io, "skipData")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skipData))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RefreshMatViewStmt)
    hasfield(RefreshMatViewStmt, :type) && true && @assert x.type == T_RefreshMatViewStmt "x.type is $(x.type), but expected to be T_RefreshMatViewStmt"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))

    return children
end
function convert_to_node_type(::Val{T_ReplicaIdentityStmt})
    return ReplicaIdentityStmt
end
function AbstractTrees.printnode(io::IO, x::ReplicaIdentityStmt)
    hasfield(ReplicaIdentityStmt, :type) && true && @assert x.type == T_ReplicaIdentityStmt "x.type is $(x.type), but expected to be T_ReplicaIdentityStmt"
    Base.print(io, "ReplicaIdentityStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "identity_type")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.identity_type))
    true && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ReplicaIdentityStmt)
    hasfield(ReplicaIdentityStmt, :type) && true && @assert x.type == T_ReplicaIdentityStmt "x.type is $(x.type), but expected to be T_ReplicaIdentityStmt"
    children = []

    return children
end
function convert_to_node_type(::Val{T_AlterSystemStmt})
    return AlterSystemStmt
end
function AbstractTrees.printnode(io::IO, x::AlterSystemStmt)
    hasfield(AlterSystemStmt, :type) && true && @assert x.type == T_AlterSystemStmt "x.type is $(x.type), but expected to be T_AlterSystemStmt"
    Base.print(io, "AlterSystemStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterSystemStmt)
    hasfield(AlterSystemStmt, :type) && true && @assert x.type == T_AlterSystemStmt "x.type is $(x.type), but expected to be T_AlterSystemStmt"
    children = []
    push!(children, FieldNameAndValuePair("setstmt", x.setstmt))

    return children
end
function convert_to_node_type(::Val{T_CreatePolicyStmt})
    return CreatePolicyStmt
end
function AbstractTrees.printnode(io::IO, x::CreatePolicyStmt)
    hasfield(CreatePolicyStmt, :type) && true && @assert x.type == T_CreatePolicyStmt "x.type is $(x.type), but expected to be T_CreatePolicyStmt"
    Base.print(io, "CreatePolicyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "policy_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.policy_name))
    true && Base.print(io, ", ")
    Base.print(io, "cmd_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cmd_name))
    true && Base.print(io, ", ")
    Base.print(io, "permissive")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.permissive))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreatePolicyStmt)
    hasfield(CreatePolicyStmt, :type) && true && @assert x.type == T_CreatePolicyStmt "x.type is $(x.type), but expected to be T_CreatePolicyStmt"
    children = []
    push!(children, FieldNameAndValuePair("table", x.table))
    push!(children, FieldNameAndValuePair("roles", x.roles))
    push!(children, FieldNameAndValuePair("qual", x.qual))
    push!(children, FieldNameAndValuePair("with_check", x.with_check))

    return children
end
function convert_to_node_type(::Val{T_AlterPolicyStmt})
    return AlterPolicyStmt
end
function AbstractTrees.printnode(io::IO, x::AlterPolicyStmt)
    hasfield(AlterPolicyStmt, :type) && true && @assert x.type == T_AlterPolicyStmt "x.type is $(x.type), but expected to be T_AlterPolicyStmt"
    Base.print(io, "AlterPolicyStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "policy_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.policy_name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterPolicyStmt)
    hasfield(AlterPolicyStmt, :type) && true && @assert x.type == T_AlterPolicyStmt "x.type is $(x.type), but expected to be T_AlterPolicyStmt"
    children = []
    push!(children, FieldNameAndValuePair("table", x.table))
    push!(children, FieldNameAndValuePair("roles", x.roles))
    push!(children, FieldNameAndValuePair("qual", x.qual))
    push!(children, FieldNameAndValuePair("with_check", x.with_check))

    return children
end
function convert_to_node_type(::Val{T_CreateTransformStmt})
    return CreateTransformStmt
end
function AbstractTrees.printnode(io::IO, x::CreateTransformStmt)
    hasfield(CreateTransformStmt, :type) && true && @assert x.type == T_CreateTransformStmt "x.type is $(x.type), but expected to be T_CreateTransformStmt"
    Base.print(io, "CreateTransformStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "replace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.replace))
    true && Base.print(io, ", ")
    Base.print(io, "lang")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lang))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateTransformStmt)
    hasfield(CreateTransformStmt, :type) && true && @assert x.type == T_CreateTransformStmt "x.type is $(x.type), but expected to be T_CreateTransformStmt"
    children = []
    push!(children, FieldNameAndValuePair("type_name", x.type_name))
    push!(children, FieldNameAndValuePair("fromsql", x.fromsql))
    push!(children, FieldNameAndValuePair("tosql", x.tosql))

    return children
end
function convert_to_node_type(::Val{T_CreateAmStmt})
    return CreateAmStmt
end
function AbstractTrees.printnode(io::IO, x::CreateAmStmt)
    hasfield(CreateAmStmt, :type) && true && @assert x.type == T_CreateAmStmt "x.type is $(x.type), but expected to be T_CreateAmStmt"
    Base.print(io, "CreateAmStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "amname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amname))
    true && Base.print(io, ", ")
    Base.print(io, "amtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.amtype))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateAmStmt)
    hasfield(CreateAmStmt, :type) && true && @assert x.type == T_CreateAmStmt "x.type is $(x.type), but expected to be T_CreateAmStmt"
    children = []
    push!(children, FieldNameAndValuePair("handler_name", x.handler_name))

    return children
end
function convert_to_node_type(::Val{T_CreatePublicationStmt})
    return CreatePublicationStmt
end
function AbstractTrees.printnode(io::IO, x::CreatePublicationStmt)
    hasfield(CreatePublicationStmt, :type) && true && @assert x.type == T_CreatePublicationStmt "x.type is $(x.type), but expected to be T_CreatePublicationStmt"
    Base.print(io, "CreatePublicationStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "pubname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pubname))
    true && Base.print(io, ", ")
    Base.print(io, "for_all_tables")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_all_tables))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreatePublicationStmt)
    hasfield(CreatePublicationStmt, :type) && true && @assert x.type == T_CreatePublicationStmt "x.type is $(x.type), but expected to be T_CreatePublicationStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("tables", x.tables))

    return children
end
function convert_to_node_type(::Val{T_AlterPublicationStmt})
    return AlterPublicationStmt
end
function AbstractTrees.printnode(io::IO, x::AlterPublicationStmt)
    hasfield(AlterPublicationStmt, :type) && true && @assert x.type == T_AlterPublicationStmt "x.type is $(x.type), but expected to be T_AlterPublicationStmt"
    Base.print(io, "AlterPublicationStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "pubname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pubname))
    true && Base.print(io, ", ")
    Base.print(io, "for_all_tables")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_all_tables))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterPublicationStmt)
    hasfield(AlterPublicationStmt, :type) && true && @assert x.type == T_AlterPublicationStmt "x.type is $(x.type), but expected to be T_AlterPublicationStmt"
    children = []
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("tables", x.tables))
    push!(children, FieldNameAndValuePair("tableAction", x.tableAction))

    return children
end
function convert_to_node_type(::Val{T_CreateSubscriptionStmt})
    return CreateSubscriptionStmt
end
function AbstractTrees.printnode(io::IO, x::CreateSubscriptionStmt)
    hasfield(CreateSubscriptionStmt, :type) && true && @assert x.type == T_CreateSubscriptionStmt "x.type is $(x.type), but expected to be T_CreateSubscriptionStmt"
    Base.print(io, "CreateSubscriptionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subname))
    true && Base.print(io, ", ")
    Base.print(io, "conninfo")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conninfo))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateSubscriptionStmt)
    hasfield(CreateSubscriptionStmt, :type) && true && @assert x.type == T_CreateSubscriptionStmt "x.type is $(x.type), but expected to be T_CreateSubscriptionStmt"
    children = []
    push!(children, FieldNameAndValuePair("publication", x.publication))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_AlterSubscriptionStmt})
    return AlterSubscriptionStmt
end
function AbstractTrees.printnode(io::IO, x::AlterSubscriptionStmt)
    hasfield(AlterSubscriptionStmt, :type) && true && @assert x.type == T_AlterSubscriptionStmt "x.type is $(x.type), but expected to be T_AlterSubscriptionStmt"
    Base.print(io, "AlterSubscriptionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subname))
    true && Base.print(io, ", ")
    Base.print(io, "conninfo")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conninfo))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterSubscriptionStmt)
    hasfield(AlterSubscriptionStmt, :type) && true && @assert x.type == T_AlterSubscriptionStmt "x.type is $(x.type), but expected to be T_AlterSubscriptionStmt"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("publication", x.publication))
    push!(children, FieldNameAndValuePair("options", x.options))

    return children
end
function convert_to_node_type(::Val{T_DropSubscriptionStmt})
    return DropSubscriptionStmt
end
function AbstractTrees.printnode(io::IO, x::DropSubscriptionStmt)
    hasfield(DropSubscriptionStmt, :type) && true && @assert x.type == T_DropSubscriptionStmt "x.type is $(x.type), but expected to be T_DropSubscriptionStmt"
    Base.print(io, "DropSubscriptionStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "subname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.subname))
    true && Base.print(io, ", ")
    Base.print(io, "missing_ok")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.missing_ok))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DropSubscriptionStmt)
    hasfield(DropSubscriptionStmt, :type) && true && @assert x.type == T_DropSubscriptionStmt "x.type is $(x.type), but expected to be T_DropSubscriptionStmt"
    children = []
    push!(children, FieldNameAndValuePair("behavior", x.behavior))

    return children
end
function convert_to_node_type(::Val{T_CreateStatsStmt})
    return CreateStatsStmt
end
function AbstractTrees.printnode(io::IO, x::CreateStatsStmt)
    hasfield(CreateStatsStmt, :type) && true && @assert x.type == T_CreateStatsStmt "x.type is $(x.type), but expected to be T_CreateStatsStmt"
    Base.print(io, "CreateStatsStmt")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "if_not_exists")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.if_not_exists))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateStatsStmt)
    hasfield(CreateStatsStmt, :type) && true && @assert x.type == T_CreateStatsStmt "x.type is $(x.type), but expected to be T_CreateStatsStmt"
    children = []
    push!(children, FieldNameAndValuePair("defnames", x.defnames))
    push!(children, FieldNameAndValuePair("stat_types", x.stat_types))
    push!(children, FieldNameAndValuePair("exprs", x.exprs))
    push!(children, FieldNameAndValuePair("relations", x.relations))

    return children
end
function convert_to_node_type(::Val{T_AlterCollationStmt})
    return AlterCollationStmt
end
function AbstractTrees.printnode(io::IO, x::AlterCollationStmt)
    hasfield(AlterCollationStmt, :type) && true && @assert x.type == T_AlterCollationStmt "x.type is $(x.type), but expected to be T_AlterCollationStmt"
    Base.print(io, "AlterCollationStmt")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::AlterCollationStmt)
    hasfield(AlterCollationStmt, :type) && true && @assert x.type == T_AlterCollationStmt "x.type is $(x.type), but expected to be T_AlterCollationStmt"
    children = []
    push!(children, FieldNameAndValuePair("collname", x.collname))

    return children
end
function convert_to_node_type(::Val{T_A_Expr})
    return A_Expr
end
function AbstractTrees.printnode(io::IO, x::A_Expr)
    hasfield(A_Expr, :type) && true && @assert x.type == T_A_Expr "x.type is $(x.type), but expected to be T_A_Expr"
    Base.print(io, "A_Expr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_Expr)
    hasfield(A_Expr, :type) && true && @assert x.type == T_A_Expr "x.type is $(x.type), but expected to be T_A_Expr"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("name", x.name))
    push!(children, FieldNameAndValuePair("lexpr", x.lexpr))
    push!(children, FieldNameAndValuePair("rexpr", x.rexpr))

    return children
end
function convert_to_node_type(::Val{T_ColumnRef})
    return ColumnRef
end
function AbstractTrees.printnode(io::IO, x::ColumnRef)
    hasfield(ColumnRef, :type) && true && @assert x.type == T_ColumnRef "x.type is $(x.type), but expected to be T_ColumnRef"
    Base.print(io, "ColumnRef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ColumnRef)
    hasfield(ColumnRef, :type) && true && @assert x.type == T_ColumnRef "x.type is $(x.type), but expected to be T_ColumnRef"
    children = []
    push!(children, FieldNameAndValuePair("fields", x.fields))

    return children
end
function convert_to_node_type(::Val{T_ParamRef})
    return ParamRef
end
function AbstractTrees.printnode(io::IO, x::ParamRef)
    hasfield(ParamRef, :type) && true && @assert x.type == T_ParamRef "x.type is $(x.type), but expected to be T_ParamRef"
    Base.print(io, "ParamRef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "number")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.number))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ParamRef)
    hasfield(ParamRef, :type) && true && @assert x.type == T_ParamRef "x.type is $(x.type), but expected to be T_ParamRef"
    children = []

    return children
end
function convert_to_node_type(::Val{T_A_Const})
    return A_Const
end
function AbstractTrees.printnode(io::IO, x::A_Const)
    hasfield(A_Const, :type) && true && @assert x.type == T_A_Const "x.type is $(x.type), but expected to be T_A_Const"
    Base.print(io, "A_Const")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_Const)
    hasfield(A_Const, :type) && true && @assert x.type == T_A_Const "x.type is $(x.type), but expected to be T_A_Const"
    children = []
    push!(children, FieldNameAndValuePair("val", x.val))

    return children
end
function convert_to_node_type(::Val{T_FuncCall})
    return FuncCall
end
function AbstractTrees.printnode(io::IO, x::FuncCall)
    hasfield(FuncCall, :type) && true && @assert x.type == T_FuncCall "x.type is $(x.type), but expected to be T_FuncCall"
    Base.print(io, "FuncCall")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "agg_within_group")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.agg_within_group))
    true && Base.print(io, ", ")
    Base.print(io, "agg_star")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.agg_star))
    true && Base.print(io, ", ")
    Base.print(io, "agg_distinct")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.agg_distinct))
    true && Base.print(io, ", ")
    Base.print(io, "func_variadic")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.func_variadic))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FuncCall)
    hasfield(FuncCall, :type) && true && @assert x.type == T_FuncCall "x.type is $(x.type), but expected to be T_FuncCall"
    children = []
    push!(children, FieldNameAndValuePair("funcname", x.funcname))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("agg_order", x.agg_order))
    push!(children, FieldNameAndValuePair("agg_filter", x.agg_filter))
    push!(children, FieldNameAndValuePair("over", x.over))

    return children
end
function convert_to_node_type(::Val{T_A_Star})
    return A_Star
end
function AbstractTrees.printnode(io::IO, x::A_Star)
    hasfield(A_Star, :type) && true && @assert x.type == T_A_Star "x.type is $(x.type), but expected to be T_A_Star"
    Base.print(io, "A_Star")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_Star)
    hasfield(A_Star, :type) && true && @assert x.type == T_A_Star "x.type is $(x.type), but expected to be T_A_Star"
    children = []

    return children
end
function convert_to_node_type(::Val{T_A_Indices})
    return A_Indices
end
function AbstractTrees.printnode(io::IO, x::A_Indices)
    hasfield(A_Indices, :type) && true && @assert x.type == T_A_Indices "x.type is $(x.type), but expected to be T_A_Indices"
    Base.print(io, "A_Indices")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "is_slice")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_slice))

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_Indices)
    hasfield(A_Indices, :type) && true && @assert x.type == T_A_Indices "x.type is $(x.type), but expected to be T_A_Indices"
    children = []
    push!(children, FieldNameAndValuePair("lidx", x.lidx))
    push!(children, FieldNameAndValuePair("uidx", x.uidx))

    return children
end
function convert_to_node_type(::Val{T_A_Indirection})
    return A_Indirection
end
function AbstractTrees.printnode(io::IO, x::A_Indirection)
    hasfield(A_Indirection, :type) && true && @assert x.type == T_A_Indirection "x.type is $(x.type), but expected to be T_A_Indirection"
    Base.print(io, "A_Indirection")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_Indirection)
    hasfield(A_Indirection, :type) && true && @assert x.type == T_A_Indirection "x.type is $(x.type), but expected to be T_A_Indirection"
    children = []
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("indirection", x.indirection))

    return children
end
function convert_to_node_type(::Val{T_A_ArrayExpr})
    return A_ArrayExpr
end
function AbstractTrees.printnode(io::IO, x::A_ArrayExpr)
    hasfield(A_ArrayExpr, :type) && true && @assert x.type == T_A_ArrayExpr "x.type is $(x.type), but expected to be T_A_ArrayExpr"
    Base.print(io, "A_ArrayExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::A_ArrayExpr)
    hasfield(A_ArrayExpr, :type) && true && @assert x.type == T_A_ArrayExpr "x.type is $(x.type), but expected to be T_A_ArrayExpr"
    children = []
    push!(children, FieldNameAndValuePair("elements", x.elements))

    return children
end
function convert_to_node_type(::Val{T_ResTarget})
    return ResTarget
end
function AbstractTrees.printnode(io::IO, x::ResTarget)
    hasfield(ResTarget, :type) && true && @assert x.type == T_ResTarget "x.type is $(x.type), but expected to be T_ResTarget"
    Base.print(io, "ResTarget")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ResTarget)
    hasfield(ResTarget, :type) && true && @assert x.type == T_ResTarget "x.type is $(x.type), but expected to be T_ResTarget"
    children = []
    push!(children, FieldNameAndValuePair("indirection", x.indirection))
    push!(children, FieldNameAndValuePair("val", x.val))

    return children
end
function convert_to_node_type(::Val{T_MultiAssignRef})
    return MultiAssignRef
end
function AbstractTrees.printnode(io::IO, x::MultiAssignRef)
    hasfield(MultiAssignRef, :type) && true && @assert x.type == T_MultiAssignRef "x.type is $(x.type), but expected to be T_MultiAssignRef"
    Base.print(io, "MultiAssignRef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "colno")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.colno))
    true && Base.print(io, ", ")
    Base.print(io, "ncolumns")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ncolumns))

    Base.print(io, ")")
end

function AbstractTrees.children(x::MultiAssignRef)
    hasfield(MultiAssignRef, :type) && true && @assert x.type == T_MultiAssignRef "x.type is $(x.type), but expected to be T_MultiAssignRef"
    children = []
    push!(children, FieldNameAndValuePair("source", x.source))

    return children
end
function convert_to_node_type(::Val{T_TypeCast})
    return TypeCast
end
function AbstractTrees.printnode(io::IO, x::TypeCast)
    hasfield(TypeCast, :type) && true && @assert x.type == T_TypeCast "x.type is $(x.type), but expected to be T_TypeCast"
    Base.print(io, "TypeCast")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TypeCast)
    hasfield(TypeCast, :type) && true && @assert x.type == T_TypeCast "x.type is $(x.type), but expected to be T_TypeCast"
    children = []
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("typeName", x.typeName))

    return children
end
function convert_to_node_type(::Val{T_CollateClause})
    return CollateClause
end
function AbstractTrees.printnode(io::IO, x::CollateClause)
    hasfield(CollateClause, :type) && true && @assert x.type == T_CollateClause "x.type is $(x.type), but expected to be T_CollateClause"
    Base.print(io, "CollateClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CollateClause)
    hasfield(CollateClause, :type) && true && @assert x.type == T_CollateClause "x.type is $(x.type), but expected to be T_CollateClause"
    children = []
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("collname", x.collname))

    return children
end
function convert_to_node_type(::Val{T_SortBy})
    return SortBy
end
function AbstractTrees.printnode(io::IO, x::SortBy)
    hasfield(SortBy, :type) && true && @assert x.type == T_SortBy "x.type is $(x.type), but expected to be T_SortBy"
    Base.print(io, "SortBy")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SortBy)
    hasfield(SortBy, :type) && true && @assert x.type == T_SortBy "x.type is $(x.type), but expected to be T_SortBy"
    children = []
    push!(children, FieldNameAndValuePair("node", x.node))
    push!(children, FieldNameAndValuePair("sortby_dir", x.sortby_dir))
    push!(children, FieldNameAndValuePair("sortby_nulls", x.sortby_nulls))
    push!(children, FieldNameAndValuePair("useOp", x.useOp))

    return children
end
function convert_to_node_type(::Val{T_WindowDef})
    return WindowDef
end
function AbstractTrees.printnode(io::IO, x::WindowDef)
    hasfield(WindowDef, :type) && true && @assert x.type == T_WindowDef "x.type is $(x.type), but expected to be T_WindowDef"
    Base.print(io, "WindowDef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "refname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.refname))
    true && Base.print(io, ", ")
    Base.print(io, "frameOptions")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.frameOptions))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WindowDef)
    hasfield(WindowDef, :type) && true && @assert x.type == T_WindowDef "x.type is $(x.type), but expected to be T_WindowDef"
    children = []
    push!(children, FieldNameAndValuePair("partitionClause", x.partitionClause))
    push!(children, FieldNameAndValuePair("orderClause", x.orderClause))
    push!(children, FieldNameAndValuePair("startOffset", x.startOffset))
    push!(children, FieldNameAndValuePair("endOffset", x.endOffset))

    return children
end
function convert_to_node_type(::Val{T_RangeSubselect})
    return RangeSubselect
end
function AbstractTrees.printnode(io::IO, x::RangeSubselect)
    hasfield(RangeSubselect, :type) && true && @assert x.type == T_RangeSubselect "x.type is $(x.type), but expected to be T_RangeSubselect"
    Base.print(io, "RangeSubselect")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "lateral")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lateral))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeSubselect)
    hasfield(RangeSubselect, :type) && true && @assert x.type == T_RangeSubselect "x.type is $(x.type), but expected to be T_RangeSubselect"
    children = []
    push!(children, FieldNameAndValuePair("subquery", x.subquery))
    push!(children, FieldNameAndValuePair("alias", x.alias))

    return children
end
function convert_to_node_type(::Val{T_RangeFunction})
    return RangeFunction
end
function AbstractTrees.printnode(io::IO, x::RangeFunction)
    hasfield(RangeFunction, :type) && true && @assert x.type == T_RangeFunction "x.type is $(x.type), but expected to be T_RangeFunction"
    Base.print(io, "RangeFunction")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "lateral")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lateral))
    true && Base.print(io, ", ")
    Base.print(io, "ordinality")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ordinality))
    true && Base.print(io, ", ")
    Base.print(io, "is_rowsfrom")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_rowsfrom))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeFunction)
    hasfield(RangeFunction, :type) && true && @assert x.type == T_RangeFunction "x.type is $(x.type), but expected to be T_RangeFunction"
    children = []
    push!(children, FieldNameAndValuePair("functions", x.functions))
    push!(children, FieldNameAndValuePair("alias", x.alias))
    push!(children, FieldNameAndValuePair("coldeflist", x.coldeflist))

    return children
end
function convert_to_node_type(::Val{T_RangeTableSample})
    return RangeTableSample
end
function AbstractTrees.printnode(io::IO, x::RangeTableSample)
    hasfield(RangeTableSample, :type) && true && @assert x.type == T_RangeTableSample "x.type is $(x.type), but expected to be T_RangeTableSample"
    Base.print(io, "RangeTableSample")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTableSample)
    hasfield(RangeTableSample, :type) && true && @assert x.type == T_RangeTableSample "x.type is $(x.type), but expected to be T_RangeTableSample"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))
    push!(children, FieldNameAndValuePair("method", x.method))
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("repeatable", x.repeatable))

    return children
end
function convert_to_node_type(::Val{T_RangeTableFunc})
    return RangeTableFunc
end
function AbstractTrees.printnode(io::IO, x::RangeTableFunc)
    hasfield(RangeTableFunc, :type) && true && @assert x.type == T_RangeTableFunc "x.type is $(x.type), but expected to be T_RangeTableFunc"
    Base.print(io, "RangeTableFunc")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "lateral")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lateral))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTableFunc)
    hasfield(RangeTableFunc, :type) && true && @assert x.type == T_RangeTableFunc "x.type is $(x.type), but expected to be T_RangeTableFunc"
    children = []
    push!(children, FieldNameAndValuePair("docexpr", x.docexpr))
    push!(children, FieldNameAndValuePair("rowexpr", x.rowexpr))
    push!(children, FieldNameAndValuePair("namespaces", x.namespaces))
    push!(children, FieldNameAndValuePair("columns", x.columns))
    push!(children, FieldNameAndValuePair("alias", x.alias))

    return children
end
function convert_to_node_type(::Val{T_RangeTableFuncCol})
    return RangeTableFuncCol
end
function AbstractTrees.printnode(io::IO, x::RangeTableFuncCol)
    hasfield(RangeTableFuncCol, :type) && true && @assert x.type == T_RangeTableFuncCol "x.type is $(x.type), but expected to be T_RangeTableFuncCol"
    Base.print(io, "RangeTableFuncCol")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "colname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.colname))
    true && Base.print(io, ", ")
    Base.print(io, "for_ordinality")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.for_ordinality))
    true && Base.print(io, ", ")
    Base.print(io, "is_not_null")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_not_null))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTableFuncCol)
    hasfield(RangeTableFuncCol, :type) && true && @assert x.type == T_RangeTableFuncCol "x.type is $(x.type), but expected to be T_RangeTableFuncCol"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("colexpr", x.colexpr))
    push!(children, FieldNameAndValuePair("coldefexpr", x.coldefexpr))

    return children
end
function convert_to_node_type(::Val{T_TypeName})
    return TypeName
end
function AbstractTrees.printnode(io::IO, x::TypeName)
    hasfield(TypeName, :type) && true && @assert x.type == T_TypeName "x.type is $(x.type), but expected to be T_TypeName"
    Base.print(io, "TypeName")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "typeOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typeOid))
    true && Base.print(io, ", ")
    Base.print(io, "setof")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.setof))
    true && Base.print(io, ", ")
    Base.print(io, "pct_type")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pct_type))
    true && Base.print(io, ", ")
    Base.print(io, "typemod")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.typemod))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TypeName)
    hasfield(TypeName, :type) && true && @assert x.type == T_TypeName "x.type is $(x.type), but expected to be T_TypeName"
    children = []
    push!(children, FieldNameAndValuePair("names", x.names))
    push!(children, FieldNameAndValuePair("typmods", x.typmods))
    push!(children, FieldNameAndValuePair("arrayBounds", x.arrayBounds))

    return children
end
function convert_to_node_type(::Val{T_ColumnDef})
    return ColumnDef
end
function AbstractTrees.printnode(io::IO, x::ColumnDef)
    hasfield(ColumnDef, :type) && true && @assert x.type == T_ColumnDef "x.type is $(x.type), but expected to be T_ColumnDef"
    Base.print(io, "ColumnDef")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "colname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.colname))
    true && Base.print(io, ", ")
    Base.print(io, "inhcount")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inhcount))
    true && Base.print(io, ", ")
    Base.print(io, "is_local")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_local))
    true && Base.print(io, ", ")
    Base.print(io, "is_not_null")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_not_null))
    true && Base.print(io, ", ")
    Base.print(io, "is_from_type")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_from_type))
    true && Base.print(io, ", ")
    Base.print(io, "is_from_parent")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_from_parent))
    true && Base.print(io, ", ")
    Base.print(io, "storage")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.storage))
    true && Base.print(io, ", ")
    Base.print(io, "identity")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.identity))
    true && Base.print(io, ", ")
    Base.print(io, "collOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.collOid))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ColumnDef)
    hasfield(ColumnDef, :type) && true && @assert x.type == T_ColumnDef "x.type is $(x.type), but expected to be T_ColumnDef"
    children = []
    push!(children, FieldNameAndValuePair("typeName", x.typeName))
    push!(children, FieldNameAndValuePair("raw_default", x.raw_default))
    push!(children, FieldNameAndValuePair("cooked_default", x.cooked_default))
    push!(children, FieldNameAndValuePair("identitySequence", x.identitySequence))
    push!(children, FieldNameAndValuePair("collClause", x.collClause))
    push!(children, FieldNameAndValuePair("constraints", x.constraints))
    push!(children, FieldNameAndValuePair("fdwoptions", x.fdwoptions))

    return children
end
function convert_to_node_type(::Val{T_IndexElem})
    return IndexElem
end
function AbstractTrees.printnode(io::IO, x::IndexElem)
    hasfield(IndexElem, :type) && true && @assert x.type == T_IndexElem "x.type is $(x.type), but expected to be T_IndexElem"
    Base.print(io, "IndexElem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "indexcolname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexcolname))

    Base.print(io, ")")
end

function AbstractTrees.children(x::IndexElem)
    hasfield(IndexElem, :type) && true && @assert x.type == T_IndexElem "x.type is $(x.type), but expected to be T_IndexElem"
    children = []
    push!(children, FieldNameAndValuePair("expr", x.expr))
    push!(children, FieldNameAndValuePair("collation", x.collation))
    push!(children, FieldNameAndValuePair("opclass", x.opclass))
    push!(children, FieldNameAndValuePair("ordering", x.ordering))
    push!(children, FieldNameAndValuePair("nulls_ordering", x.nulls_ordering))

    return children
end
function convert_to_node_type(::Val{T_Constraint})
    return Constraint
end
function AbstractTrees.printnode(io::IO, x::Constraint)
    hasfield(Constraint, :type) && true && @assert x.type == T_Constraint "x.type is $(x.type), but expected to be T_Constraint"
    Base.print(io, "Constraint")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "conname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conname))
    true && Base.print(io, ", ")
    Base.print(io, "deferrable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.deferrable))
    true && Base.print(io, ", ")
    Base.print(io, "initdeferred")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.initdeferred))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))
    true && Base.print(io, ", ")
    Base.print(io, "is_no_inherit")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.is_no_inherit))
    true && Base.print(io, ", ")
    Base.print(io, "cooked_expr")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cooked_expr))
    true && Base.print(io, ", ")
    Base.print(io, "generated_when")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.generated_when))
    true && Base.print(io, ", ")
    Base.print(io, "indexname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexname))
    true && Base.print(io, ", ")
    Base.print(io, "indexspace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.indexspace))
    true && Base.print(io, ", ")
    Base.print(io, "access_method")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.access_method))
    true && Base.print(io, ", ")
    Base.print(io, "fk_matchtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fk_matchtype))
    true && Base.print(io, ", ")
    Base.print(io, "fk_upd_action")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fk_upd_action))
    true && Base.print(io, ", ")
    Base.print(io, "fk_del_action")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.fk_del_action))
    true && Base.print(io, ", ")
    Base.print(io, "old_pktable_oid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.old_pktable_oid))
    true && Base.print(io, ", ")
    Base.print(io, "skip_validation")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.skip_validation))
    true && Base.print(io, ", ")
    Base.print(io, "initially_valid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.initially_valid))

    Base.print(io, ")")
end

function AbstractTrees.children(x::Constraint)
    hasfield(Constraint, :type) && true && @assert x.type == T_Constraint "x.type is $(x.type), but expected to be T_Constraint"
    children = []
    push!(children, FieldNameAndValuePair("contype", x.contype))
    push!(children, FieldNameAndValuePair("raw_expr", x.raw_expr))
    push!(children, FieldNameAndValuePair("keys", x.keys))
    push!(children, FieldNameAndValuePair("exclusions", x.exclusions))
    push!(children, FieldNameAndValuePair("options", x.options))
    push!(children, FieldNameAndValuePair("where_clause", x.where_clause))
    push!(children, FieldNameAndValuePair("pktable", x.pktable))
    push!(children, FieldNameAndValuePair("fk_attrs", x.fk_attrs))
    push!(children, FieldNameAndValuePair("pk_attrs", x.pk_attrs))
    push!(children, FieldNameAndValuePair("old_conpfeqop", x.old_conpfeqop))

    return children
end
function convert_to_node_type(::Val{T_DefElem})
    return DefElem
end
function AbstractTrees.printnode(io::IO, x::DefElem)
    hasfield(DefElem, :type) && true && @assert x.type == T_DefElem "x.type is $(x.type), but expected to be T_DefElem"
    Base.print(io, "DefElem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "defnamespace")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.defnamespace))
    true && Base.print(io, ", ")
    Base.print(io, "defname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.defname))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::DefElem)
    hasfield(DefElem, :type) && true && @assert x.type == T_DefElem "x.type is $(x.type), but expected to be T_DefElem"
    children = []
    push!(children, FieldNameAndValuePair("arg", x.arg))
    push!(children, FieldNameAndValuePair("defaction", x.defaction))

    return children
end
function convert_to_node_type(::Val{T_RangeTblEntry})
    return RangeTblEntry
end
function AbstractTrees.printnode(io::IO, x::RangeTblEntry)
    hasfield(RangeTblEntry, :type) && true && @assert x.type == T_RangeTblEntry "x.type is $(x.type), but expected to be T_RangeTblEntry"
    Base.print(io, "RangeTblEntry")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "relid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relid))
    true && Base.print(io, ", ")
    Base.print(io, "relkind")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relkind))
    true && Base.print(io, ", ")
    Base.print(io, "security_barrier")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.security_barrier))
    true && Base.print(io, ", ")
    Base.print(io, "funcordinality")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funcordinality))
    true && Base.print(io, ", ")
    Base.print(io, "ctename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ctename))
    true && Base.print(io, ", ")
    Base.print(io, "ctelevelsup")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ctelevelsup))
    true && Base.print(io, ", ")
    Base.print(io, "self_reference")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.self_reference))
    true && Base.print(io, ", ")
    Base.print(io, "enrname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.enrname))
    true && Base.print(io, ", ")
    Base.print(io, "lateral")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.lateral))
    true && Base.print(io, ", ")
    Base.print(io, "inh")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inh))
    true && Base.print(io, ", ")
    Base.print(io, "inFromCl")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.inFromCl))
    true && Base.print(io, ", ")
    Base.print(io, "requiredPerms")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.requiredPerms))
    true && Base.print(io, ", ")
    Base.print(io, "checkAsUser")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.checkAsUser))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTblEntry)
    hasfield(RangeTblEntry, :type) && true && @assert x.type == T_RangeTblEntry "x.type is $(x.type), but expected to be T_RangeTblEntry"
    children = []
    push!(children, FieldNameAndValuePair("rtekind", x.rtekind))
    push!(children, FieldNameAndValuePair("tablesample", x.tablesample))
    push!(children, FieldNameAndValuePair("subquery", x.subquery))
    push!(children, FieldNameAndValuePair("jointype", x.jointype))
    push!(children, FieldNameAndValuePair("joinaliasvars", x.joinaliasvars))
    push!(children, FieldNameAndValuePair("functions", x.functions))
    push!(children, FieldNameAndValuePair("tablefunc", x.tablefunc))
    push!(children, FieldNameAndValuePair("values_lists", x.values_lists))
    push!(children, FieldNameAndValuePair("coltypes", x.coltypes))
    push!(children, FieldNameAndValuePair("coltypmods", x.coltypmods))
    push!(children, FieldNameAndValuePair("colcollations", x.colcollations))
    push!(children, FieldNameAndValuePair("enrtuples", x.enrtuples))
    push!(children, FieldNameAndValuePair("alias", x.alias))
    push!(children, FieldNameAndValuePair("eref", x.eref))
    push!(children, FieldNameAndValuePair("selectedCols", x.selectedCols))
    push!(children, FieldNameAndValuePair("insertedCols", x.insertedCols))
    push!(children, FieldNameAndValuePair("updatedCols", x.updatedCols))
    push!(children, FieldNameAndValuePair("securityQuals", x.securityQuals))

    return children
end
function convert_to_node_type(::Val{T_RangeTblFunction})
    return RangeTblFunction
end
function AbstractTrees.printnode(io::IO, x::RangeTblFunction)
    hasfield(RangeTblFunction, :type) && true && @assert x.type == T_RangeTblFunction "x.type is $(x.type), but expected to be T_RangeTblFunction"
    Base.print(io, "RangeTblFunction")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "funccolcount")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.funccolcount))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RangeTblFunction)
    hasfield(RangeTblFunction, :type) && true && @assert x.type == T_RangeTblFunction "x.type is $(x.type), but expected to be T_RangeTblFunction"
    children = []
    push!(children, FieldNameAndValuePair("funcexpr", x.funcexpr))
    push!(children, FieldNameAndValuePair("funccolnames", x.funccolnames))
    push!(children, FieldNameAndValuePair("funccoltypes", x.funccoltypes))
    push!(children, FieldNameAndValuePair("funccoltypmods", x.funccoltypmods))
    push!(children, FieldNameAndValuePair("funccolcollations", x.funccolcollations))
    push!(children, FieldNameAndValuePair("funcparams", x.funcparams))

    return children
end
function convert_to_node_type(::Val{T_TableSampleClause})
    return TableSampleClause
end
function AbstractTrees.printnode(io::IO, x::TableSampleClause)
    hasfield(TableSampleClause, :type) && true && @assert x.type == T_TableSampleClause "x.type is $(x.type), but expected to be T_TableSampleClause"
    Base.print(io, "TableSampleClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tsmhandler")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tsmhandler))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TableSampleClause)
    hasfield(TableSampleClause, :type) && true && @assert x.type == T_TableSampleClause "x.type is $(x.type), but expected to be T_TableSampleClause"
    children = []
    push!(children, FieldNameAndValuePair("args", x.args))
    push!(children, FieldNameAndValuePair("repeatable", x.repeatable))

    return children
end
function convert_to_node_type(::Val{T_WithCheckOption})
    return WithCheckOption
end
function AbstractTrees.printnode(io::IO, x::WithCheckOption)
    hasfield(WithCheckOption, :type) && true && @assert x.type == T_WithCheckOption "x.type is $(x.type), but expected to be T_WithCheckOption"
    Base.print(io, "WithCheckOption")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "relname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.relname))
    true && Base.print(io, ", ")
    Base.print(io, "polname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.polname))
    true && Base.print(io, ", ")
    Base.print(io, "cascaded")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cascaded))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WithCheckOption)
    hasfield(WithCheckOption, :type) && true && @assert x.type == T_WithCheckOption "x.type is $(x.type), but expected to be T_WithCheckOption"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("qual", x.qual))

    return children
end
function convert_to_node_type(::Val{T_SortGroupClause})
    return SortGroupClause
end
function AbstractTrees.printnode(io::IO, x::SortGroupClause)
    hasfield(SortGroupClause, :type) && true && @assert x.type == T_SortGroupClause "x.type is $(x.type), but expected to be T_SortGroupClause"
    Base.print(io, "SortGroupClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "tleSortGroupRef")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.tleSortGroupRef))
    true && Base.print(io, ", ")
    Base.print(io, "eqop")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.eqop))
    true && Base.print(io, ", ")
    Base.print(io, "sortop")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.sortop))
    true && Base.print(io, ", ")
    Base.print(io, "nulls_first")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.nulls_first))
    true && Base.print(io, ", ")
    Base.print(io, "hashable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.hashable))

    Base.print(io, ")")
end

function AbstractTrees.children(x::SortGroupClause)
    hasfield(SortGroupClause, :type) && true && @assert x.type == T_SortGroupClause "x.type is $(x.type), but expected to be T_SortGroupClause"
    children = []

    return children
end
function convert_to_node_type(::Val{T_GroupingSet})
    return GroupingSet
end
function AbstractTrees.printnode(io::IO, x::GroupingSet)
    hasfield(GroupingSet, :type) && true && @assert x.type == T_GroupingSet "x.type is $(x.type), but expected to be T_GroupingSet"
    Base.print(io, "GroupingSet")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::GroupingSet)
    hasfield(GroupingSet, :type) && true && @assert x.type == T_GroupingSet "x.type is $(x.type), but expected to be T_GroupingSet"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("content", x.content))

    return children
end
function convert_to_node_type(::Val{T_WindowClause})
    return WindowClause
end
function AbstractTrees.printnode(io::IO, x::WindowClause)
    hasfield(WindowClause, :type) && true && @assert x.type == T_WindowClause "x.type is $(x.type), but expected to be T_WindowClause"
    Base.print(io, "WindowClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "refname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.refname))
    true && Base.print(io, ", ")
    Base.print(io, "frameOptions")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.frameOptions))
    true && Base.print(io, ", ")
    Base.print(io, "winref")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.winref))
    true && Base.print(io, ", ")
    Base.print(io, "copiedOrder")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.copiedOrder))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WindowClause)
    hasfield(WindowClause, :type) && true && @assert x.type == T_WindowClause "x.type is $(x.type), but expected to be T_WindowClause"
    children = []
    push!(children, FieldNameAndValuePair("partitionClause", x.partitionClause))
    push!(children, FieldNameAndValuePair("orderClause", x.orderClause))
    push!(children, FieldNameAndValuePair("startOffset", x.startOffset))
    push!(children, FieldNameAndValuePair("endOffset", x.endOffset))

    return children
end
function convert_to_node_type(::Val{T_ObjectWithArgs})
    return ObjectWithArgs
end
function AbstractTrees.printnode(io::IO, x::ObjectWithArgs)
    hasfield(ObjectWithArgs, :type) && true && @assert x.type == T_ObjectWithArgs "x.type is $(x.type), but expected to be T_ObjectWithArgs"
    Base.print(io, "ObjectWithArgs")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "args_unspecified")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.args_unspecified))

    Base.print(io, ")")
end

function AbstractTrees.children(x::ObjectWithArgs)
    hasfield(ObjectWithArgs, :type) && true && @assert x.type == T_ObjectWithArgs "x.type is $(x.type), but expected to be T_ObjectWithArgs"
    children = []
    push!(children, FieldNameAndValuePair("objname", x.objname))
    push!(children, FieldNameAndValuePair("objargs", x.objargs))

    return children
end
function convert_to_node_type(::Val{T_AccessPriv})
    return AccessPriv
end
function AbstractTrees.printnode(io::IO, x::AccessPriv)
    hasfield(AccessPriv, :type) && true && @assert x.type == T_AccessPriv "x.type is $(x.type), but expected to be T_AccessPriv"
    Base.print(io, "AccessPriv")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "priv_name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.priv_name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::AccessPriv)
    hasfield(AccessPriv, :type) && true && @assert x.type == T_AccessPriv "x.type is $(x.type), but expected to be T_AccessPriv"
    children = []
    push!(children, FieldNameAndValuePair("cols", x.cols))

    return children
end
function convert_to_node_type(::Val{T_CreateOpClassItem})
    return CreateOpClassItem
end
function AbstractTrees.printnode(io::IO, x::CreateOpClassItem)
    hasfield(CreateOpClassItem, :type) && true && @assert x.type == T_CreateOpClassItem "x.type is $(x.type), but expected to be T_CreateOpClassItem"
    Base.print(io, "CreateOpClassItem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "itemtype")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.itemtype))
    true && Base.print(io, ", ")
    Base.print(io, "number")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.number))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CreateOpClassItem)
    hasfield(CreateOpClassItem, :type) && true && @assert x.type == T_CreateOpClassItem "x.type is $(x.type), but expected to be T_CreateOpClassItem"
    children = []
    push!(children, FieldNameAndValuePair("name", x.name))
    push!(children, FieldNameAndValuePair("order_family", x.order_family))
    push!(children, FieldNameAndValuePair("class_args", x.class_args))
    push!(children, FieldNameAndValuePair("storedtype", x.storedtype))

    return children
end
function convert_to_node_type(::Val{T_TableLikeClause})
    return TableLikeClause
end
function AbstractTrees.printnode(io::IO, x::TableLikeClause)
    hasfield(TableLikeClause, :type) && true && @assert x.type == T_TableLikeClause "x.type is $(x.type), but expected to be T_TableLikeClause"
    Base.print(io, "TableLikeClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "options")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.options))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TableLikeClause)
    hasfield(TableLikeClause, :type) && true && @assert x.type == T_TableLikeClause "x.type is $(x.type), but expected to be T_TableLikeClause"
    children = []
    push!(children, FieldNameAndValuePair("relation", x.relation))

    return children
end
function convert_to_node_type(::Val{T_FunctionParameter})
    return FunctionParameter
end
function AbstractTrees.printnode(io::IO, x::FunctionParameter)
    hasfield(FunctionParameter, :type) && true && @assert x.type == T_FunctionParameter "x.type is $(x.type), but expected to be T_FunctionParameter"
    Base.print(io, "FunctionParameter")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))

    Base.print(io, ")")
end

function AbstractTrees.children(x::FunctionParameter)
    hasfield(FunctionParameter, :type) && true && @assert x.type == T_FunctionParameter "x.type is $(x.type), but expected to be T_FunctionParameter"
    children = []
    push!(children, FieldNameAndValuePair("argType", x.argType))
    push!(children, FieldNameAndValuePair("mode", x.mode))
    push!(children, FieldNameAndValuePair("defexpr", x.defexpr))

    return children
end
function convert_to_node_type(::Val{T_LockingClause})
    return LockingClause
end
function AbstractTrees.printnode(io::IO, x::LockingClause)
    hasfield(LockingClause, :type) && true && @assert x.type == T_LockingClause "x.type is $(x.type), but expected to be T_LockingClause"
    Base.print(io, "LockingClause")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::LockingClause)
    hasfield(LockingClause, :type) && true && @assert x.type == T_LockingClause "x.type is $(x.type), but expected to be T_LockingClause"
    children = []
    push!(children, FieldNameAndValuePair("lockedRels", x.lockedRels))
    push!(children, FieldNameAndValuePair("strength", x.strength))
    push!(children, FieldNameAndValuePair("waitPolicy", x.waitPolicy))

    return children
end
function convert_to_node_type(::Val{T_RowMarkClause})
    return RowMarkClause
end
function AbstractTrees.printnode(io::IO, x::RowMarkClause)
    hasfield(RowMarkClause, :type) && true && @assert x.type == T_RowMarkClause "x.type is $(x.type), but expected to be T_RowMarkClause"
    Base.print(io, "RowMarkClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "rti")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rti))
    true && Base.print(io, ", ")
    Base.print(io, "pushedDown")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.pushedDown))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RowMarkClause)
    hasfield(RowMarkClause, :type) && true && @assert x.type == T_RowMarkClause "x.type is $(x.type), but expected to be T_RowMarkClause"
    children = []
    push!(children, FieldNameAndValuePair("strength", x.strength))
    push!(children, FieldNameAndValuePair("waitPolicy", x.waitPolicy))

    return children
end
function convert_to_node_type(::Val{T_XmlSerialize})
    return XmlSerialize
end
function AbstractTrees.printnode(io::IO, x::XmlSerialize)
    hasfield(XmlSerialize, :type) && true && @assert x.type == T_XmlSerialize "x.type is $(x.type), but expected to be T_XmlSerialize"
    Base.print(io, "XmlSerialize")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::XmlSerialize)
    hasfield(XmlSerialize, :type) && true && @assert x.type == T_XmlSerialize "x.type is $(x.type), but expected to be T_XmlSerialize"
    children = []
    push!(children, FieldNameAndValuePair("xmloption", x.xmloption))
    push!(children, FieldNameAndValuePair("expr", x.expr))
    push!(children, FieldNameAndValuePair("typeName", x.typeName))

    return children
end
function convert_to_node_type(::Val{T_WithClause})
    return WithClause
end
function AbstractTrees.printnode(io::IO, x::WithClause)
    hasfield(WithClause, :type) && true && @assert x.type == T_WithClause "x.type is $(x.type), but expected to be T_WithClause"
    Base.print(io, "WithClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "recursive")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.recursive))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::WithClause)
    hasfield(WithClause, :type) && true && @assert x.type == T_WithClause "x.type is $(x.type), but expected to be T_WithClause"
    children = []
    push!(children, FieldNameAndValuePair("ctes", x.ctes))

    return children
end
function convert_to_node_type(::Val{T_InferClause})
    return InferClause
end
function AbstractTrees.printnode(io::IO, x::InferClause)
    hasfield(InferClause, :type) && true && @assert x.type == T_InferClause "x.type is $(x.type), but expected to be T_InferClause"
    Base.print(io, "InferClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "conname")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.conname))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::InferClause)
    hasfield(InferClause, :type) && true && @assert x.type == T_InferClause "x.type is $(x.type), but expected to be T_InferClause"
    children = []
    push!(children, FieldNameAndValuePair("indexElems", x.indexElems))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))

    return children
end
function convert_to_node_type(::Val{T_OnConflictClause})
    return OnConflictClause
end
function AbstractTrees.printnode(io::IO, x::OnConflictClause)
    hasfield(OnConflictClause, :type) && true && @assert x.type == T_OnConflictClause "x.type is $(x.type), but expected to be T_OnConflictClause"
    Base.print(io, "OnConflictClause")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::OnConflictClause)
    hasfield(OnConflictClause, :type) && true && @assert x.type == T_OnConflictClause "x.type is $(x.type), but expected to be T_OnConflictClause"
    children = []
    push!(children, FieldNameAndValuePair("action", x.action))
    push!(children, FieldNameAndValuePair("infer", x.infer))
    push!(children, FieldNameAndValuePair("targetList", x.targetList))
    push!(children, FieldNameAndValuePair("whereClause", x.whereClause))

    return children
end
function convert_to_node_type(::Val{T_CommonTableExpr})
    return CommonTableExpr
end
function AbstractTrees.printnode(io::IO, x::CommonTableExpr)
    hasfield(CommonTableExpr, :type) && true && @assert x.type == T_CommonTableExpr "x.type is $(x.type), but expected to be T_CommonTableExpr"
    Base.print(io, "CommonTableExpr")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "ctename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.ctename))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))
    true && Base.print(io, ", ")
    Base.print(io, "cterecursive")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cterecursive))
    true && Base.print(io, ", ")
    Base.print(io, "cterefcount")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.cterefcount))

    Base.print(io, ")")
end

function AbstractTrees.children(x::CommonTableExpr)
    hasfield(CommonTableExpr, :type) && true && @assert x.type == T_CommonTableExpr "x.type is $(x.type), but expected to be T_CommonTableExpr"
    children = []
    push!(children, FieldNameAndValuePair("aliascolnames", x.aliascolnames))
    push!(children, FieldNameAndValuePair("ctequery", x.ctequery))
    push!(children, FieldNameAndValuePair("ctecolnames", x.ctecolnames))
    push!(children, FieldNameAndValuePair("ctecoltypes", x.ctecoltypes))
    push!(children, FieldNameAndValuePair("ctecoltypmods", x.ctecoltypmods))
    push!(children, FieldNameAndValuePair("ctecolcollations", x.ctecolcollations))

    return children
end
function convert_to_node_type(::Val{T_RoleSpec})
    return RoleSpec
end
function AbstractTrees.printnode(io::IO, x::RoleSpec)
    hasfield(RoleSpec, :type) && true && @assert x.type == T_RoleSpec "x.type is $(x.type), but expected to be T_RoleSpec"
    Base.print(io, "RoleSpec")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "rolename")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.rolename))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::RoleSpec)
    hasfield(RoleSpec, :type) && true && @assert x.type == T_RoleSpec "x.type is $(x.type), but expected to be T_RoleSpec"
    children = []
    push!(children, FieldNameAndValuePair("roletype", x.roletype))

    return children
end
function convert_to_node_type(::Val{T_TriggerTransition})
    return TriggerTransition
end
function AbstractTrees.printnode(io::IO, x::TriggerTransition)
    hasfield(TriggerTransition, :type) && true && @assert x.type == T_TriggerTransition "x.type is $(x.type), but expected to be T_TriggerTransition"
    Base.print(io, "TriggerTransition")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "isNew")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isNew))
    true && Base.print(io, ", ")
    Base.print(io, "isTable")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.isTable))

    Base.print(io, ")")
end

function AbstractTrees.children(x::TriggerTransition)
    hasfield(TriggerTransition, :type) && true && @assert x.type == T_TriggerTransition "x.type is $(x.type), but expected to be T_TriggerTransition"
    children = []

    return children
end
function convert_to_node_type(::Val{T_PartitionElem})
    return PartitionElem
end
function AbstractTrees.printnode(io::IO, x::PartitionElem)
    hasfield(PartitionElem, :type) && true && @assert x.type == T_PartitionElem "x.type is $(x.type), but expected to be T_PartitionElem"
    Base.print(io, "PartitionElem")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "name")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.name))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionElem)
    hasfield(PartitionElem, :type) && true && @assert x.type == T_PartitionElem "x.type is $(x.type), but expected to be T_PartitionElem"
    children = []
    push!(children, FieldNameAndValuePair("expr", x.expr))
    push!(children, FieldNameAndValuePair("collation", x.collation))
    push!(children, FieldNameAndValuePair("opclass", x.opclass))

    return children
end
function convert_to_node_type(::Val{T_PartitionSpec})
    return PartitionSpec
end
function AbstractTrees.printnode(io::IO, x::PartitionSpec)
    hasfield(PartitionSpec, :type) && true && @assert x.type == T_PartitionSpec "x.type is $(x.type), but expected to be T_PartitionSpec"
    Base.print(io, "PartitionSpec")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "strategy")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.strategy))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionSpec)
    hasfield(PartitionSpec, :type) && true && @assert x.type == T_PartitionSpec "x.type is $(x.type), but expected to be T_PartitionSpec"
    children = []
    push!(children, FieldNameAndValuePair("partParams", x.partParams))

    return children
end
function convert_to_node_type(::Val{T_PartitionBoundSpec})
    return PartitionBoundSpec
end
function AbstractTrees.printnode(io::IO, x::PartitionBoundSpec)
    hasfield(PartitionBoundSpec, :type) && true && @assert x.type == T_PartitionBoundSpec "x.type is $(x.type), but expected to be T_PartitionBoundSpec"
    Base.print(io, "PartitionBoundSpec")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "strategy")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.strategy))
    true && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionBoundSpec)
    hasfield(PartitionBoundSpec, :type) && true && @assert x.type == T_PartitionBoundSpec "x.type is $(x.type), but expected to be T_PartitionBoundSpec"
    children = []
    push!(children, FieldNameAndValuePair("listdatums", x.listdatums))
    push!(children, FieldNameAndValuePair("lowerdatums", x.lowerdatums))
    push!(children, FieldNameAndValuePair("upperdatums", x.upperdatums))

    return children
end
function convert_to_node_type(::Val{T_PartitionRangeDatum})
    return PartitionRangeDatum
end
function AbstractTrees.printnode(io::IO, x::PartitionRangeDatum)
    hasfield(PartitionRangeDatum, :type) && true && @assert x.type == T_PartitionRangeDatum "x.type is $(x.type), but expected to be T_PartitionRangeDatum"
    Base.print(io, "PartitionRangeDatum")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "location")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.location))

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionRangeDatum)
    hasfield(PartitionRangeDatum, :type) && true && @assert x.type == T_PartitionRangeDatum "x.type is $(x.type), but expected to be T_PartitionRangeDatum"
    children = []
    push!(children, FieldNameAndValuePair("kind", x.kind))
    push!(children, FieldNameAndValuePair("value", x.value))

    return children
end
function convert_to_node_type(::Val{T_PartitionCmd})
    return PartitionCmd
end
function AbstractTrees.printnode(io::IO, x::PartitionCmd)
    hasfield(PartitionCmd, :type) && true && @assert x.type == T_PartitionCmd "x.type is $(x.type), but expected to be T_PartitionCmd"
    Base.print(io, "PartitionCmd")
    Base.print(io, "(")

    Base.print(io, ")")
end

function AbstractTrees.children(x::PartitionCmd)
    hasfield(PartitionCmd, :type) && true && @assert x.type == T_PartitionCmd "x.type is $(x.type), but expected to be T_PartitionCmd"
    children = []
    push!(children, FieldNameAndValuePair("name", x.name))
    push!(children, FieldNameAndValuePair("bound", x.bound))

    return children
end
function convert_to_node_type(::Val{T_InlineCodeBlock})
    return InlineCodeBlock
end
function AbstractTrees.printnode(io::IO, x::InlineCodeBlock)
    hasfield(InlineCodeBlock, :type) && true && @assert x.type == T_InlineCodeBlock "x.type is $(x.type), but expected to be T_InlineCodeBlock"
    Base.print(io, "InlineCodeBlock")
    Base.print(io, "(")
    false && Base.print(io, ", ")
    Base.print(io, "source_text")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.source_text))
    true && Base.print(io, ", ")
    Base.print(io, "langOid")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.langOid))
    true && Base.print(io, ", ")
    Base.print(io, "langIsTrusted")
    Base.print(io, "=")
    Base.print(io, simple_type_value(x.langIsTrusted))

    Base.print(io, ")")
end

function AbstractTrees.children(x::InlineCodeBlock)
    hasfield(InlineCodeBlock, :type) && true && @assert x.type == T_InlineCodeBlock "x.type is $(x.type), but expected to be T_InlineCodeBlock"
    children = []

    return children
end
