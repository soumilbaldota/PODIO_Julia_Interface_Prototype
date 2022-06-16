include("vectors.jl")
mutable struct CalorimeterHit
    cellID::UInt64
    energy::Float32
    energyError::Float32
    time::Float32
    position::Vector3d{Float32}
    Type::Int32
    
end
function CalorimeterHit()
    return CalorimeterHit(
        UInt64(0),
        Float32(0.0),
        Float32(0.0),
        Float32(0.0),
        Vector3d{Float32}(0.0,0.0,0.0),
        Int32(0),
    )
end

function Base.setproperty!(x::CalorimeterHit, f::Symbol, v::Vector)
	setfield!(x,f,typeof(getfield(x,f))(v...))
end
