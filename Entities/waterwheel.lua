require("util")

data:extend({

    --Item waterwheel
    {
        type = "item",
        name = "waterwheel",
        icon = graphicspath .. "Icons/waterwheel.png",
        icon_size = 64,
        stack_size = 10,
        place_result = "waterwheel",
        subgroup = "energy"

    },

    --waterwheel Entity
    {

        type = "offshore-pump",
        name = "waterwheel",
        icon = graphicspath .. "Icons/waterwheel.png",
        icon_size = 64,
        flags = { "placeable-neutral", "player-creation", "filter-directions", "hidden" },
        collision_mask = { "object-layer", "train-layer" },                       -- collide just with object-layer and train-layer which don't collide with water, this allows us to build on 1 tile wide ground
        center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
        fluid_box_tile_collision_test = { "ground-tile" },
        adjacent_tile_collision_test = { "water-tile" },
        adjacent_tile_collision_mask = { "ground-tile" }, -- to prevent building on edge of map :(
        adjacent_tile_collision_box = { { -1, -2 }, { 1, -1 } },
        max_health = 150,
        corpse = "offshore-pump-remnants",
        dying_explosion = "offshore-pump-explosion",
        fluid = "motion-energy",
        resistances =
        {
            {
                type = "fire",
                percent = 70
            },
            {
                type = "impact",
                percent = 30
            }
        },
        collision_box = { { -1.8, -1.2 }, { 1.8, 1.2 } },
        selection_box = { { -2.5, -2 }, { 2.5, 1.5 } },
        fluid_box =
        {
            pipe_covers = {
                north = {
                    filename = graphicspath .. "entities/wood-axis/vertical.png",
                    size = 64,
                    scale = 0.5,
                    shift = { 0, 1 }

                },
                south = {
                    filename = graphicspath .. "entities/wood-axis/vertical.png",
                    size = 64,
                    scale = 0.5
                    ,
                    shift = { 0, -1 }
                },
                east = {
                    filename = graphicspath .. "entities/wood-axis/horizontal.png",
                    size = 64,
                    scale = 0.5
                    ,
                    shift = { -1, 0 }
                },
                west = {
                    filename = graphicspath .. "entities/wood-axis/horizontal.png",
                    size = 64,
                    scale = 0.5,
                    shift = { 1, 0 }
                },

            },

            pipe_connections =
            {
                {
                    position = { 0, 2 },
                }
            },

        },
        pumping_speed = 0.1,
        tile_width = 1,
        tile_height = 1,
        always_draw_fluid = false,
        graphics_set =
        {
            underwater_layer_offset = 30,
            base_render_layer = "ground-patch",

            animation = {
                south = {
                    layers = { {
                        filename = graphicspath .. "entities/waterwheel/waterwheel-south.png",
                        width = 256,
                        height = 128,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.8,
                        shift = { 0, 0.8 }
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                west = {
                    layers = { {
                        filename = graphicspath .. "entities/waterwheel/waterwheel-west.png",
                        width = 128,
                        height = 256,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.8,
                        shift = { -0.8, 0 }
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                north = {
                    layers = { {
                        filename = graphicspath .. "entities/waterwheel/waterwheel-north.png",
                        width = 256,
                        height = 128,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.8,
                        shift = { 0, -0.8 }
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                east = {
                    layers = { {
                        filename = graphicspath .. "entities/waterwheel/waterwheel-east.png",
                        width = 128,
                        height = 256,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.8,
                        shift = { 0.8, 0 }
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                }
            },

        },
        placeable_position_visualization =
        {
            filename = "__core__/graphics/cursor-boxes-32x32.png",
            priority = "extra-high-no-scale",
            width = 64,
            height = 64,
            scale = 0.5,
            x = 3 * 64
        },
    },
    --Recipe
    {
        type = "recipe",
        name = "waterwheel",
        category = "stone-processing",
        ingredients = { { "primitive-brick", 10 }, { "natural-fiber", 10 }, { "wooden-gear", 5 }, { "stick", 10 } },
        results = { { "waterwheel", 1 } },
        energy_required = 4,
        enabled = false,
    },
})
