data:extend({ {
    type = "recipe-category",
    name = "wood-processing"
}, -- Wood Crafting Facility
    {
        type = "assembling-machine",
        name = "wood-crafting-facility",
        effectivity = "",
        energy_usage = "100W",
        flags = assemblerFlags,
        minable = {
            mining_time = 0.2,
            result = "wood-crafting-facility"
        },
        max_health = 300,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
        collision_box = { { -1.4, -0.4 }, { 1.4, 1.2 } },
        selection_box = { { -1.5, -0.5 }, { 1.5, 1.5 } },
        fast_replaceable_group = "assembling-machine",
        crafting_categories = { "wood-processing" },
        crafting_speed = 1,
        energy_source = {
            type = "fluid",
            burns_fluid = false,
            scale_fluid_usage = true,
            fluid_usage_per_tick = 1,
            maximum_temperature = 100,
            destroy_non_fuel_fluid = true,
            emission_per_minute = 0,
            render_no_network_icon = false,

            fluid_box = {
                production_type = "input",
                base_area = 1,
                base_level = -1,
                -- pipe_picture = {
                --     north =
                --     {
                --         filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png", --graphicspath .. "entities/wood-axis-pipe-pictures/cover-woodaxis-north.png",
                --         priority = "extra-high",
                --         width = 35,
                --         height = 18,
                --         shift = util.by_pixel(2.5, 14),

                --     },
                --     east =
                --     {
                --         filename = graphicspath .. "entities/wood-axis-pipe-pictures/cover-woodaxis-east.png",
                --         priority = "extra-high",
                --         scale = 0.6,
                --         width = 42,
                --         height = 76,
                --         shift = util.by_pixel(-14, 5),
                --         render_layer = "lower-object-above-shadow",

                --     },
                --     south =
                --     {
                --         filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png", --graphicspath .. "entities/wood-axis-pipe-pictures/cover-woodaxis-west.png",
                --         priority = "extra-high",
                --         width = 44,
                --         height = 31,
                --         shift = util.by_pixel(0, -31.5),

                --     },
                --     west =
                --     {
                --         filename = graphicspath .. "entities/wood-axis-pipe-pictures/cover-woodaxis-west.png",
                --         priority = "extra-high",
                --         scale = 0.55,
                --         width = 42,
                --         height = 76,
                --         shift = util.by_pixel(12, 3),
                --         render_layer = "lower-object-above-shadow",


                --     }
                -- },
                -- pipe_covers = pipecoverspictures(),
                pipe_connections = { {
                    type = "input",
                    position = { 0, -1.2 }
                } },
                secondary_draw_orders = {
                    north = -1
                },
                off_when_no_fluid_recipe = true
            }

        },
        animation = {
            layers = { {
                filename = graphicspath .. "entities/wood-crafting-facility.png",
                priority = "high",
                shift = { 0, 0.5 },
                scale = 0.27,
                width = 500,
                height = 292,
                frame_count = 1,
                line_length = 1,

            }, {
                filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
                priority = "high",
                width = 95,
                height = 83,
                frame_count = 1,
                line_length = 1,
                repeat_count = 1,
                draw_as_shadow = true,

            } }
        },
        working_sound = assemblerWorkingSound,
        icon = graphicspath .. "Icons/wood-crafting-facility.png",
        icon_size = 64
    }, -- Item Wood Crafting Facility
    {
        type = "item",
        name = "wood-crafting-facility",
        icon = graphicspath .. "Icons/wood-crafting-facility.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "wood-crafting-facility"

    }, -- Recipe Wood Processing Facility
    {
        type = "recipe",
        name = "wood-crafting-facility",
        categorie = "crafting",
        ingredients = { { "wood", 20 }, { "flint", 4 }, { "natural-fiber", 5 }, { "whetstone", 4 } },
        results = { { "wood-crafting-facility", 1 } },
        energy_required = 10,
        enabled = false
    }, -- Item Wood Stick

})
