using StaticArrays
include("vectors.jl")
include("CalorimeterHit.jl")
include("ParticleID.jl")
mutable struct Cluster
    Type::Int32
    energy::Float32
    energyError::Float32
    position::Vector3d{Float32}
    posistionError::MVector{6,Float32}
    iTheta::Float32
    phi::Float32
    directionError::Vector3d{Float32}
    
    shapeParameters::Vector{Float32}
    subdetectorEnergies::Vector{Float32}
    
    clusters::Union{Vector{Cluster},Cluster}
    hits::Union{Vector{CalorimeterHit},CalorimeterHit}
    ParticleID::Union{Vector{ParticleID},ParticleID}
end

function Cluster()
    return Cluster(
        Int32(0),
        Float32(0),
        Float32(0),
        Vector3d{Float32}(0.0,0.0,0.0),
        MVector{6,Float32}(undef),
        Float32(0),
        Float32(0),
        Vector3d{Float32}(0.0,0.0,0.0),
        
        Vector{Float32}([]),
        Vector{Float32}([]),
        
        Vector{Cluster}([]),
        Vector{CalorimeterHit}([]),
        Vector{ParticleID}([])
    )
end