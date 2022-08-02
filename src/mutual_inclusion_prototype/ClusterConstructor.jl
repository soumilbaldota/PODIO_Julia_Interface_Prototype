include("ClusterStruct.jl")
function Cluster()
	return Cluster(
	Int32(0),
	Float32(0),
	Float32(0),
	Vector3f(),
	MVector{6, Float32}(undef),
	Float32(0),
	Float32(0),
	Vector3f(),
	Vector{ Cluster }(),
	Vector{ CalorimeterHit }(),
	Vector{ ParticleID }(),
	Vector{ Float32 }([]),
	Vector{ Float32 }([]),
	)
end