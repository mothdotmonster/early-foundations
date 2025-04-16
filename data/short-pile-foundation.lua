local item = table.deepcopy(data.raw["item"]["foundation"])
item.name = "short-pile-foundation"
item.place_as_tile = {
	condition = {
		layers = {}
	},
	condition_size = 1,
	result = "short-pile-foundation",
	tile_condition = {
		"water",
		"deepwater",
		"water-green",
		"deepwater-green",
		"water-mud",
		"water-shallow",
		"wetland-light-green-slime",
		"wetland-green-slime",
		"wetland-light-dead-skin",
		"wetland-dead-skin",
		"wetland-pink-tentacle",
		"wetland-red-tentacle",
		"wetland-yumako",
		"wetland-jellynut",
		"oil-ocean-shallow"
	}
}
item.icon = "__early-foundations__/icons/item.png"
item.icon_size = 64

local recipe = {
	type = "recipe",
	name = "short-pile-foundation",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{type = "item", name = "steel-plate", amount = 4},
		{type = "item", name = "low-density-structure", amount = 8},
		{type = "item", name = "refined-concrete", amount = 10}
	},
	results = {{type = "item", name = "short-pile-foundation", amount = 1}}
}

data:extend{item, recipe}

local tile = table.deepcopy(data.raw["tile"]["foundation"])
tile.name = "short-pile-foundation"
tile.minable = {
	mining_time = 0.5,
	result = "short-pile-foundation"
}
tile.tint = {.9, .8, .8}

data:extend({tile})

local tech = {
	type = "technology",
	name = "short-pile-foundation",
	icon = "__early-foundations__/icons/tech.png",
	icon_size = 256,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "short-pile-foundation"
		},
	},
	prerequisites = {"electromagnetic-science-pack"},
	unit =
	{
		count = 500,
		ingredients =
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"space-science-pack", 1},
			{"electromagnetic-science-pack", 1},
			{"metallurgic-science-pack", 1},
		},
		time = 20
	}
}

data:extend({tech})