"""
xxx
# Examples
```@example

```
"""
struct LTIListener
   sourceList::Vector{Source}
   position::Vector{Float64}
end

function (Ψ::LTIListener)(t₀::Float64)
sourceList = Ψ.sourceList
𝐩ᵣ = Ψ.position
   val = 0.0
   for i = 1:length(sourceList)
      val+=sourceList[i](𝐩ᵣ,t₀)
   end
   return val
end

# DISPLAY
Base.show(io::IO, x::LTIListener) = print(io, "LTI omnidirectional listener")
