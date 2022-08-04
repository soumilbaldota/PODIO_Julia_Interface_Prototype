module OuterNamespace #parent module

module MCParticlemodule
export MCParticle
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
end

using .MCParticlemodule  # brings MCParticle into the namespace
export MCParticle # export it from OuterNamespace also

end

#= 

MCParticle can be accessed using

julia> include("MCParticleConstructor.jl")
Main.OuterNamespace

julia> OuterNamespace.MCParticle()
Main.OuterNamespace.MCParticlemodule.MCParticle{Main.OuterNamespace.MCParticlemodule.MCParticle}
(0, 0, 0, 0.0f0, 0.0f0, 0.0, Main.OuterNamespace.MCParticlemodule.Vector3d(0.0, 0.0, 0.0), 
Main.OuterNamespace.MCParticlemodule.Vector3d(0.0, 0.0, 0.0), Main.OuterNamespace.MCParticlemodule.Vector3f(0.0f0, 0.0f0, 0.0f0), 
Main.OuterNamespace.MCParticlemodule.Vector3f(0.0f0, 0.0f0, 0.0f0), Main.OuterNamespace.MCParticlemodule.Vector3f(0.0f0, 0.0f0, 0.0f0), 
Main.OuterNamespace.MCParticlemodule.Vector2i(0, 0), Main.OuterNamespace.MCParticlemodule.MCParticle[], 
Main.OuterNamespace.MCParticlemodule.MCParticle[])


=#