julia_type = Dict(

	"float" => "Float32" ,
	"double" => "Float64" ,
	"bool" => "Bool" ,
	"int" => "Int64" ,
	"int8_t" => "Int8" ,
	"uint8_t" => "UInt8" ,
	"int16_t" => "Int16" ,
	"uint16_t" => "UInt16" ,
	"int32_t" => "Int32" ,
	"uint32_t" => "UInt32" ,
	"int64_t" => "Int64" ,
	"uint64_t" => "UInt64" ,
	)
function get_julia_type(s::String)

	return julia_type[s]
end

# we can return the julia type as "Type" also

# julia_type = Dict(

# 	"float" => Float32,
# 	"double" => Float64,
# 	"bool" => Bool,
# 	"int" => Int,
# 	"int8_t" => Int8,
# 	"uint8_t" => UInt8,
# 	"int16_t" => Int16,
# 	"uint16_t" => UInt16,
# 	"int32_t" => Int32,
# 	"uint32_t" => UInt32,
# 	"int64_t" => Int64,
# 	"uint64_t" => UInt64,
# 	)


