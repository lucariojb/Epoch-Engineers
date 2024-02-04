data:extend({
    -- Natural Fiber
    {
        type = "recipe",
        name = "natural-fiber",
        category = "crafting",
        ingredients = { { "grass", 4 } },
        results = { { "natural-fiber", 1 } },
        energy_required = 2,
        enabled = true
    },
    -- Natural Fiber from Wood
    {
        type = "recipe",
        name = "natural-fiber-wood",
        category = "wood-processing",
        ingredients = { { "wood", 4 } },
        results = { { "natural-fiber", 1 } },
        energy_required = 2,
        enabled = false
    },
    --Whetstone
    {
        type = "recipe",
        name = "whetstone",
        category = "crafting",
        ingredients = { { "stone", 4 }, { "flint", 1 } },
        results = { { "whetstone", 1 } },
        energy_required = 4,
        enabled = false
    },
    --Clay Rich Water
    {
        type = "recipe",
        name = "clay-mud",
        category = "clay-mining",
        ingredients = {},
        results = { { type = "fluid", name = "clay-mud", amount = 90 } },
        energy_required = 10,
        enabled = true,
        hide_from_player_crafting = true
    },
    --Clay Drying
    {
        type = "recipe",
        name = "dry-clay",
        category = "air-drying",
        ingredients = { { type = "fluid", name = "clay-mud", amount = 100 } },
        results = { { "clay", 10 } },
        energy_required = 100,
        enabled = false
    },
    --Grass Drying
    {
        type = "recipe",
        name = "dry-grass",
        category = "air-drying",
        ingredients = { { "grass", 2 } },
        results = { { "dry-grass", 1 } },
        energy_required = 100,
        enabled = false
    },
    --Firestarter
    {
        type = "recipe",
        name = "firestarter",
        category = "crafting",
        ingredients = { { "stick", 2 }, { "flint", 2 }, { "dry-grass", 1 } },
        results = { { "firestarter", 1 } },
        energy_required = 3,
        enabled = false
    },
    --Raw Brick
    {
        type = "recipe",
        name = "raw-brick",
        category = "stone-processing",
        ingredients = { { "clay", 4 }, { "stone", 2 } },
        results = { { "raw-brick", 1 } },
        energy_required = 4,
        enabled = false
    },
    --Smelt Brick
    {
        type = "recipe",
        name = "brick",
        category = "smelting",
        ingredients = { { "raw-brick", 1 } },
        results = { { "brick", 1 } },
        energy_required = 8,
        enabled = false
    },
    --Arror Head from Flint
    {
        type = "recipe",
        name = "arrow-head-flint",
        category = "crafting",
        ingredients = { { "flint", 1 } },
        results = { { "arrow-head", 1 } },
        energy_required = 2,
        enabled = false
    },
    --Arrow Head from Stone
    {
        type = "recipe",
        name = "arrow-head",
        category = "stone-processing",
        ingredients = { { "stone", 2 } },
        results = { { "arrow-head", 1 } },
        energy_required = 4,
        enabled = false
    },
    --Wooden Gear
    {
        type = "recipe",
        name = "wooden-gear",
        category = "wood-processing",
        ingredients = { { "wood", 2 } },
        results = { { "wooden-gear", 1 } },
        energy_required = 2,
        enabled = false
    },
    --Wood Axis
    {
        type = "recipe",
        name = "wood-axis",
        category = "wood-processing",
        ingredients = { { "wood", 2 }, { "wooden-gear", 1 } },
        results = { { "wood-axis", 1 } },
        energy_required = 2,
        enabled = false
    },
    --Wood Handle
    {
        type = "recipe",
        name = "wooden-handle",
        category = "wood-processing",
        ingredients = { { "wood", 2 }, { "wooden-gear", 2 } },
        results = { { "wooden-handle", 1 } },
        energy_required = 2,
        enabled = false
    },
    --Wood Handle Inital Recipe
    {
        type = "recipe",
        name = "wooden-handle-inital",
        category = "crafting",
        ingredients = { { "wood", 10 }, { "natural-fiber", 4 }, { "flint", 5 } },
        results = { { "wooden-handle", 1 } },
        energy_required = 2,
        enabled = false
    },
})
