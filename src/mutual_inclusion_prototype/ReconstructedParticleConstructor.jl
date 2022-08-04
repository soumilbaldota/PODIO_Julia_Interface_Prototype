include("ReconstructedParticleStruct.jl")
include("VertexStruct.jl")

include("Vector3fConstructor.jl")
include("ParticleIDConstructor.jl")
include("ClusterConstructor.jl")
include("TrackConstructor.jl")

function ReconstructedParticle()
	return ReconstructedParticle{Cluster, Track, ReconstructedParticle, ParticleID, Vertex}(
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