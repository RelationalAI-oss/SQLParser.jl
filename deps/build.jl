using BinaryProvider # requires BinaryProvider 0.3.0 or later

# Parse some basic command-line arguments
const verbose = "--verbose" in ARGS
const prefix = Prefix(get([a for a in ARGS if a != "--verbose"], 1, joinpath(@__DIR__, "usr")))
products = [
    LibraryProduct(prefix, ["libpg_query"], :libpg_query),
]

# Download binaries from hosted location
bin_prefix = "https://github.com/RelationalAI-oss/libpg_query_binary_builder/releases/download/0.0.5"

# Listing of files generated by BinaryBuilder:
download_info = Dict(
    Linux(:i686, libc=:glibc) => ("$bin_prefix/libpg_query.v0.0.5.i686-linux-gnu.tar.gz", "3b186e3fc8fb4ae6cc06fbd74a989f6a92c74652b022ded82eb559c891a37401"),
    Linux(:i686, libc=:musl) => ("$bin_prefix/libpg_query.v0.0.5.i686-linux-musl.tar.gz", "aede54c85fef416bbba3e21f0dde7adddbad4676b3e38b4802ba3d7809ec4787"),
    MacOS(:x86_64) => ("$bin_prefix/libpg_query.v0.0.5.x86_64-apple-darwin14.tar.gz", "a922113f2253cc74d5ad827cc58b5b4b10d6c0b33cdde8e046f2f040f9457d6a"),
    Linux(:x86_64, libc=:glibc) => ("$bin_prefix/libpg_query.v0.0.5.x86_64-linux-gnu.tar.gz", "3c1f5e0adebd2b59c4e69606a20e9dcf52fa4601fdbb3a48e497387d2b12aa08"),
    Linux(:x86_64, libc=:musl) => ("$bin_prefix/libpg_query.v0.0.5.x86_64-linux-musl.tar.gz", "4f1b7e395eeefd1afc923a4f22b0fafa7b822e0226ae1d41196c4c367d287b84"),
)

# Install unsatisfied or updated dependencies:
unsatisfied = any(!satisfied(p; verbose=verbose) for p in products)
dl_info = choose_download(download_info, platform_key_abi())
if dl_info === nothing && unsatisfied
    # If we don't have a compatible .tar.gz to download, complain.
    # Alternatively, you could attempt to install from a separate provider,
    # build from source or something even more ambitious here.
    error("Your platform (\"$(Sys.MACHINE)\", parsed as \"$(triplet(platform_key_abi()))\") is not supported by this package!")
end

# If we have a download, and we are unsatisfied (or the version we're
# trying to install is not itself installed) then load it up!
if unsatisfied || !isinstalled(dl_info...; prefix=prefix)
    # Download and install binaries
    install(dl_info...; prefix=prefix, force=true, verbose=verbose)
end

# Write out a deps.jl file that will contain mappings for our products
write_deps_file(joinpath(@__DIR__, "deps.jl"), products, verbose=verbose)
