include("Vector3fConstructor.jl")
using StaticArrays
mutable struct TrackState
	location::Int32
	D0::Float32
	phi::Float32
	omega::Float32
	Z0::Float32
	tanLambda::Float32
	time::Float32
	referencePoint::Vector3f
	covMatrix::MVector{21, Float32}
end
