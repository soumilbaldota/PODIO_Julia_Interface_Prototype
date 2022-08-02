using StaticArrays
include("Vector3fConstructor.jl")
mutable struct Vertex{T}
	primary::Int32
	chi2::Float32
	probability::Float32
	position::Vector3f
	covMatrix::MVector{6, Float32}
	algorithmType::Int32
	associatedParticle::Union{Nothing, T}
	parameters::Vector{ Float32 }
end
