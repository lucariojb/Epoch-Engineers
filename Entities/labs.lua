data:extend({ -- Lab Cave entity
    {
        type = "lab",
        name = "lab-cave",
        icon = graphicspath .. "Icons/lab-cave.png",
        icon_size = 64,
        flags = { "placeable-player", "player-creation" },
        minable = {
            mining_time = 0.2,
            result = "lab-cave"
        },
        max_health = 150,
        corpse = "lab-remnants",
        dying_explosion = "lab-explosion",
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        on_animation = {
            layers = { {
                filename = "__base__/graphics/entity/lab/lab.png",
                width = 98,
                height = 87,
                frame_count = 1,

                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab.png",
                    width = 194,
                    height = 174,
                    frame_count = 1,

                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/lab/lab-integration.png",
                width = 122,
                height = 81,
                frame_count = 1,

                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
                    width = 242,
                    height = 162,
                    frame_count = 1,

                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/lab/lab-shadow.png",
                width = 122,
                height = 68,
                frame_count = 1,
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
                    width = 242,
                    height = 136,
                    frame_count = 1,
                    draw_as_shadow = true,
                    scale = 0.5
                }
            } }
        },
        off_animation = {
            layers = { {
                filename = "__base__/graphics/entity/lab/lab.png",
                width = 98,
                height = 87,
                frame_count = 1,

                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab.png",
                    width = 194,
                    height = 174,
                    frame_count = 1,

                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/lab/lab-integration.png",
                width = 122,
                height = 81,
                frame_count = 1,

                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab-integration.png",
                    width = 242,
                    height = 162,
                    frame_count = 1,

                    scale = 0.5
                }
            }, {
                filename = "__base__/graphics/entity/lab/lab-shadow.png",
                width = 122,
                height = 68,
                frame_count = 1,
                draw_as_shadow = true,
                hr_version = {
                    filename = "__base__/graphics/entity/lab/hr-lab-shadow.png",
                    width = 242,
                    height = 136,
                    frame_count = 1,
                    draw_as_shadow = true,
                    scale = 0.5
                }
            } }
        },
        working_sound = {
            sound = {
                filename = "__base__/sound/lab.ogg",
                volume = 0.7
            },
            audible_distance_modifier = 0.7,
            fade_in_ticks = 4,
            fade_out_ticks = 20
        },
        energy_source = {
            type = "void",
            emission_per_minute = 0,
            render_no_power_icon = false,
            render_no_network_icon = false

        },
        energy_usage = "1W",
        researching_speed = 1,
        inputs = { "stoneage-pack-1" }
    }, -- Lab Cave Item
    {
        type = "item",
        name = "lab-cave",
        icon = graphicspath .. "Icons/lab-cave.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "lab-cave"

    } })
