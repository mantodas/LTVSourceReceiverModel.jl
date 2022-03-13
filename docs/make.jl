push!(LOAD_PATH,"../src/")
push!(LOAD_PATH,"../docs/")

using Documenter
using LTVSourceReceiverModel

makedocs(;
    modules=[LTVSourceReceiverModel],
    authors="Mamta Dalal, Steven Sandoval, Hasan Al-Shammari",
    sitename="LTVSourceReceiverModel.jl",
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
        "LTI Omnidirectional" =>
                    ["Basic Forward Model"     => "omniDirectionalLTI/source.md",],
        "Transmitters" => "transmitters/transmitter.md",
        "Receivers" => "receivers/receiver.md",
        "Types/Methods/Functions" => "typesMethodsFunctions.md",
        "Cite" => "cite.md",
    ],
    repo="https://github.com/NMSU-ISA/LTVSourceReceiverModel.jl/blob/{commit}{path}#{line}",
    assets=String[],
)

deploydocs(;
    repo="github.com/NMSU-ISA/LTVSourceReceiverModel",
    devurl = "dev"
)
