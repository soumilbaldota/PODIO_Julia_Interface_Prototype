include("ParticleIDStruct.jl")
function ParticleID()
	return ParticleID(
	Int32(0),
	Int32(0),
	Int32(0),
	Float32(0),
	Vector{ Float32 }([]),
	)
end