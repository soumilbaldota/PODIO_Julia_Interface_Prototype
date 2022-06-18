include("write_events.jl")
include("../MCParticleCollection.jl")
a=write_data()
@assert typeof(a)==MCParticleCollection
function read_data(a::MCParticleCollection)
    mcp1=a[1]
    mcp2=a[2]
    mcp3=a[3]
    mcp4=a[4]
    mcp5=a[5]
    mcp6=a[6]
    mcp7=a[7]
    mcp8=a[8]
    
    @assert mcp1.PDG == 2212
    @assert mcp1.mass == 0.938
    @assert mcp1.momentumAtEndpoint == Vector3d{Float32}(0,0,7000)
    @assert mcp1.generatorStatus ==3
    
    @assert mcp2.PDG == 2212
    @assert mcp2.mass == 0.938
    @assert mcp2.momentumAtEndpoint == Vector3d{Float32}(0,0,-7000)
    @assert mcp2.generatorStatus ==3
    
    @assert mcp3.PDG == 1
    @assert mcp3.mass == 0.0
    @assert mcp3.momentumAtEndpoint == Vector3d{Float32}(0.75,-1.569,32.191)
    @assert mcp3.generatorStatus ==3 
    @assert length(mcp3.parents)== 1
    @assert mcp3.parents[1] == mcp1
#     @assert mcp3.parents == MCParticleCollection([mcp1])
    
    @assert mcp4.PDG == -2
    @assert mcp4.mass == 0.0
    @assert mcp4.momentumAtEndpoint == Vector3d{Float32}(-3.047, -19, -54.629)
    @assert mcp4.generatorStatus ==3
    @assert length(mcp4.parents) == 1
    @assert mcp4.parents[1] == mcp2
#     @assert mcp4.parents == MCParticleCollection([mcp2])
    
    @assert mcp5.PDG == -24
    @assert mcp5.mass == 80.799
    @assert mcp5.momentumAtEndpoint == Vector3d{Float32}(-1.517,-20.68,-20.605)
    @assert mcp5.generatorStatus ==3
    @assert length(mcp5.parents) == 2
    @assert mcp5.parents[1] == mcp1
    @assert mcp5.parents[2] == mcp2
#     @assert mcp5.parents == MCParticleCollection([mcp1,mcp2])
    
    @assert mcp6.PDG ==  1
    @assert mcp6.mass ==  0.0
    @assert mcp6.momentumAtEndpoint ==  Vector3d{Float32}(-2.445,-28.816,6.082)
    @assert mcp6.generatorStatus== 1
    @assert length(mcp6.parents) == 1
    @assert mcp6.parents[1] == mcp5
#     @assert mcp6.parents == MCParticleCollection([mcp5])
    
    @assert mcp7.PDG ==  1
    @assert mcp7.mass ==  0.0
    @assert mcp7.momentumAtEndpoint ==  Vector3d{Float32}(-2.445,-28.816,6.082)
    @assert mcp7.generatorStatus== 1
    @assert length(mcp7.parents) == 1
    @assert mcp7.parents[1] == mcp5
#     @assert mcp7.parents == MCParticleCollection([mcp5])
    
    @assert mcp8.PDG ==  -2
    @assert mcp8.mass ==  0.0
    @assert mcp8.momentumAtEndpoint ==  Vector3d{Float32}(-3.962,-49.498,-26.687)
    @assert mcp8.generatorStatus== 1
    @assert length(mcp8.parents) == 1
    @assert mcp8.parents[1] == mcp5
#     @assert mcp8.parents == MCParticleCollection([mcp5])

end
