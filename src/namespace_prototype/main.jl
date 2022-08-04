module edm4hep
	include("MCParticleConstructor.jl")
	using .MCParticleModule
	export MCParticle
	
	include("ClusterConstructor.jl")
	using .ClusterModule
	export Cluster

	include("ParticleIDConstructor.jl")
	using .ParticleIDModule
	export ParticleID
	
	include("CalorimeterHitConstructor.jl")
	using .CalorimeterHitModule
	export CalorimeterHit
end
