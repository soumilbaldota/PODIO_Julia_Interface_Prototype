mutable struct ParticleID
    Type::Int32
    PDG::Int32
    algorithmType::Int32
    likelyhood::Float32
    parameters::Vector{Any}
end

function ParticleID()
    return ParticleID(
        Int32(0),
        Int32(0),
        Int32(0),
        Float32(0.0),
        Vector{Any}([])
    )
end