require("util")

data:extend({
    --Claypit Crafting
    {
        type = "recipe-category",
        name = "clay-mining"
    },
    --Item Claypit
    {
        type = "item",
        name = "claypit",
        icon = graphicspath .. "Icons/claypit.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "claypit-placer"

    },

    --Claypit Entity
    {
        type = "assembling-machine",
        name = "claypit",
        fixed_recipe = "clay-mud",
        energy_usage = "30W",
        flags = { 'placeable-neutral', 'player-creation', "not-rotatable", 'not-blueprintable' },
        minable = {
            mining_time = 2,
            result = "claypit"
        },
        placeable_by = { item = 'claypit', count = 1 },
        max_health = 300,
        corpse = 'big-remnants',
        dying_explosion = 'medium-explosion',
        collision_box = { { -2.2, -5.2 }, { 2.2, 5.2 } },
        selection_box = { { -2.5, -5.5 }, { 2.5, 5.5 } },
        crafting_categories = { "clay-mining" },
        crafting_speed = 1,
        -- energy_source = { type = "void" },
        fluid_boxes = { {
            production_type = "output",
            base_area = 10,
            base_level = 1,
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections = { {
                type = "output",
                position = { 0, 6 }
            } },
            secondary_draw_orders = {
                north = -1
            },
            off_when_no_fluid_recipe = false
        } },
        energy_source = {
            type = "fluid",
            burns_fluid = false,
            scale_fluid_usage = true,
            fluid_usage_per_tick = 1,
            maximum_temperature = 100,
            destroy_non_fuel_fluid = true,
            emission_per_minute = 0,
            render_no_network_icon = false,

            fluid_box = {
                production_type = "input",
                base_area = 10,
                base_level = -1,
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                pipe_connections = { {
                    type = "input",
                    position = { -3, 4 }
                }, {
                    type = "input",
                    position = { 3, 4 }
                } },
                secondary_draw_orders = {
                    north = -1
                },
                off_when_no_fluid_recipe = false
            }

        },
        animation = {
            south = {
                layers = { {
                    filename = graphicspath .. "entities/claypit/claypit-south.png",
                    width = 250,
                    height = 550,
                    line_length = 1,
                    frame_count = 1,
                    scale = 0.6
                    --repeat_count = 50,
                    --shift = util.by_pixel(0, 80),

                } }
            },
            west = {
                layers = { {
                    filename = graphicspath .. "entities/claypit/claypit-west.png",
                    width = 550,
                    height = 250,
                    line_length = 1,
                    frame_count = 1,
                    scale = 0.6
                    --repeat_count = 50,
                    --shift = util.by_pixel(0, 80),

                } }
            },
            north = {
                layers = { {
                    filename = graphicspath .. "entities/claypit/claypit-north.png",
                    width = 250,
                    height = 550,
                    line_length = 1,
                    frame_count = 1,
                    scale = 0.6
                    --repeat_count = 50,
                    --shift = util.by_pixel(0, 80),

                } }
            },
            east = {
                layers = { {
                    filename = graphicspath .. "entities/claypit/claypit-east.png",
                    width = 550,
                    height = 250,
                    line_length = 1,
                    frame_count = 1,
                    scale = 0.6
                    --repeat_count = 50,
                    --shift = util.by_pixel(0, 80),

                } }
            }
        },
        working_sound = assemblerWorkingSound,
        icon = graphicspath .. "Icons/claypit.png",
        icon_size = 64
    },

    --Claypit Placer Entity
    {

        type = "offshore-pump",
        name = "claypit-placer",
        icon = graphicspath .. "Icons/claypit.png",
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
        fluid = "water",
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
        collision_box = { { -3.3, -5.3 }, { 3.3, 5.3 } },
        selection_box = { { -3.5, -5.5 }, { 3.5, 5.5 } },
        fluid_box =
        {

            pipe_connections =
            {
                {
                    position = { 0, 5.5 },
                }
            }
        },
        pumping_speed = 20,
        tile_width = 1,
        tile_height = 1,

        min_perceived_performance = 0.5,
        always_draw_fluid = false,
        graphics_set =
        {
            underwater_layer_offset = 30,
            base_render_layer = "ground-patch",

            animation = {
                south = {
                    layers = { {
                        filename = graphicspath .. "entities/claypit/claypit-south.png",
                        width = 250,
                        height = 550,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.6,
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                west = {
                    layers = { {
                        filename = graphicspath .. "entities/claypit/claypit-west.png",
                        width = 550,
                        height = 250,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.6,
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                north = {
                    layers = { {
                        filename = graphicspath .. "entities/claypit/claypit-north.png",
                        width = 250,
                        height = 550,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.6,
                        --repeat_count = 50,
                        --shift = util.by_pixel(0, 80),

                    } }
                },
                east = {
                    layers = { {
                        filename = graphicspath .. "entities/claypit/claypit-east.png",
                        width = 550,
                        height = 250,
                        line_length = 1,
                        frame_count = 1,
                        scale = 0.6,
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
        name = "claypit",
        crafting_categories = { "stone-processing" },
        ingredients = { { "primitive-brick", 10 }, { "natural-fiber", 10 }, { "wood", 10 }, { "stick", 5 } },
        results = { { "claypit", 1 } },
        energy_required = 4,
        enabled = false,
    },
})
