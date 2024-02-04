stone_slide_animation_set =
{
    animation_set =
    {
        filename = graphicspath .. "entities/stone-slides.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 16,
        direction_count = 20,
    },

    --east_index = 1,
    --west_index = 2,
    --north_index = 3,
    --south_index = 4,

    --east_to_north_index = 5,
    --north_to_east_index = 6,

    --west_to_north_index = 7,
    --north_to_west_index = 8,

    --south_to_east_index = 9,
    --east_to_south_index = 10,

    --south_to_west_index = 11,
    --west_to_south_index = 12,

    --starting_south_index = 13,
    --ending_south_index = 14,

    --starting_west_index = 15,
    --ending_west_index = 16,

    --starting_north_index = 17,
    --ending_north_index = 18,

    --starting_east_index = 19,
    --ending_east_index = 20,

    --ending_patch = ending_patch_prototype
    --ends_with_stopper = false
}

data:extend({ {
    type = "transport-belt",
    name = "stone-slide",
    icon = graphicspath .. "Icons/stone-slide.png",
    icon_size = 64,
    speed = 0.00625,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 0.1, result = "stone-slide" },
    max_health = 150,
    corpse = "transport-belt-remnants",
    dying_explosion = "transport-belt-explosion",
    resistances =
    {
        {
            type = "fire",
            percent = 90
        }
    },
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    working_sound =
    {
        sound =
        {
            filename = "__base__/sound/transport-belt.ogg",
            volume = 0.17
        },
        persistent = true
    },
    animation_speed_coefficient = 32,
    belt_animation_set = stone_slide_animation_set,
    fast_replaceable_group = "transport-belt",
    -- related_underground_belt = "underground-belt",
    -- next_upgrade = "fast-transport-belt",
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    -- circuit_wire_connection_points = circuit_connector_definitions["belt"].points,
    -- circuit_connector_sprites = circuit_connector_definitions["belt"].sprites,
    -- circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
}, {
    type = "item",
    name = "stone-slide",
    icon = graphicspath .. "Icons/stone-slide.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "belt",
    place_result = "stone-slide"

}, -- Recipe
    {
        type = "recipe",
        name = "stone-slide",
        categorie = "stone-processing",
        ingredients = { { "stone", 8 }, { "stick", 1 }, { "whetstone", 1 } },
        results = { { "stone-slide", 4 } },
        energy_required = 4,
        enabled = false
    },
})
