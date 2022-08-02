include("Vector3fConstructor.jl")
include("CalorimeterHitConstructor.jl")
include("ParticleIDConstructor.jl")
using StaticArrays
mutable struct Cluster
	type::Int32
	energy::Float32
	energyError::Float32
	position::Vector3f
	positionError::MVector{6, Float32}
	iTheta::Float32
	phi::Float32
	directionError::Vector3f
	clusters::Vector{ Cluster }
	hits::Vector{ CalorimeterHit }
	particleIDs::Vector{ ParticleID }
	shapeParameters::Vector{ Float32 }
	subdetectorEnergies::Vector{ Float32 }
end
