data:extend({ {
    type = "recipe-category",
    name = "wood-processing"
}, -- Wood Crafting Facility
    {
        type = "assembling-machine",
        name = "wood-crafting-facility",
        effectivity = "",
        energy_usage = "100W",
        flags = assemblerFlags,
        minable = {
            mining_time = 0.2,
            result = "wood-crafting-facility"
        },
        max_health = 300,
        corpse = "assembling-machine-1-remnants",
        dying_explosion = "assembling-machine-1-explosion",
        collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
        selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
        fast_replaceable_group = "assembling-machine",
        crafting_categories = { "wood-processing" },
        crafting_speed = 1,
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
                base_area = 1,
                base_level = -1,
                pipe_picture = assembler2pipepictures(),
                pipe_covers = pipecoverspictures(),
                pipe_connections = { {
                    type = "input",
                    position = { 0, -2 }
                } },
                secondary_draw_orders = {
                    north = -1
                },
                off_when_no_fluid_recipe = false
            }

        },
        animation = assemblerAnimation,
        working_sound = assemblerWorkingSound,
        icon = graphicspath .. "Icons/wood-crafting-facility.png",
        icon_size = 64
    }, -- Item Wood Crafting Facility
    {
        type = "item",
        name = "wood-crafting-facility",
        icon = graphicspath .. "Icons/wood-crafting-facility.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "wood-crafting-facility"

    }, -- Recipe Wood Processing Facility
    {
        type = "recipe",
        name = "wood-crafting-facility",
        categorie = "crafting",
        ingredients = { { "wood", 20 }, { "flint", 4 }, { "natural-fiber", 5 }, { "whetstone", 4 } },
        results = { { "wood-crafting-facility", 1 } },
        energy_required = 10,
        enabled = false
    }, -- Item Wood Stick
    {
        type = "item",
        name = "stick",
        category = "wood-processing",
        icon = graphicspath .. "Icons/stick.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "raw-material",
        fuel_category = "chemical",
        fuel_value = data.raw["item"]["wood"].fuel_value

    }, -- Stick Recipe
    {
        type = "recipe",
        name = "stick",
        category = "wood-processing",
        ingredients = { { "wood", 1 } },
        results = { { "stick", 1 } },
        energy_required = 4,
        enabled = false
    },
})
