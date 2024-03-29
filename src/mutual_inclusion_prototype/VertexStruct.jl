using StaticArrays
include("Vector3fStruct.jl")
mutable struct Vertex{ReconstructedParticleT}
	primary::Int32
	chi2::Float32
	probability::Float32
	position::Vector3f
	covMatrix::MVector{6, Float32}
	algorithmType::Int32
	associatedParticle::Union{Nothing, ReconstructedParticleT}
	parameters::Vector{ Float32 }
end
