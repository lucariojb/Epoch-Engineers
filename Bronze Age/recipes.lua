data:extend({
    {
        icon = graphicspath .. "icons/wood-bucket.png",
        icon_size = 128,
        type = "recipe",
        name = "wood-bucket",
        category = "wood-processing",
        ingredients = {
            { "wood", 10 }, { "natural-fiber", 5 }, { "clay", 5 }
        },
        result = "wood-bucket",
        enabled = false,
    },
    {
        icon = graphicspath .. "icons/hemp-seeds.png",
        icon_size = 128,
        type = "recipe",
        name = "grow-hemp",
        category = "farmland",
        subgroup = "raw-material",
        ingredients = {},
        results = { { "hemp", 20 }, { "hemp-seeds", 2 } },
        energy_required = 120,
        enabled = false,
    }
})
