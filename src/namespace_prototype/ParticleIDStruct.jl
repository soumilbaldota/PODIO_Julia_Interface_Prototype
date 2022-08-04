mutable struct ParticleID
	Type::Int32
	PDG::Int32
	algorithmType::Int32
	likelyhood::Float32
	parameters::Vector{ Float32 }
end
