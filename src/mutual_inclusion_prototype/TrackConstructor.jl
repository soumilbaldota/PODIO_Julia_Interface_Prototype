include("TrackStruct.jl")
function Track()
	return Track(
	Int32(0),
	Float32(0),
	Int32(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Vector{ TrackerHit }(),
	Vector{ Track }(),
	Vector{ Int32 }([]),
	Vector{ TrackState }([]),
	Vector{ Quantity }([]),
	)
end