require("util")

data:extend({
    --Item Wood Axis
    {
        type = "item",
        name = "wood-axis",
        icon = graphicspath .. "Icons/wood-axis.png",
        icon_size = 256,
        stack_size = 100,
        place_result = "wood-axis",
        subgroup = "energy-pipe-distribution"

    },
    --Entity Wood Axis
    {
        type = "pipe",
        name = "wood-axis",
        icon = graphicspath .. "Icons/wood-axis.png",
        icon_size = 256,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving" },
        minable = { mining_time = 0.4, result = "wood-axis" },
        max_health = 200,
        corpse = "pipe-remnants",
        resistances = {
            {
                type = "impact",
                percent = 50,
            },
        },
        fast_replaceable_group = "pipe",
        collision_box = { { -0.29, -0.29 }, { 0.29, 0.29 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        fluid_box = {
            filter = "motion-energy",
            base_area = 1,
            height = 0.25,
            pipe_connections = {
                { position = { 0, -1 } },
                { position = { 1, 0 } },
                { position = { 0, 1 } },
                { position = { -1, 0 } },
            },
        },
        -- horizontal_window_bounding_box = { { -0.25, -0.28125 }, { 0.25, 0.15625 } },
        -- vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
        horizontal_window_bounding_box = { { 0, 0 }, { 0, 0 } },
        vertical_window_bounding_box = { { 0, 0 }, { 0, 0 } },
        -- vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        pictures = {
            straight_vertical_single = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            straight_vertical = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            straight_vertical_window = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            straight_horizontal_window = {
                filename = graphicspath .. "entities/wood-axis/horizontal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            straight_horizontal = {
                filename = graphicspath .. "entities/wood-axis/horizontal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            corner_up_right = {
                filename = graphicspath .. "entities/wood-axis/corner-up-right.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            corner_up_left = {
                filename = graphicspath .. "entities/wood-axis/corner-up-left.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            corner_down_right = {
                filename = graphicspath .. "entities/wood-axis/corner-down-right.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            corner_down_left = {
                filename = graphicspath .. "entities/wood-axis/corner-down-left.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            t_up = {
                filename = graphicspath .. "entities/wood-axis/t-up.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            t_down = {
                filename = graphicspath .. "entities/wood-axis/t-down.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            t_right = {
                filename = graphicspath .. "entities/wood-axis/t-right.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            t_left = {
                filename = graphicspath .. "entities/wood-axis/t-left.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            cross = {
                filename = graphicspath .. "entities/wood-axis/cross.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            ending_up = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            ending_down = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            ending_right = {
                filename = graphicspath .. "entities/wood-axis/horizontal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            ending_left = {
                filename = graphicspath .. "entities/wood-axis/horizontal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            horizontal_window_background = {
                filename = graphicspath .. "entities/wood-axis/horizontal.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            vertical_window_background = {
                filename = graphicspath .. "entities/wood-axis/vertical.png",
                priority = "extra-high",
                width = 64,
                height = 64,
                scale = 0.5
            },
            fluid_background = {
                filename = "__base__/graphics/entity/pipe/fluid-background.png",
                priority = "extra-high",
                width = 32,
                height = 20,

            },
            low_temperature_flow = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18,
            },
            middle_temperature_flow = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18,
            },
            high_temperature_flow = {
                filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
                priority = "extra-high",
                width = 160,
                height = 18,
            },
            gas_flow = {
                filename = "__base__/graphics/entity/pipe/steam.png",
                priority = "extra-high",
                line_length = 10,
                width = 24,
                height = 15,
                frame_count = 60,
                axially_symmetrical = false,
                direction_count = 1,

            },
        },

        -- working_sound = {
        --     sound = sounds.pipe,
        --     match_volume_to_activity = true,
        --     audible_distance_modifier = 0.3,
        --     fade_in_ticks = 4,
        --     fade_out_ticks = 60,
        -- },
        -- horizontal_window_bounding_box = { { -0.25, -0.28125 }, { 0.25, 0.15625 } },
        -- vertical_window_bounding_box = { { -0.28125, -0.5 }, { 0.03125, 0.125 } },
    },
})
