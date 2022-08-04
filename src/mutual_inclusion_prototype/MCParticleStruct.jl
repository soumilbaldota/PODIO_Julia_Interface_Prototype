include("Vector3fConstructor.jl")
include("Vector2iConstructor.jl")
include("Vector3dConstructor.jl")
mutable struct MCParticle{T}
	PDG::Int32
	generatorStatus::Int32
	simulatorStatus::Int32
	charge::Float32
	time::Float32
	mass::Float64
	vertex::Vector3d
	endpoint::Vector3d
	momentum::Vector3f
	momentumAtEndpoint::Vector3f
	spin::Vector3f
	colorFlow::Vector2i
	parents::Vector{ T }
	daughters::Vector{ T }
end
