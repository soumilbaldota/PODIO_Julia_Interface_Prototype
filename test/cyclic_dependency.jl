include("../src/mutual_inclusion_prototype/VertexConstructor.jl")
include("../src/mutual_inclusion_prototype/ReconstructedParticleConstructor.jl")
using Test

function tester()
    
    v1=Vertex()
    v1.chi2 = Float32(5)
    v1.probability = Float32(16)
    v1.algorithmType = Int32(12)

    r1 = ReconstructedParticle()
    r1.type = Int32(1)
    r1.charge = Float32(12)
    r1.mass = Float32(1)
    r1.startVertex = v1

    v2 = Vertex()
    v2.primary = Int32(12)
    v2.position = Vector3f(1,2,2)
    v2.associatedParticle = r1

    @test v2.associatedParticle.type == Int32(1)
    @test v2.associatedParticle.charge == Float32(12)
    @test v2.associatedParticle.mass == Float32(1)
    @test v2.associatedParticle.startVertex.chi2 == Float32(5)
    @test v2.associatedParticle.startVertex.probability == Float32(16)
    @test v2.associatedParticle.startVertex.algorithmType == Int32(12)
    @test v2.position.x == Float32(1)
    @test v2.position.y == Float32(2)
    @test v2.position.z == Float32(2)
end

tester()