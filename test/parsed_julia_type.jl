include("../src/parse_type.jl")

cpp_types=["double", "bool", "int", "float", "int8_t", "uint8_t", "int16_t", "uint16_t", "int32_t", "uint32_t", "int64_t", "uint64_t"]

for type in cpp_types
	jl_string = get_julia_type(type)
	parsed_symbol = eval(Meta.parse(jl_string))(0)
	@test repr(typeof(parsed_symbol)) == jl_string
end

