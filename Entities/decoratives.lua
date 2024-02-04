noise = require("noise")

local autoplaceTileRestrictions = { "tile-unknown",
    "tutorial-grid",
    "water",
    "water-green",
    "water-mud",
    "water-shallow",
    "water-wube" }




data:extend({ -- Gras Pile
    {
        name = "grass-pile",
        type = "simple-entity",
        flags = { "placeable-neutral", "placeable-off-grid" },
        icon = graphicspath .. "entities/entity_grass.png",
        icon_size = 128,
        subgroup = "grass",
        selection_box = { { -1.0, -0.8 }, { 0.7, 0.9 } },
        minable = {
            mining_particle = "wooden-particle",
            mining_time = 0.2,
            results = { {
                name = "grass",
                amount_min = 2,
                amount_max = 8
            } }
        },
        map_color = {
            r = 129,
            g = 105,
            b = 78
        },
        render_layer = "object",
        max_health = 10,
        autoplace = {
            coverage = 0.00125,
            max_probability = 0.0875,
            --order = "a[doodad]-a[rock]-a[huge]",
            peaks = {
                {
                    influence = -0.1
                },
                {
                    noise_layer = "rocks",
                    noise_octaves_difference = -2,
                    noise_persistence = 0.9,
                }
            },
            sharpness = 0.7,
            starting_area_amount = 8
        },

        pictures = {
            filename = graphicspath .. "entities/entity_grass.png",
            width = 128,
            height = 128,
            shift = { 0.25, 0.0625 }
        }
    },
    -- {
    --     name = "hemp",
    --     type = "simple-entity",
    --     flags = { "placeable-neutral", "placeable-off-grid" },
    --     icon = graphicspath .. "entities/entity_grass.png",
    --     icon_size = 128,
    --     subgroup = "grass",
    --     selection_box = { { -1.0, -0.8 }, { 0.7, 0.9 } },
    --     minable = {
    --         mining_particle = "wooden-particle",
    --         mining_time = 0.2,
    --         results = { {
    --             name = "grass",
    --             amount_min = 2,
    --             amount_max = 8
    --         } }
    --     },
    --     map_color = {
    --         r = 129,
    --         g = 105,
    --         b = 78
    --     },
    --     render_layer = "object",
    --     max_health = 10,
    --     autoplace = {
    --         coverage = 0.00125,
    --         max_probability = 0.0875,
    --         order = "a[doodad]-a[rock]-a[huge]",
    --         peaks = {
    --             {
    --                 influence = -0.1
    --             },
    --             {
    --                 noise_layer = "rocks",
    --                 noise_octaves_difference = -2,
    --                 noise_persistence = 0.9,
    --             }
    --         },
    --         sharpness = 0.7,
    --         starting_area_amount = 8
    --     },
    --     pictures = {
    --         filename = graphicspath .. "entities/entity_grass.png",
    --         width = 128,
    --         height = 128,
    --         shift = { 0.25, 0.0625 }
    --     }
    -- },
    {
        name = "flint_ground",
        type = "simple-entity",
        flags = { "placeable-neutral", "placeable-off-grid" },
        icon = graphicspath .. "entities/entity_flint.png",
        icon_size = 64,
        selection_box = { { -1.0, -0.8 }, { 0.7, 0.9 } },
        minable = {
            mining_particle = "stone-particle",
            mining_time = 0.1,
            results = { {
                name = "flint",
                amount_min = 1,
                amount_max = 1
            } }
        },
        map_color = {
            r = 129,
            g = 105,
            b = 78
        },
        count_as_rock_for_filtered_deconstruction = true,
        render_layer = "object",
        max_health = 10,
        autoplace = {
            coverage = 0.00125,
            max_probability = 0.0875,
            order = "a[doodad]-a[rock]-a[huge]",
            peaks = {
                {
                    influence = -0.1
                },
                {
                    noise_layer = "rocks",
                    noise_octaves_difference = -2,
                    noise_persistence = 0.9,
                }
            },
            sharpness = 0.7,
            starting_area_amount = 4
        },
        pictures = {
            filename = graphicspath .. "entities/entity_flint.png",
            width = 64,
            height = 64,
            shift = { 0.25, 0.0625 }
        }
    }
})
