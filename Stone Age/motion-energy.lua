data:extend({ { -- Motion Energy Fuel Category
    type = "fuel-category",
    name = "motion-energy-source"
}, { -- Motion Energy Recipe Category
    type = "recipe-category",
    name = "motion-energy-source"
}, {
    -- Motion Energy Fluid
    type = "fluid",
    name = "motion-energy",
    icon = graphicspath .. "Icons/motion-energy.png",
    icon_size = 64,
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "1J",
    emissions_multipliert = 0,
    auto_barrel = false,
    base_color = { 25 / 255, 25 / 255, 25 / 255 },
    flow_color = { 25 / 255, 25 / 255, 25 / 255 }
}, -- Motion Energy Source Item
    {
        type = "item",
        name = "motion-energy-source",
        icon = graphicspath .. "Icons/motion-energy-source.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "raw-material",
        fuel_category = "motion-energy-source",
        fuel_value = "100J"

    }, -- Hand Crank Mill Assembler
    {
        type = "assembling-machine",
        name = "hand-crank-mill",
        icon = graphicspath .. "Icons/hand-crank-mill.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = assemblerFlags,
        fixed_recipe = "motion-energy-from-source",
        minable = {
            mining_time = 0.2,
            result = "hand-crank-mill"
        },
        max_health = 300,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
        collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        --fast_replaceable_group = "assembling-machine",
        crafting_categories = { "motion-energy-source" },
        crafting_speed = 1,
        energy_source = {
            type = "burner",
            fuel_category = "motion-energy-source",
            fuel_inventory_size = 1,
            burnt_inventory_size = 0,
            effectivity = 1,
            emission_per_minute = 0,
            render_no_power_icon = false,
            render_no_network_icon = false
        },
        energy_usage = "10W",
        working_sound = assemblerWorkingSound,
        animation = handcrankMillAnimation,
        fluid_boxes = {
            {
                production_type = "output",
                base_area = 40,
                base_level = 1,
                -- pipe_picture = assembler2pipepictures(),
                -- pipe_covers = pipecoverspictures(),
                pipe_connections = { {
                    type = "output",
                    position = { 0, 1 }
                } },
                secondary_draw_orders = {
                    north = -1
                }
            },
            off_when_no_fluid_recipe = true
        },
        damaged_trigger_effect = {
            type = "insert-item",
            item = "motion-energy-source",
            count = 1,

        },
        created_effect = {
            type = "direct",
            action_delivery = {
                type = "instant",
                source_effects = {
                    type = "script",
                    effect_id = "on_handcrankmill_placed"
                }
            }

        }
    }, -- Hand Crank Mill Item
    {
        type = "item",
        name = "hand-crank-mill",
        icon = graphicspath .. "Icons/hand-crank-mill.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "energy",
        place_result = "hand-crank-mill"

    },
    { -- Hand Crank Mill Recipe

        -- Motion Energy by Hand
        type = "recipe",
        name = "hand-crank-mill",
        category = "crafting",
        energy_required = 10,
        emission_multiplier = 1,
        ingredients = { { "stone", 8 }, { "wood", 4 }, { "whetstone", 1 } },
        results = { { "hand-crank-mill", 1 } },
        enabled = false

    },
    {
        -- Motion Energy from Source Recipe
        type = "recipe",
        name = "motion-energy-from-source",
        category = "motion-energy-source",
        ingredients = {},
        results = { {
            type = "fluid",
            name = "motion-energy",
            amount = 100,
            temperature = 100
        } },
        energy_required = 5,
        emission_multiplier = 0,
        hide_from_player_crafting = true,
        enabled = false
    },
    -- {
    --     -- Motion Energy by Hand
    --     type = "recipe",
    --     name = "motion-energy-source",
    --     category = "crafting",
    --     allow_intermediates = false,
    --     allow_as_intermediate = false,
    --     energy_required = 5,
    --     emission_multiplier = 0,
    --     ingredients = {},
    --     results = { { "motion-energy-source", 1 } },
    --     enabled = false
    -- },
    --Attack to Create motion Energy
    -- Damage Type
    {
        type = "damage-type",
        name = "create-motion-energy"
    }, {
    --Ammo Category
    type = "ammo-category",
    name = "create-motion-energy"
}, {
    --Ammo Prototype
    type = "ammo",
    name = "wooden-handle",
    icon = graphicspath .. "Icons/wooden-handle.png",
    icon_size = 256,
    ammo_type = {
        category = "create-motion-energy",
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    {
                        type = "instant",
                        -- source_effects =
                        -- {
                        --     {
                        --         type = "create-explosion",
                        --         entity_name = "explosion-gunshot"
                        --     }
                        -- },
                        target_effects =
                        {
                            -- {
                            --     type = "create-entity",
                            --     entity_name = "explosion-hit",
                            --     offsets = { { 0, 1 } },
                            --     offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                            -- },
                            {
                                type = "damage",
                                damage = { amount = 1, type = "create-motion-energy" }
                            }
                        }
                    }
                }
            }
        }
    },
    -- ammo_type = {
    --     category = "melee",
    --     target_type = "position",
    --     action = {
    --         type = "direct",
    --         repeat_count = 1,
    --         action_delivery =
    --         {
    --             type = "projectile",
    --             projectile = "create-motion-energy",
    --             starting_speed = 30 / 60,
    --             max_range = 1
    --         }
    --     }
    -- },
    stack_size = 1,
    magazine_size = 10
},
    --  {
    --     --Projectile Prototype
    --     type = "projectile",
    --     name = "create-motion-energy",
    --     flags = { "not-on-map" },
    --     collision_box = { { -0.25, -0.75 }, { 0.25, 0.75 } },
    --     acceleration = 0,
    --     direction_only = true,
    --     force_condition = "not-same",
    --     action = {
    --         type = "direct",
    --         action_delivery =
    --         {
    --             type = "instant",
    --             target_effects =
    --             {
    --                 {
    --                     type = "damage",
    --                     damage = { amount = 1, type = "create-motion-energy" }
    --                 }
    --             }
    --         }
    --     },
    --     -- animation = {
    --     --     filename = "__melee_weapons__/graphics/projectile/slash_attack.png",
    --     --     draw_as_glow = true,
    --     --     frame_count = 1,
    --     --     width = 64,
    --     --     height = 16,
    --     --     priority = "high"
    --     -- }
    -- },
    --Gun Prototype
    {
        type = "gun",
        name = "engineers-hand",
        icon = graphicspath .. "Icons/engineers-hand.png",
        icon_size = 256,
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "create-motion-energy",
            range = 1,
            cooldown = 300,
            range_mode = "bounding-box-to-bounding-box",
            movement_slow_down_factor = 1,
            projectile_creation_distance = 0
        },
        stack_size = 1
    },


})
