data:extend({
    -- Stone Age Pack 1
    {
        type = "tool",
        name = "stoneage-pack-1",
        subgroup = "science-pack",
        icon = graphicspath .. "Icons/stoneage-pack-1.png",
        icon_size = 64,
        stack_size = 100,
        durability = 1

    }, -- Recipe
    {
        type = "recipe",
        name = "automation-science-pack",
        energy_required = 8,
        ingredients = { { "wood", 4 }, { "flint", 1 }, { "natural-fiber", 1 } },
        results = { { "stoneage-pack-1", 4 } }
    },
    -- Bronze Age Pack
    {
        type = "tool",
        name = "bronzeage-pack",
        subgroup = "science-pack",
        icon = graphicspath .. "Icons/bronzeage.png",
        icon_size = 64,
        stack_size = 100,
        durability = 1

    }, -- Recipe
    {
        type = "recipe",
        name = "bronzeage-pack",
        energy_required = 8,
        ingredients = { { "brick", 4 }, { "charcoal", 4 }, { "pulley", 1 } },
        results = { { "bronzeage-pack", 4 } },
        enabled = false
    }
})
