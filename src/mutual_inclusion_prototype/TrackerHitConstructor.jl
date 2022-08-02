include("TrackerHitStruct.jl")
function TrackerHit()
	return TrackerHit(
	UInt64(0),
	Int32(0),
	Int32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Vector3d(),
	MVector{6, Float32}(undef),
	Vector{ ObjectID }([]),
	)
end