include("ReconstructedParticleStruct.jl")
include("VertexStruct.jl")
function ReconstructedParticle()
	return ReconstructedParticle{Vertex}(
	nothing,
	)
end