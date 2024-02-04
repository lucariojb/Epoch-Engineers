require("util")
data:extend({
    --entity
    {
        type = "inserter",
        name = "pulley",
        icon = graphicspath .. "Icons/pulley.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.1, result = "pulley" },
        max_health = 150,
        corpse = "inserter-remnants",
        dying_explosion = "inserter-explosion",
        resistances =
        {
            {
                type = "fire",
                percent = 90
            }
        },
        collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } },
        selection_box = { { -0.4, -0.35 }, { 0.4, 0.45 } },
        energy_per_movement = "5J",
        energy_per_rotation = "5J",
        energy_source =
        {
            type = "fluid",
            scale_fluid_usage = true,
            fluid_box = {
                base_area = 1,
                height = 0.1,
                base_level = -0.1,
                production_type = "input-output",
                pipe_connections = { {
                    position = { 1, 0 },
                    type = "input-output"
                }, {
                    position = { -1, 0 },
                    type = "input-output"
                } },
                emissions_per_minute = 0,
                render_no_network_icon = false,
                render_no_power_icon = true,

            }
        },
        extension_speed = 0.01,
        rotation_speed = 0.005,
        fast_replaceable_group = "inserter",
        -- vehicle_impact_sound = sounds.generic_impact,
        -- open_sound = sounds.machine_open,
        -- close_sound = sounds.machine_close,
        -- working_sound = sounds.inserter_basic,
        hand_base_picture =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base.png",
            priority = "extra-high",
            width = 8,
            height = 34,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base.png",
                priority = "extra-high",
                width = 32,
                height = 136,
                scale = 0.25
            }
        },
        hand_closed_picture =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_picture =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_base_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
            priority = "extra-high",
            width = 8,
            height = 33,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
                priority = "extra-high",
                width = 32,
                height = 132,
                scale = 0.25
            }
        },
        hand_closed_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        hand_open_shadow =
        {
            filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
            priority = "extra-high",
            width = 18,
            height = 41,
            hr_version =
            {
                filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
                priority = "extra-high",
                width = 72,
                height = 164,
                scale = 0.25
            }
        },
        pickup_position = { 0, -1 },
        insert_position = { 0, 1.2 },
        platform_picture =
        {
            sheet =
            {
                filename = "__base__/graphics/entity/burner-inserter/burner-inserter-platform.png",
                priority = "extra-high",
                width = 46,
                height = 46,
                shift = { 0.09375, 0 },
                hr_version =
                {
                    filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-platform.png",
                    priority = "extra-high",
                    width = 105,
                    height = 79,
                    shift = util.by_pixel(1.5, 7.5 - 1),
                    scale = 0.5
                }
            }
        },
        -- circuit_wire_connection_points = circuit_connector_definitions["inserter"].points,
        -- circuit_connector_sprites = circuit_connector_definitions["inserter"].sprites,
        -- circuit_wire_max_distance = inserter_circuit_wire_max_distance,
        -- default_stack_control_input_signal = inserter_default_stack_control_input_signal
    },
    --Item
    {
        type = "item",
        name = "pulley",
        icon = graphicspath .. "Icons/pulley.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "inserter",
        place_result = "pulley"

    }, -- Recipe stone Processing Facility
    {
        type = "recipe",
        name = "pulley",
        categorie = "crafting",
        ingredients = { { "stick", 4 }, { "natural-fiber", 4 }, { "stone", 4 }, { "whetstone", 1 } },
        results = { { "pulley", 2 } },
        energy_required = 10,
        enabled = false
    },


})
