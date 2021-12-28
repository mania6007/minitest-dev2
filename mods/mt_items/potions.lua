minetest.register_craftitem("mt_items:bottle", {
	description = "Bottle",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:0,3",
	on_use = function(itemstack,user,pointed_thing)
		local node = minetest.get_node(pointed_thing.under)
		local inv = user:get_inventory()
		if node.name == "mt_nodes:water_source"
		or node.name == "mt_nodes:water_flowing" then
			inv:add_item("main", "mt_items:water_bottle")
		elseif node.name == "mt_nodes:river_water_source"
		or node.name == "mt_nodes:river_water_flowing" then
			inv:add_item("main", "mt_items:river_water_bottle")
		end
		local count = itemstack:get_count()
		return "mt_items:bottle "..count-1
	end
})

minetest.register_craftitem("mt_items:water_bottle", {
	description = "Bottle with Water",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:1,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:water_bottle "..count-1
	end
})

minetest.register_craftitem("mt_items:river_water_bottle", {
	description = "Bottle with River Water",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:2,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:river_water_bottle "..count-1
	end
})

minetest.register_craftitem("mt_items:heal_potion", {
	description = "Healing Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:3,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		local hp = user:get_hp()
		user:set_hp(hp+10)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:heal_potion "..count-1
	end
})

minetest.register_craftitem("mt_items:speed_potion", {
	description = "Speed Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:4,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		user:set_fov(1.10, true, 0.25)
		user:set_physics_override({
			speed = 2.5
		})
		minetest.after(10, function()
			user:set_fov(0, true, 0.5)
			user:set_physics_override({
				speed = 1
			})
		end, user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:speed_potion "..count-1
	end
})

minetest.register_craftitem("mt_items:jump_potion", {
	description = "Jump Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:5,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		user:set_fov(1.10, true, 0.25)
		user:set_physics_override({
			jump = 1.5
		})
		minetest.after(10, function()
			user:set_fov(0, true, 0.5)
			user:set_physics_override({
				jump = 1
			})
		end, user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:jump_potion "..count-1
	end
})

minetest.register_craftitem("mt_items:river_heal_potion", {
	description = "Healing Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:3,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		local hp = user:get_hp()
		user:set_hp(hp+15)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:river_heal_potion "..count-1
	end
})

minetest.register_craftitem("mt_items:river_speed_potion", {
	description = "Speed Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:4,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		user:set_fov(1.10, true, 0.25)
		user:set_physics_override({
			speed = 2.5
		})
		minetest.after(25, function()
			user:set_fov(0, true, 0.5)
			user:set_physics_override({
				speed = 1
			})
		end, user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:river_speed_potion "..count-1
	end
})

minetest.register_craftitem("mt_items:river_jump_potion", {
	description = "Jump Potion",
	inventory_image = "mt_item_atlas.png^[sheet:8x8:5,3^(mt_item_atlas.png^[sheet:8x8:0,3)",
	on_use = function(itemstack,user)
		user:set_fov(1.10, true, 0.25)
		user:set_physics_override({
			jump = 1.5
		})
		minetest.after(25, function()
			user:set_fov(0, true, 0.5)
			user:set_physics_override({
				jump = 1
			})
		end, user)
		local count = itemstack:get_count()
		local inv = user:get_inventory()
		inv:add_item("main", "mt_items:bottle")
		return "mt_items:jump_potion "..count-1
	end
})