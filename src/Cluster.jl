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
    
    # vector members

    shapeParameters::Vector{Float32}
    subdetectorEnergies::Vector{Float32}
    
    # one to many relations 

    clusters::Vector{Cluster}
    hits::Vector{CalorimeterHit}
    ParticleID::Vector{ParticleID}
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

function Base.setproperty!(x::Cluster, f::Symbol, v::Vector)
	setfield!(x,f,typeof(getfield(x,f))(v...))
end
