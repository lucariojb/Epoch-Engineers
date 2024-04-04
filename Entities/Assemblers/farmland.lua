-- Define the assembler entity
data:extend({
    {
        type = "simple-entity",
        name = "farmland",
        icon = graphicspath .. "Icons/farmland.png",
        icon_size = 128,
        collision_box = { { -4, -4 }, { 4, 4 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        minable = { mining_time = 2, },
        pictures =
        {
            layers = { {
                filename = graphicspath .. "entities/farmland/farmland.png",
                size = 128,
                scale = 2,
            },
            }
        },
    }, {
    type = "simple-entity",
    name = "farmland-seeded",
    icon = graphicspath .. "Icons/farmland.png",
    icon_size = 128,
    collision_box = { { -4, -4 }, { 4, 4 } },
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    minable = { mining_time = 2, },
    pictures =
    {
        layers = { {
            filename = graphicspath .. "entities/farmland/farmland-grown.png",
            size = 128,
            scale = 2,
        },
        }
    },
},
    {
        type = "recipe-category",
        name = "farmland"
    },
    {
        type = "assembling-machine",
        name = "farmland-watered",
        icon = graphicspath .. "Icons/farmland.png",
        crafting_categories = { "farmland" },
        fixed_recipe = "grow-hemp",
        energy_usage = "1W",
        energy_source = {
            type = "void"
        },
        crafting_speed = 1,
        flags = assemblerFlags,
        icon_size = 128,
        collision_box = { { -4, -4 }, { 4, 4 } },
        selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
        minable = { mining_time = 2, },
        created_effect = { {
            type = "direct",
            action_delivery = {
                type = "instant",
                source_effects = {
                    type = "script",
                    effect_id = "not-operable"
                }
            }
        },
            -- {
            --     type = "insert-item",
            --     item = "hemp-seeds",
            --     count = 1,

            -- }
        },

        animation =
        {
            layers = { {
                filename = graphicspath .. "entities/farmland/farmland-grown2.png",
                width = 128,
                height = 256,
                scale = 2,
                shift = util.by_pixel(0, -128),
                frame_count = 1,
                line_length = 1,
            },
            }
        },


    },

    -- Define the item
    {
        type = "item",
        name = "farmland",
        icon = graphicspath .. "Icons/farmland.png",
        icon_size = 128,
        subgroup = "production-machine",
        place_result = "farmland",
        stack_size = 50
    }
})
