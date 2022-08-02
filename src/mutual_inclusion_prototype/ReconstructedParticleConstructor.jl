include("ReconstructedParticleStruct.jl")
include("VertexStruct.jl")


function ReconstructedParticle()
	return ReconstructedParticle{Vertex}(
	Int32(0),
	Float32(0),
	Vector3f(),
	Vector3f(),
	Float32(0),
	Float32(0),
	Float32(0),
	MVector{10, Float32}(undef),
	Vector{ Cluster }(),
	Vector{ Track }(),
	Vector{ ReconstructedParticle }(),
	Vector{ ParticleID }(),
	nothing,
	nothing,
	)
end