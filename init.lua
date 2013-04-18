minetest.register_abm({
		nodenames = {"default:lava_flowing"},
		neighbors = {"air"},
		interval = 1.0,
		chance = 1,
		action = function(pos, node, active_object_count, active_object_count_wider)
			if minetest.env:find_node_near(pos, 2, "default:lava_source") == nil then
				minetest.env:set_node(pos, {name="default:stone"}) ;
			end
		end,
})
