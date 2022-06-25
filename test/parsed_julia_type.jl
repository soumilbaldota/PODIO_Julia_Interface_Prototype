using StaticArrays

include("../src/parse_type.jl")
@test eval(Meta.parse(get_julia_type("double"))) == Float64
@test eval(Meta.parse(get_julia_type("bool"))) == Bool
@test eval(Meta.parse(get_julia_type("int"))) == Int64
@test eval(Meta.parse(get_julia_type("float"))) == Float32
@test eval(Meta.parse(get_julia_type("int8_t"))) == Int8
@test eval(Meta.parse(get_julia_type("uint8_t"))) == UInt8
@test eval(Meta.parse(get_julia_type("int16_t"))) == Int16
@test eval(Meta.parse(get_julia_type("uint16_t"))) == UInt16
@test eval(Meta.parse(get_julia_type("int32_t"))) == Int32
@test eval(Meta.parse(get_julia_type("uint32_t"))) == UInt32
@test eval(Meta.parse(get_julia_type("int64_t"))) == Int64
@test eval(Meta.parse(get_julia_type("uint64_t"))) == UInt64
@test eval(Meta.parse(get_julia_type("std::array<float,6>"))) == MArray{Tuple{6}, Float32, 1, 6}
@test eval(Meta.parse(get_julia_type("std::array<float,6>"))) == MVector{6,Float32}
@test eval(Meta.parse(get_julia_type("std::array<float,21>"))) == MArray{Tuple{21}, Float32, 1, 21}
@test eval(Meta.parse(get_julia_type("std::array<float,21>"))) == MVector{21,Float32}
