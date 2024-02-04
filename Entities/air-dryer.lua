data:extend({

    --Air Dryer Crafting Category
    {
        type = "recipe-category",
        name = "air-drying"
    },
    -- Air Dryer Item
    {
        type = "item",
        name = "air-dryer",
        icon = graphicspath .. "Icons/air-dryer.png",
        icon_size = 64,
        stack_size = 50,
        subgroup = "production-machine",
        place_result = "air-dryer"

    },
    --Air Dryer Recipe
    {
        type = "recipe",
        name = "air-dryer",
        categorie = "crafting",
        subgroup = "production-machine",
        ingredients = { { "wood", 20 }, { "stick", 4 }, { "natural-fiber", 5 }, { "primitive-brick", 10 } },
        results = { { "air-dryer", 1 } },
        energy_required = 10,
        enabled = false
    },
    --Air Dryer Assembler
    {
        type = "assembling-machine",
        name = "air-dryer",
        icon = graphicspath .. "Icons/air-dryer.png",
        icon_size = 64,
        energy_usage = "1W",
        flags = assemblerFlags,
        minable = {
            mining_time = 0.5,
            result = "air-dryer"
        },
        max_health = 300,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
        collision_box = { { -2.2, -2.2 }, { 2.2, 2.2 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        fast_replaceable_group = "assembling-machine",
        placeable_by = { item = 'air-dryer', count = 1 },
        crafting_categories = { "air-drying" },
        crafting_speed = 1,
        fluid_boxes = { {
            production_type = "input",
            base_area = 10,
            base_level = -1,
            pipe_picture = assembler2pipepictures(),
            pipe_covers = pipecoverspictures(),
            pipe_connections = { {
                type = "input-output",
                position = { 0, 3 }
            }, {
                type = "input-output",
                position = { 3, 0 }
            }, {
                type = "input-output",
                position = { 0, -3 }
            }, {
                type = "input-output",
                position = { -3, 0 }
            } },
            secondary_draw_orders = {
                north = -1
            },
            off_when_no_fluid_recipe = false
        } },
        energy_source = {
            type = "void",
            emissions_per_minute = 0
        },
        animation = {
            layers = { {
                filename = graphicspath .. "entities/air-dryer.png",
                priority = "high",
                scale = 1.4,
                width = 100,
                height = 100,
                frame_count = 1,
                line_length = 1,
            },
            },

        }
    } })
