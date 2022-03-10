
struct LTISource
  position::Vector{Float64}
  transmission ::Function
end

# Method
function (𝚽::LTISource)(𝛏₀::Vector{Float64}, t₀::Float64)
   𝐩ₛ, p = 𝚽.position, 𝚽.transmission
   delay = distBetween(𝐩ₛ,𝛏₀)/lightSpeed
   return A(delay) * p(t₀-delay)
end
