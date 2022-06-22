include("../CaloHitContributionCollection.jl")

function write_data()

	sccon1=CaloHitContribution()
	sccon1.PDG = 1
	sccon1.stepPosition = [3,7,12]
	mcp1 = MCParticle()
	mcp1.PDG = 2212
	mcp1.mass = 0.938
	mcp1.momentumAtEndpoint = [0.0,0.0,7000.0]
	mcp1.generatorStatus=3
	sccon1.particle = mcp1
	sccon1.energy = 12.6


	sccon2=CaloHitContribution()
	sccon2.PDG = 2
	sccon2.stepPosition =[7, 6.32, 12]
	sccon2.particle = mcp1
	sccon2.energy = 13.6

	sccon3=CaloHitContribution()
	sccon3.PDG = 3 
	sccon3.stepPosition =[17.89, 2.3, 1.618]
	mcp3 = MCParticle()
	mcp3.PDG = 1
	mcp3.mass = 0.0
	mcp3.generatorStatus=3
	mcp3.momentumAtEndpoint = [0.750,-1.569,32.191]
	sccon3.particle = mcp3
	sccon3.energy = 4.23

	sccon4=CaloHitContribution()
	sccon4.PDG = 4
	sccon4.stepPosition = [5.7, 3.14, 12]
	mcp4 = MCParticle()
	mcp4.PDG = -2
	mcp4.mass = 0.0
	mcp4.momentumAtEndpoint = [-3.047,-19.000,-54.629]
	mcp4.generatorStatus=3
	sccon4.particle = mcp4
	sccon4.time = 12.65

	return CaloHitContributionCollection([sccon1, sccon2, sccon3, sccon4])
end

function read_data(a::CaloHitContributionCollection)

	sccon1 = a[1]
	sccon2 = a[2]
	sccon3 = a[3]
	sccon4 = a[4]

	
	@assert sccon1.PDG == 1
	@assert sccon1.stepPosition == Vector3d{Float32}(3,7,12)
	@assert sccon1.particle.PDG == 2212
	@assert sccon1.particle.mass == 0.938
	@assert sccon1.particle.momentumAtEndpoint == Vector3d{Float32}(0.0,0.0,7000.0)
	@assert sccon1.particle.generatorStatus == 3
	@assert sccon1.energy == Float32(12.6)

	@assert sccon2.PDG == 2
	@assert sccon2.stepPosition == Vector3d{Float32}(7, 6.32, 12)
	@assert sccon2.particle.PDG == 2212
	@assert sccon2.particle.mass == 0.938
	@assert sccon2.particle.momentumAtEndpoint == Vector3d{Float32}(0.0,0.0,7000.0)
	@assert sccon2.particle.generatorStatus == 3
	@assert sccon2.energy == Float32(13.6)

	# checking egality of particle object
	@assert sccon2.particle === sccon1.particle

	@assert sccon3.PDG == 3
	@assert sccon3.stepPosition == Vector3d{Float32}(17.89, 2.3, 1.618)
	@assert sccon3.particle.PDG == 1
	@assert sccon3.particle.mass == 0.0
	@assert sccon3.particle.momentumAtEndpoint == Vector3d{Float32}(0.750,-1.569,32.191)
	@assert sccon3.particle.generatorStatus == 3
	@assert sccon3.energy == Float32(4.23)

	@assert sccon4.PDG == 4
	@assert sccon4.stepPosition == Vector3d{Float32}(5.7, 3.14, 12)
	@assert sccon4.particle.PDG == -2
	@assert sccon4.particle.mass == 0.0
	@assert sccon4.particle.momentumAtEndpoint == Vector3d{Float32}(-3.047,-19.000,-54.629)
	@assert sccon4.particle.generatorStatus == 3
	@assert sccon4.time == Float32(12.65)

end

read_data(write_data())
