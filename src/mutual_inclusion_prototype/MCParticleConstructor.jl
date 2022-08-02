include("MCParticleStruct.jl")
function MCParticle()
	return MCParticle{MCParticle}(
	Int32(0),
	Int32(0),
	Int32(0),
	Float32(0),
	Float32(0),
	Float64(0),
	Vector3d(),
	Vector3d(),
	Vector3f(),
	Vector3f(),
	Vector3f(),
	Vector2i(),
	[],
	[],
	)
end
