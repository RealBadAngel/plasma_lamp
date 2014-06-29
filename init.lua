minetest.register_node("plasmalamp:plasma_lamp_off", {
	description = "Plasma Lamp",
	drawtype = "glasslike_framed",
	tiles = {"steel_frame.png","glass_face_streaks.png"},
	paramtype = "light",
	sunlight_propagates = true,
	groups = {mesecon = 2, cracky = 3,oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	mesecons = {effector = { action_on = function(pos,node)
			minetest.swap_node(pos, {name = "plasmalamp:plasma_lamp_on", param2 = 255})
	end }}
})

minetest.register_node("plasmalamp:plasma_lamp_on", {
	description = "Plasma Lamp",
	drawtype = "glasslike_framed",
	tiles = {"steel_frame.png","glass_face_streaks.png"},
	special_tiles = {
		{
			name="plasma_storm.png",
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0},
		}
	},
	paramtype = "light",
	light_source = LIGHT_MAX - 1,
	sunlight_propagates = true,
	groups = {mesecon = 2, cracky = 3,oddly_breakable_by_hand = 3},
	sounds = default.node_sound_glass_defaults(),
	mesecons = {effector = { action_off = function(pos,node)
			minetest.swap_node(pos, {name = "plasmalamp:plasma_lamp_off", param2 = 0})
	end }}
})

