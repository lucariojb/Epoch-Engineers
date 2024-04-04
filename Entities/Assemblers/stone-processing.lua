data:extend({ {
    type = "recipe-category",
    name = "stone-processing"
}, {
    type = "assembling-machine",
    name = "stone-crafting-table",
    effectivity = "",
    energy_usage = "30W",
    flags = assemblerFlags,
    minable = {
        mining_time = 0.2,
        result = "stone-crafting-table"
    },
    max_health = 300,
    corpse = "assembling-machine-1-remnants",
    dying_explosion = "assembling-machine-1-explosion",
    collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    fast_replaceable_group = "assembling-machine",
    crafting_categories = { "stone-processing" },
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
            base_area = 10,
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
    icon = graphicspath .. "Icons/stone-crafting-table.png",
    icon_size = 64
},
    -- Item stone Crafting Facility
    {
        type = "item",
        name = "stone-crafting-table",
        icon = graphicspath .. "Icons/stone-crafting-table.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "production-machine",
        place_result = "stone-crafting-table"

    }, -- Recipe stone Processing Facility
    {
        type = "recipe",
        name = "stone-crafting-table",
        crafting_categories = { "crafting" },
        ingredients = { { "stick", 10 }, { "stone", 20 }, { "flint", 4 }, { "natural-fiber", 4 }, { "whetstone", 8 } },
        results = { { "stone-crafting-table", 1 } },
        energy_required = 10,
        enabled = false
    },

})
