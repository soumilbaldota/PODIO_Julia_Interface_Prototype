# for 3-d vectors float or double or int  with add() subtract() and equal() methods

mutable struct Vector3d{T}
    x::T
    y::T
    z::T
end

function add(v1::Vector3d,v2::Vector3d)
    return Vector3d(v1.x+v2.x, v1.y+v2.y ,v1.z+v2.z)
end

function subtract(v1::Vector3d,v2::Vector3d)
    return Vector3d(v1.x-v2.x, v1.y-v2.y ,v1.z-v2.z)
end

function equal(v1::Vector3d,v2::Vector3d)
    return ((v1.x==v2.x)&&(v1.y==v2.y)&&(v1.z==v2.z))
end

# for 2-d vectors float or double or int with add() subtract() and equal() methods

mutable struct Vector2d{T}
    x::T
    y::T
end

function add(v1::Vector2d,v2::Vector2d)
    return Vector3d(v1.x+v2.x, v1.y+v2.y)
end

function subtract(v1::Vector2d,v2::Vector2d)
    return Vector3d(v1.x-v2.x, v1.y-v2.y)
end

function equal(v1::Vector2d,v2::Vector2d)
    return ((v1.x==v2.x)&&(v1.y==v2.y))
end

#datatypes for overloading operators

vect=Union{Vector3d,Vector2d}

#operator overloading methods

function Base.:+(x::vect,y::vect)       
    return add(x,y)
end

function Base.:-(x::vect,y::vect)
    return subtract(x,y)
end

function Base.:(==)(x::vect,y::vect)
    return equal(x,y)
end
