module CalorimeterHitModule
export CalorimeterHit
include("CalorimeterHitStruct.jl")
function CalorimeterHit()
	return CalorimeterHit(
	UInt64(0),
	Float32(0),
	Float32(0),
	Float32(0),
	Vector3f(),
	Int32(0),
	)
end
end
