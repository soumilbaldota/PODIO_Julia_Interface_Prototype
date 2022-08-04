include("TrackStateStruct.jl")
function TrackState()
	return TrackState(
	Int32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Vector3f(),
	MVector{21, Float32}(undef),
	)
end