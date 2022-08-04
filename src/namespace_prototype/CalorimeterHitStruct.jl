include("Vector3fConstructor.jl")
mutable struct CalorimeterHit
	cellID::UInt64
	energy::Float32
	energyError::Float32
	time::Float32
	position::Vector3f
	type::Int32
end
