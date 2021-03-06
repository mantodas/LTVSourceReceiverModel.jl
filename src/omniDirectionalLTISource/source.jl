"""
xxx
# Examples
```@example

```
"""
struct LTISource
  position::Vector{Float64}
  transmission ::Function
end

# Method
function (ğ½::LTISource)(ğâ::Vector{Float64}, tâ::Float64)
   ğ©â, p = ğ½.position, ğ½.transmission
   delay = distBetween(ğ©â,ğâ)/lightSpeed
   return A(delay) * p(tâ-delay)
end

# DISPLAY
Base.show(io::IO, x::LTISource) = print(io, "LTI omnidirectional source")
