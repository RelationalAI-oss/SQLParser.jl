# SQLParser.jl
Julia module to parse and normalize SQL queries using the PostgreSQL query parser

# Code Generation on `libpg_query_binary_builder` Updates

 - follow `src/gen/README.md`
 - Regenerate `AbstractTrees` extension via this command:

 ```
julia --project=. ./src/abstract_trees_codegen.jl
 ```
