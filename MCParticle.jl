include("vectors.jl")
mutable struct MCParticle
    PDG::Int32
    generatorStatus::Int32
    simulatorStatus::Int32
    charge::Float32
    time::Float32
    mass::Float64
    vertex::Vector3d{Float64}
    colorFlow::Vector3d{Int32}
    momentumAtEndpoint::Vector3d{Float32}
    spin::Vector3d{Float32}
    endpoint::Vector3d{Float64}
    
    # one to many relations
    parents::Vector{MCParticle}
    daughters::Vector{MCParticle}
end

function MCParticle()
    return MCParticle(
    Int32(0),
    Int32(0),
    Int32(0),
    Float32(0),
    Float32(0),
    Float64(0),
    Vector3d{Float64}(0.0,0.0,0.0),
    Vector3d{Int32}(0,0,0),
    Vector3d{Float32}(0.0,0.0,0.0),
    Vector3d{Float32}(0.0,0.0,0.0),
    Vector3d{Float64}(0.0,0.0,0.0),
        
    Vector{MCParticle}([]),
    Vector{MCParticle}([]))
end
