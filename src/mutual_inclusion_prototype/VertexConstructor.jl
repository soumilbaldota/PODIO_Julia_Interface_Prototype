include("ReconstructedParticleStruct.jl")
include("VertexStruct.jl")
function Vertex()
	return Vertex{ReconstructedParticle}(
	nothing,
	)
end

