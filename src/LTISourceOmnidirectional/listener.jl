struct stationaryListenerOmnidirectional
   sourceList::Vector{Source}
   position::Vector{Float64}
end

function (listener::stationaryListenerOmnidirectional)(t₀::Float64)
sourceList = listener.sourceList
𝐩ᵣ = listener.position
   val = 0.0
   for i = 1:length(sourceList)
      val+=sourceList[i](𝐩ᵣ,t₀)
   end
   return val
end
