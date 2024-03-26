require("__base__/prototypes/entity/biter-animations.lua")

local biter_cow = table.deepcopy(data.raw.unit["big-biter"])
biter_cow.name = "biter-cow"
biter_cow.ai_settings = { allow_try_return_to_spawner = true }
biter_cow.loot = { { item = "raw-hide", count_min = 2, count_max = 6, }, { item = "meat", count_min = 4, count_max = 10, } }
vision_distance = 30
biter_cow.movement_speed = 0.1
-- biter_cow.distance_per_frame = 0.125
biter_cow.pollution_to_join_attack = 0
biter_cow.distraction_cooldown = 0
biter_cow.min_pursue_time = 0
biter_cow.max_pursue_distance = 0
biter_cow.attack_parameters.range = -1

data:extend({ biter_cow })
