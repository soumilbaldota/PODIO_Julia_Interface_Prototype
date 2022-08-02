using StaticArrays
include("Vector3fConstructor.jl")
include("ParticleIDConstructor.jl")
include("ClusterConstructor.jl")
include("TrackConstructor.jl")

mutable struct ReconstructedParticle{T}
	type::Int32
	energy::Float32
	momentum::Vector3f
	referencePoint::Vector3f
	charge::Float32
	mass::Float32
	goodnessOfPID::Float32
	covMatrix::MVector{10, Float32}
	clusters::Vector{ Cluster }
	tracks::Vector{ Track }
	particles::Vector{ ReconstructedParticle }
	particleIDs::Vector{ ParticleID }
	startVertex::Union{Nothing, T}
	particleIDUsed::Union{Nothing, ParticleID }
end
