autoplaceUtil = require("Utils.autoplace-util")
require("__base__/prototypes/entity/biter-animations.lua")

--Cow Corpse
data:extend({
    {
        type = "corpse",
        name = "cow-corpse",
        icon = graphicspath .. "entities/units/biter-cow.png",
        icon_size = 512,
        flags = { "placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map" },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        tile_width = 1,
        tile_height = 1,
        selectable_in_game = false,
        time_before_removed = 2 * 60 * 60,
        final_render_layer = "corpse",
        animation = {
            filename = graphicspath .. "entities/units/biter-cow-corpse.png",
            width = 512,
            height = 512,
            frame_count = 1,
            direction_count = 1,
            shift = { 0, -0.5 },
            scale = 0.15,
            -- tint = { r = 0.5, g = 0.5, b = 0.5, a = 1 }
        }
        -- ground_patch = { sheet = bitercorpsepatch() }
    },
    --Cow Spawner
    {
        type = "unit-spawner",
        name = "cow-spawner",
        icon = graphicspath .. "entities/units/biter-cow.png",
        icon_size = 512,
        flags = { "placeable-neutral", "placeable-off-grid", "not-on-map" },
        max_health = 100,
        order = "b-b-a",
        subgroup = "enemies",
        selection_box = { { -1, -1 }, { 1, 1 } },
        -- minable = { mining_time = 0.1, result = "cow-spawner" },
        max_count_of_owned_units = 5,
        max_friends_around_to_spawn = 5,
        pollution_absorption_proportional = 0,
        pollution_absorption_absolute = 0,

        animations = {
            {
                filename = graphicspath .. "nothing.png",
                width = 64,
                height = 64,
                frame_count = 1,
                direction_count = 1,
                scale = 0.5,
            }
        },
        result_units = {
            { "biter-cow", { { 0.0, 0.3 }, { 0.35, 0 } } }
        },
        spawning_cooldown = { 5 * 60 * 60, 10 * 60 * 60 }, -- 5-10 minutes
        spawning_radius = 100,
        spawning_spacing = 20,
        max_spawn_shift = 0,
        resistances = {
            {
                type = "physical",
                percent = 100
            },
            {
                type = "explosion",
                percent = 100
            },
            {
                type = "fire",
                percent = 100
            },
            {
                type = "laser",
                percent = 100
            },
            {
                type = "acid",
                percent = 100
            },
            {
                type = "electric",
                percent = 100
            }

        },
        max_richness_for_spawn_shift = 100,
        autoplace = autoplaceUtil.singleSpawnerAutoplace(1 / 24),
        call_for_help_radius = 0,
        spawn_decorations_on_expansion = true,
        spawn_decoration = {
            {
                decorative = "light-mud-decal",
                spawn_min = 0,
                spawn_max = 2,
                spawn_min_radius = 2,
                spawn_max_radius = 5,
            },
            {
                decorative = "dark-mud-decal",
                spawn_min = 0,
                spawn_max = 2,
                spawn_min_radius = 2,
                spawn_max_radius = 5,
            },
        },
    }
})



--Cow Entity
local biter_cow = table.deepcopy(data.raw.unit["medium-biter"])
--General
biter_cow.name = "biter-cow"
biter_cow.icon = graphicspath .. "entities/units/biter-cow.png"
biter_cow.icon_size = 512
biter_cow.loot = { { item = "raw-hide", count_min = 2, count_max = 6, }, { item = "meat", count_min = 4, count_max = 10, } }
biter_cow.max_health = 20
biter_cow.resistances = { { type = "physical", decrease = 0, percent = 0 }, { type = "explosion", decrease = 0, percent = 0 }, { type = "fire", decrease = 0, percent = 0 }, { type = "laser", decrease = 0, percent = 0 }, { type = "acid", decrease = 0, percent = 0 }, { type = "electric", decrease = 0, percent = 0 } }
biter_cow.healing_per_tick = 0.01
--Behaviors
biter_cow.ai_settings = { allow_try_return_to_spawner = true }
vision_distance = 0
biter_cow.movement_speed = 0.1
biter_cow.pollution_to_join_attack = 0
biter_cow.distraction_cooldown = 0
biter_cow.min_pursue_time = 0
biter_cow.max_pursue_distance = 0
biter_cow.attack_parameters.range = -1
biter_cow.map_color = { r = 0.5, g = 0.5, b = 0.5 }
biter_cow.enemy_map_color = { r = 0.5, g = 0.5, b = 0.5 }
biter_cow.run_animation = {
    filename = graphicspath .. "entities/units/biter-cow.png",
    width = 512,
    height = 512,
    frame_count = 1,
    direction_count = 1,
    shift = { 0, -0.5 },
    scale = 0.15,
    -- tint = { r = 0.5, g = 0.5, b = 0.5, a = 1 }
}
biter_cow.corpse = "cow-corpse"



data:extend({ biter_cow })
