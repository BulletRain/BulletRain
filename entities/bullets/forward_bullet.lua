require 'components.bulletbehavior.straight_line'
require 'entities.empty_bullet'

require 'components.simple_image'
local id = 0
print("LOAD MEH")
function get_forward_bullet(_, x,y,rotation,side)
 	local entity = get_empty_bullet(nil, x,y,rotation,side)
 	
 	entity.name="forward_".. entity.name
	if side == "enemy" then
		add_straight_line_component(entity,120)
	else
		add_straight_line_component(entity,900)
	end
	return entity
end
print(get_empty_bullet)