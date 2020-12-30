# SQLParser.jl
Julia module to parse and normalize SQL queries using the PostgreSQL query parser

# Code Generation on `libpg_query_binary_builder` Updates

 - follow `src/gen/README.md`
 - Regenerate `AbstractTrees` extension via this command:

 ```
julia --project=. -e "using SQLParser; SQLParser.generate_code_for_abstract_tree_interface()"
 ```
