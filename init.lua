
minetest.register_tool("sabers:saber", {
	description = "lightsaber",
	inventory_image = "saber.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(200)
 	end,
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			snappy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=99}
	},
})

minetest.register_tool("sabers:saber_sith", {
	description = "The sith's lightsaber",
	inventory_image = "sith_saber.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(300)
 	end,
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			snappy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
			choppy={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=198}
	},
})

minetest.register_tool("sabers:saber_doom", {
	description = "lightsaber of DOOM",
	inventory_image = "doom_saber.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(20)
 	end,
	tool_capabilities = {
		max_drop_level=99,
		groupcaps={
			cracky={times={[1]=0.5, [2]=0.06, [3]=0.07}, uses=99, maxlevel=99},
			crumbly={times={[1]=0.5, [2]=0.06, [3]=0.07}, uses=99, maxlevel=99},
			snappy={times={[1]=0.5, [2]=0.06, [3]=0.07}, uses=99, maxlevel=99},
			choppy={times={[1]=0.5, [2]=0.06, [3]=0.07}, uses=99, maxlevel=99},
		},
		damage_groups = {fleshy=594}
	},
})

minetest.register_craft({
	output = "sabers:saber",
	recipe = {
		{"default:steel_ingot", "", "default:steel_ingot"},
		{"default:steel_ingot", "default:mese_crystal", "default:steel_ingot"},
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
	}
})


minetest.register_tool("sabers:ray_gun", {
	description = "ray_gun",
	inventory_image = "ray_gun.png",
	after_use = function(itemstack, user, pointed_thing)
		itemstack:add_wear(20)
 	end,
	tool_capabilities = {
		max_drop_level=50,
		groupcaps={
			crumbly={times={[1]=0.50, [2]=1.00, [3]=1.50}, uses=50, maxlevel=50},
		},
		damage_groups = {fleshy=50}
	},
})

minetest.register_craft({
	output = "sabers:ray_gun",
	recipe = {
		{"", "", ""},
		{"default:steel_ingot", "default:mese_crystal", "default:steel_ingot"},
		{"", "", "default:steel_ingot"},
	}
})

minetest.register_craft({
	output = "sabers:saber_doom",
	recipe = {
		{"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
		{"sabers:sith_saber", "sabers:sith_saber", "sabers:sith_saber"},
		{"default:mese_crystal", "default:mese_crystal", "default:mese_crystal"},
	}
})

minetest.register_craft({
	output = "sabers:saber_doom",
	recipe = {
		{"", "sabers:saber", ""},
		{"", "default:mese_crystal", ""},
		{"", "sabers:saber", ""},
	}
})