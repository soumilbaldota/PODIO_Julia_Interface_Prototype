mutable struct RawCalorimeterHit
    cellID::UInt64
    amplitude::Int32
    timeStamp::Int32
end
function RawCalorimeterHit()
    return RawCalorimeterHit(
        UInt64(0),
        Int32(0),
        Int32(0),
    )
end