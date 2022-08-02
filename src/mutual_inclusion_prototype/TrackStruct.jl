include("QuantityConstructor.jl")
include("TrackerHitConstructor.jl")
include("TrackStateConstructor.jl")
mutable struct Track
	type::Int32
	chi2::Float32
	ndf::Int32
	dEdx::Float32
	dEdxError::Float32
	radiusOfInnermostHit::Float32
	trackerHits::Vector{ TrackerHit }
	tracks::Vector{ Track }
	subDetectorHitNumbers::Vector{ Int32 }
	trackStates::Vector{ TrackState }
	dxQuantities::Vector{ Quantity }
end
