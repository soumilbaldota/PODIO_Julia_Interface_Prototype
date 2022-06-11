include("../MCParticle.jl")
include("../vectors.jl")
mcp1 = MCParticle()
mcp1.PDG = 2212
mcp1.mass = 0.938
mcp1.momentumAtEndpoint = Vector3d{Float32}(0.0,0.0,7000.0)
mcp1.generatorStatus=3

mcp2 = MCParticle()
mcp2.PDG = 2212
mcp2.mass = 0.938
mcp2.momentumAtEndpoint = Vector3d{Float32}(0.0,0.0,-7000.0)
mcp2.generatorStatus=3

mcp3 = MCParticle()
mcp3.PDG = 1
mcp3.mass = 0.0
mcp3.momentumAtEndpoint = Vector3d{Float32}(0.750,-1.569,32.191)
push!(mcp3.parents,mcp1)

mcp4 = MCParticle()
mcp4.PDG = -2
mcp4.mass = 0.0
mcp4.momentumAtEndpoint = Vector3d{Float32}(-3.047,-19.000,-54.629)
mcp4.generatorStatus=3
push!(mcp4.parents,mcp2)

mcp5 = MCParticle()
mcp5.PDG = -24
mcp5.mass = 80.799
mcp5.momentumAtEndpoint = Vector3d{Float32}(-1.517,-20.68,-20.605)
mcp5.generatorStatus=3
push!(mcp5.parents,mcp1)
push!(mcp5.parents,mcp2)

mcp6 = MCParticle()
mcp6.PDG = 1
mcp6.mass = 0.0
mcp6.momentumAtEndpoint = Vector3d{Float32}(-2.445,-28.816,6.082)
mcp6.generatorStatus=1
push!(mcp6.parents,mcp5)

mcp7 = MCParticle()
mcp7.PDG = 1
mcp7.mass = 0.0
mcp7.momentumAtEndpoint = Vector3d{Float32}(-2.445,-28.816,6.082)
mcp7.generatorStatus=1
push!(mcp7.parents,mcp5)

mcp8 = MCParticle()
mcp8.PDG = -2
mcp8.mass = 0.0
mcp8.momentumAtEndpoint = Vector3d{Float32}(-3.962,-49.498,-26.687)
mcp8.generatorStatus=1
push!(mcp8.parents,mcp5)

Vector{MCParticle}(
[mcp1,mcp2,mcp3,mcp4,mcp5,mcp6,mcp7,mcp8]
)
