local radius = minetest.setting_get("lava_cooling_radius")

if radius == nil then
	radius = 2
end

minetest.register_abm({
		nodenames = {"default:lava_flowing"},
		neighbors = {"air"},
		interval = 1.0,
		chance = 1,
		action = function(pos, node, active_object_count, active_object_count_wider) 
			if minetest.env:find_node_near(pos, radius, "default:lava_source") == nil or
			# minetest.env:find_nodes_in_area({pos.x-1, pos.y-1, pos.z-1}, {pos.x+1, pos.y+2, pos.z+1}, "air", "default:lava_flowing") > 12 then
				minetest.env:set_node(pos, {name="default:stone"}) ;
			end
		end,
})
