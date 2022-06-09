include("vectors.jl")
include("MCParticle.jl")
mutable struct CaloHitContribution
    PDG::Int32
    energy::Float32
    time::Float32
    stepPosition::Vector3d{Float32}

    # one to one relations

    particle::Union{Nothing,MCParticle}
end

function CaloHitContribution()
    return CaloHitContribution(
        Int32(0),
        Float32(0),
        Float32(0),
        Vector3d{Float32}(0.0,0.0,0.0),
        nothing
        )
end