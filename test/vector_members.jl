include("../src/mutual_inclusion_prototype/ParticleIDConstructor.jl")
using Test

function write_data()

    p1=ParticleID()
    p1.PDG = 1
    p1.likelyhood = 2.345
    p1.parameters= [1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0]


    p2=ParticleID()
    p2.algorithmType = 12
    p2.likelyhood = 3.45
    p2.parameters = [3.0, 3.4, 3.8, 4.2, 4.6, 5.0, 5.4, 5.8, 6.2, 6.6, 7.0]

    p3=ParticleID()
    p3.Type = 3
    p3.likelyhood = 7.65
    p3.parameters= [0.0, 0.3, 0.6, 0.9, 1.2, 1.5, 1.8]


    return Vector{ParticleID}([p1,p2,p3])
end

function read_data(data)

    p1 = data[1]
    p2 = data[2]
    p3 = data[3]

    @test p1.PDG == 1
    @test p1.likelyhood == Float32(2.345)
    @test length(p1.parameters) == 9
    @test p1.parameters[1] == Float32(1.0)
    @test p1.parameters[2] == Float32(1.5)
    @test p1.parameters[3] == Float32(2.0)
    @test p1.parameters[4] == Float32(2.5)
    @test p1.parameters[5] == Float32(3.0)
    @test p1.parameters[6] == Float32(3.5)
    @test p1.parameters[7] == Float32(4.0)
    @test p1.parameters[8] == Float32(4.5)
    @test p1.parameters[9] == Float32(5.0)
    @test p1.parameters == Float32[1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0]

    @test p2.algorithmType == 12
    @test p2.likelyhood == Float32(3.45)
    @test length(p2.parameters) == 11
    @test p2.parameters[1] == Float32(3.0)
    @test p2.parameters[2] == Float32(3.4)
    @test p2.parameters[3] == Float32(3.8)
    @test p2.parameters[4] == Float32(4.2)
    @test p2.parameters[5] == Float32(4.6)
    @test p2.parameters[6] == Float32(5.0)
    @test p2.parameters[7] == Float32(5.4)
    @test p2.parameters[8] == Float32(5.8)
    @test p2.parameters[9] == Float32(6.2)
    @test p2.parameters[10] == Float32(6.6)
    @test p2.parameters[11] == Float32(7.0)
    @test p2.parameters == Float32[3.0, 3.4, 3.8, 4.2, 4.6, 5.0, 5.4, 5.8, 6.2, 6.6, 7.0]

    @test p3.Type == 3
    @test p3.likelyhood == Float32(7.65)
    @test length(p3.parameters) == 7
    @test p3.parameters[1] == Float32(0.0)
    @test p3.parameters[2] == Float32(0.3)
    @test p3.parameters[3] == Float32(0.6)
    @test p3.parameters[4] == Float32(0.9)
    @test p3.parameters[5] == Float32(1.2)
    @test p3.parameters[6] == Float32(1.5)
    @test p3.parameters[7] == Float32(1.8)
    @test p3.parameters == Float32[0.0, 0.3, 0.6, 0.9, 1.2, 1.5, 1.8]

end

read_data(write_data())
