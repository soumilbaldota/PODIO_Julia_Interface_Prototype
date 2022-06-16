include("vectors.jl")
include("CaloHitContribution.jl")
mutable struct SimCalorimeterHit
    cellID::UInt64
    energy::Float32
    position::Vector3d{Float32}
    contributions::Union{Nothing,CaloHitContribution} # one to one relation
end
function SimCalorimeterHit()
    return SimCalorimeterHit(
        UInt64(0),
        Float32(0.0),
        Vector3d{Float32}(0.0,0.0,0.0),
        nothing
    )
end

function Base.setproperty!(x::SimCalorimeterHit, f::Symbol, v::Vector)
	setfield!(x,f,typeof(getfield(x,f))(v...))
end
