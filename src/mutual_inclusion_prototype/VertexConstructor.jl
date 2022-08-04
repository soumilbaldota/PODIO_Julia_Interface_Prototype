include("ReconstructedParticleStruct.jl")
include("VertexStruct.jl")

include("Vector3fConstructor.jl")

function Vertex()
	return Vertex{Vector3f, ReconstructedParticle}(
	Int32(0),
	Float32(0),
	Float32(0),
	Vector3f(),
	MVector{6, Float32}(undef),
	Int32(0),
	nothing,
	Vector{ Float32 }([]),
	)
end
