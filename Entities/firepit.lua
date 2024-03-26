local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    --Fire Pit Entity
    {
        type = "furnace",
        name = "firepit",
        icon = graphicspath .. "Icons/fire.png",
        icon_size = 64,
        icon_mipmaps = 4,
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.5, result = "firepit" },
        max_health = 200,
        corpse = "stone-furnace-remnants",
        dying_explosion = "stone-furnace-explosion",
        repair_sound = sounds.manual_repair,
        mined_sound = sounds.deconstruct_bricks(0.8),
        open_sound = sounds.machine_open,
        close_sound = sounds.machine_close,
        vehicle_impact_sound = sounds.car_stone_impact,
        working_sound =
        {
            sound =
            {
                {
                    filename = "__base__/sound/furnace.ogg",
                    volume = 0.6
                }
            },
            fade_in_ticks = 4,
            fade_out_ticks = 20,
            audible_distance_modifier = 0.4
        },
        resistances =
        {
            {
                type = "fire",
                percent = 90
            },
            {
                type = "explosion",
                percent = 30
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = { { -0.7, -0.7 }, { 0.7, 0.7 } },
        selection_box = { { -0.8, -1 }, { 0.8, 1 } },
        damaged_trigger_effect = hit_effects.rock(),
        crafting_categories = { "smelting" },
        result_inventory_size = 1,
        energy_usage = "90kW",
        crafting_speed = 1,
        source_inventory_size = 1,
        energy_source =
        {
            type = "burner",
            fuel_category = "chemical",
            effectivity = 1,
            fuel_inventory_size = 1,
            emissions_per_minute = 2,
            light_flicker =
            {
                color = { 0, 0, 0 },
                minimum_intensity = 0.6,
                maximum_intensity = 0.95
            },
            smoke =
            {
                {
                    name = "smoke",
                    deviation = { 0.1, 0.1 },
                    frequency = 5,
                    position = { 0.0, -2.0 },
                    starting_vertical_speed = 0.08,
                    starting_frame_deviation = 60
                }
            }
        },
        animation =
        {
            layers =
            {
                {

                    filename = graphicspath .. "entities/firepit.png",
                    priority = "high",
                    width = 151,
                    height = 146,
                    frame_count = 1,
                    shift = util.by_pixel(-0.25, 6),
                    scale = 0.5

                },

            }
        },
        working_visualisations =
        {
            {
                draw_as_light = true,
                fadeout = true,
                effect = "flicker",
                animation =
                {
                    layers =
                    {
                        {

                            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
                            priority = "extra-high",
                            line_length = 8,
                            width = 41,
                            height = 100,
                            frame_count = 48,
                            axially_symmetrical = false,
                            direction_count = 1,
                            shift = util.by_pixel(-0.75, 5.5),
                            scale = 0.5

                        },
                        {
                            filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-light.png",
                            blend_mode = "additive",
                            width = 106,
                            height = 144,
                            repeat_count = 48,
                            shift = util.by_pixel(0, 5),
                            scale = 0.5,

                        },
                    }
                }
            },
            {
                draw_as_light = true,
                draw_as_sprite = false,
                fadeout = true,
                effect = "flicker",
                animation =
                {

                    filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-ground-light.png",
                    blend_mode = "additive",
                    draw_as_sprite = false,
                    width = 116,
                    height = 110,
                    repeat_count = 48,
                    shift = util.by_pixel(-1, 44),
                    scale = 0.5,

                },
            },
        },
    },
    --Firepit Item
    {
        type = "item",
        name = "firepit",
        icon = graphicspath .. "Icons/fire.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "firepit"

    },
    --Firepit Recipe
    {
        type = "recipe",
        name = "firepit",
        category = "crafting",
        ingredients = { { "wood", 10 }, { "primitive-brick", 4 }, { "firestarter", 1 } },
        results = { { "firepit", 1 } },
        energy_required = 8,
        enabled = false
    }
})
