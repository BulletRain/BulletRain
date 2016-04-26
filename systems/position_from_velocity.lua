local system = {}

system.name = "p_from_v"

system.update = function(dt)
	for k,v in pairs(system.targets) do
		v.position.x = v.position.x + v.velocity.x * dt
		v.position.y = v.position.y + v.velocity.y * dt
	end
end

system.requirements = {velocity=true,position=true}

return system