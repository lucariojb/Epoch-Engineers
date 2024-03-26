data:extend({ --Crafting
    {
        type = "recipe-category",
        name = "dirt-mining"
    },
    --Item
    {
        type = "item",
        name = "dirtpit",
        icon = graphicspath .. "Icons/dirtpit.png",
        icon_size = 256,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "dirtpit"

    },
    --Recipe
    {
        type = "recipe",
        name = "dirtpit",
        category = "stone-processing",
        ingredients = { { "primitive-brick", 5 }, { "natural-fiber", 10 }, { "wood", 10 }, { "stick", 10 } },
        results = { { "dirtpit", 1 } },
        energy_required = 4,
        enabled = false,
    },
    --Entity
    {
        type = "assembling-machine",
        name = "dirtpit",
        icon = graphicspath .. "Icons/dirtpit.png",
        icon_size = 256,
        energy_usage = "1W",
        flags = { "not-rotatable" },
        minable = {
            mining_time = 1,
            result = "dirtpit"
        },
        max_health = 300,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
        collision_box = { { -2.2, -4.3 }, { 2.2, 0 } },
        selection_box = { { -5, -4 }, { 5, 7 } },
        fast_replaceable_group = "assembling-machine",
        placeable_by = { item = 'dirtpit', count = 1 },
        crafting_categories = { "dirt-mining" },
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
                base_area = 10,
                base_level = -1,
                -- pipe_picture = assembler2pipepictures(),
                -- pipe_covers = pipecoverspictures(),
                pipe_connections = { {
                    type = "input",
                    position = { 0, -5 }
                }, },
                secondary_draw_orders = {
                    north = -1
                },
                off_when_no_fluid_recipe = false
            }

        },
        animation = {
            layers = { {
                filename = graphicspath .. "entities/dirtpit.png",
                priority = "high",
                scale = 0.6,
                width = 500,
                height = 684,
                frame_count = 1,
                line_length = 1,
                shift = { 0, 1 }
            },
            },

        }
    } })
