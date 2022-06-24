include("../src/CaloHitContribution.jl")
using Test

function test_relations()

	mcp1 = MCParticle()
	mcp1.PDG = 2212
	mcp1.mass = 0.938
	mcp1.momentumAtEndpoint = [0.0,0.0,7000.0]
	mcp1.generatorStatus=3

	sccon1=CaloHitContribution()
	sccon1.PDG = 2
	sccon1.stepPosition =[7, 6.19, 12]
	sccon1.particle = mcp1
	sccon1.energy = 13.6

	sccon2=CaloHitContribution()
	sccon2.PDG = 2
	sccon2.stepPosition =[4.20, 6.32, 12]
	sccon2.particle = mcp1
	sccon2.energy = -12.32

	# making changes to the particle
	mcp1.mass = 0.637
	mcp1.momentumAtEndpoint = [1,2,3]

	@test sccon2.particle.mass == 0.637
	@test sccon2.particle.momentumAtEndpoint == Vector3d{Float32}(1,2,3)

	@test sccon1.particle.mass == 0.637
	@test sccon1.particle.momentumAtEndpoint == Vector3d{Float32}(1,2,3)

	@test sccon1.particle === sccon2.particle
end

test_relations()
