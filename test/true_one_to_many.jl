include("../MCParticle.jl")

function test_relations()

    mcp1 = MCParticle()
    mcp1.PDG = 2212
    mcp1.mass = 0.938
    mcp1.momentumAtEndpoint = [0.0,0.0,7000.0]
    mcp1.generatorStatus=3

    mcp2 = MCParticle()
    mcp2.PDG = 2212
    mcp2.mass = 0.938
    mcp2.momentumAtEndpoint = [0.0,0.0,-7000.0]
    mcp2.generatorStatus=3

    mcp3 = MCParticle()
    mcp3.PDG = 1
    mcp3.mass = 0.0
    mcp3.generatorStatus=3
    mcp3.momentumAtEndpoint = [0.750,-1.569,32.191]
    push!(mcp3.parents,mcp1)

    mcp4 = MCParticle()
    mcp4.PDG = -2
    mcp4.mass = 0.0
    mcp4.momentumAtEndpoint = [-3.047,-19.000,-54.629]
    mcp4.generatorStatus=3
    push!(mcp4.parents,mcp2)

    mcp5 = MCParticle()
    mcp5.PDG = -24
    mcp5.mass = 80.799
    mcp5.momentumAtEndpoint = [-1.517,-20.68,-20.605]
    mcp5.generatorStatus=3
    push!(mcp5.parents,mcp1)
    push!(mcp5.parents,mcp2)

    mcp1.mass = 0.612
    mcp2.mass = 0.745

    # passes if values are changed in parents 

    @assert mcp3.parents[1].mass == 0.612
    @assert mcp4.parents[1].mass == 0.745
    @assert mcp5.parents[1].mass == 0.612
    @assert mcp5.parents[2].mass == 0.745
end

test_relations()