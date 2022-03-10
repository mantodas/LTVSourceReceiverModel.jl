using LTVSourceReceiverModel
using Documenter

DocMeta.setdocmeta!(LTVSourceReceiverModel, :DocTestSetup, :(using LTVSourceReceiverModel); recursive=true)

makedocs(;
    modules=[LTVSourceReceiverModel],
    authors="Mamta <mamta16@nmsu.edu> and contributors",
    repo="https://github.com/mantodas/LTVSourceReceiverModel.jl/blob/{commit}{path}#{line}",
    sitename="LTVSourceReceiverModel.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mantodas.github.io/LTVSourceReceiverModel.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mantodas/LTVSourceReceiverModel.jl",
    devbranch="main",
)
