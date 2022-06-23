include("vectors.jl")
include("MCParticle.jl")
mutable struct SimTrackerHit
    cellID::UInt64
    EDep::Float32
    time::Float32
    pathLength::Float32
    quality::Int32
    position::Vector3d{Float64}
    momentum::Vector3d{Float32}
    
    MCParticle::Union{Nothing,MCParticle} # one to one relation
end

function SimTrackerHit()
    return SimTrackerHit(
        UInt64(0),
        Float32(0),
        Float32(0),
        Float32(0),
        Int32(0),
        Vector3d{Float64}(0.0,0.0,0.0),
        Vector3d{Float32}(0.0,0.0,0.0),
        nothing
    )
end

function Base.setproperty!(x::SimTrackerHit, f::Symbol, v::Vector)
	setfield!(x,f,typeof(getfield(x,f))(v...))
end
