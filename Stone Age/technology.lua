data:extend({ {
    type = "technology",
    name = "simple-pickaxe",
    icon_size = 64,
    icon = graphicspath .. "Icons/simple-pickaxe.png",
    prerequisites = { "simple-axe" },
    effects = { {
        type = "nothing",
        icon = graphicspath .. "Icons/simple-pickaxe.png",
        icon_size = 64,
        effect_description = { "mining.simple-pickaxe" }
    }, },
    unit = {
        count = 10,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "simple-axe",
    icon_size = 64,
    icon = graphicspath .. "Icons/simple-axe.png",
    effects = { {
        type = "nothing",
        icon = graphicspath .. "Icons/simple-axe.png",
        icon_size = 64,
        effect_description = { "mining.simple-axe" }
    }, },
    unit = {
        count = 10,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "speer-fishing",
    icon_size = 64,
    icon = graphicspath .. "Icons/spear.png",
    effects = { {
        type = "nothing",
        icon = graphicspath .. "Icons/spear.png",
        icon_size = 64,
        effect_description = { "mining.spear" }
    }, },
    prerequisites = { "simple-axe" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 10
    }
}, {
    type = "technology",
    name = "whetstone",
    icon_size = 64,
    icon = graphicspath .. "Icons/whetstone.png",
    effects = { { type = "unlock-recipe", recipe = "whetstone" } },
    prerequisites = { "simple-pickaxe" },
    unit = {
        count = 10,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "motion-energy",
    icon_size = 64,
    icon = graphicspath .. "Icons/motion-energy-source.png",
    effects = { { type = "unlock-recipe", recipe = "hand-crank-mill" },
        { type = "unlock-recipe", recipe = "wooden-handle-inital" },
        -- { type = "unlock-recipe", recipe = "motion-energy-source-byhand" },
        { type = "unlock-recipe", recipe = "motion-energy-from-source" } },
    prerequisites = { "simple-axe", "whetstone" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "wood-crafting",
    icon_size = 64,
    icon = graphicspath .. "Icons/wood-crafting-facility.png",
    effects = { { type = "unlock-recipe", recipe = "wood-crafting-facility" },
        { type = "unlock-recipe", recipe = "stick" },
        { type = "unlock-recipe", recipe = "natural-fiber-wood" }, },
    prerequisites = { "motion-energy" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "stone-crafting",
    icon_size = 64,
    icon = graphicspath .. "Icons/stone-crafting.png",
    effects = { { type = "unlock-recipe", recipe = "primitive-brick" },
        { type = "unlock-recipe", recipe = "stone-crafting-table" },
        { type = "unlock-recipe", recipe = "air-dryer" },
        { type = "unlock-recipe", recipe = "dry-grass" } },
    prerequisites = { "whetstone", "wood-crafting" },
    unit = {
        count = 30,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "stone-age-logistics",
    icon_size = 64,
    icon = graphicspath .. "Icons/stone-slide.png",
    effects = { { type = "unlock-recipe", recipe = "stone-slide" },
        { type = "unlock-recipe", recipe = "pulley" } },
    prerequisites = { "stone-crafting" },
    unit = {
        count = 15,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "fire",
    icon_size = 64,
    icon = graphicspath .. "Icons/fire.png",
    effects = {
        { type = "unlock-recipe", recipe = "firepit" },
        { type = "unlock-recipe", recipe = "firestarter" } },
    prerequisites = { "stone-crafting", },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "excavation",
    icon_size = 256,
    icon = graphicspath .. "Icons/excavation-tech.png",
    effects = {
        { type = "unlock-recipe", recipe = "claypit" },
        { type = "unlock-recipe", recipe = "dry-clay" },
        { type = "unlock-recipe", recipe = "dirtpit" },
    },
    prerequisites = { "stone-crafting" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "Wheel",
    icon_size = 64,
    icon = graphicspath .. "Icons/wheel.png",
    effects = {
        { type = "unlock-recipe", recipe = "wooden-gear" },
        { type = "unlock-recipe", recipe = "waterwheel" },
        { type = "unlock-recipe", recipe = "wooden-handle" }, },
    prerequisites = { "stone-crafting" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
}, {
    type = "technology",
    name = "bricks",
    icon_size = 64,
    icon = graphicspath .. "Icons/brick.png",
    effects = {
        { type = "unlock-recipe", recipe = "raw-brick" },
        { type = "unlock-recipe", recipe = "brick" }, },
    prerequisites = { "fire", "excavation" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }

}, {
    type = "technology",
    name = "bow-arrow",
    icon_size = 512,
    icon = graphicspath .. "Icons/bow.png",
    effects = { { type = "unlock-recipe", recipe = "arrow-head-flint" }, { type = "unlock-recipe", recipe = "arrow-head-flint" }, { type = "unlock-recipe", recipe = "primitive-bow" }, { type = "unlock-recipe", recipe = "arrow" } },
    prerequisites = { "speer-fishing" },
    unit = {
        count = 20,
        ingredients = { { "stoneage-pack-1", 1 } },
        time = 5
    }
},
    {
        type = "technology",
        name = "Mechanical Energy Transmission",
        icon_size = 256,
        icon = graphicspath .. "Icons/wood-axis.png",
        effects = { { type = "unlock-recipe", recipe = "wood-axis" }, },
        prerequisites = { "stone-age-logistics" },
        unit = {
            count = 20,
            ingredients = { { "stoneage-pack-1", 1 } },
            time = 5
        }
    },
    {
        type = "technology",
        name = "charcoaling",
        icon_size = 256,
        icon = graphicspath .. "Icons/charcoaling-tech.png",
        effects = {
            { type = "unlock-recipe", recipe = "primitive-charcoal-kiln" },
        },
        prerequisites = { "fire" },
        unit = {
            count = 15,
            ingredients = { { "stoneage-pack-1", 1 } },
            time = 5
        }
    },
    {
        type = "technology",
        name = "bronzeage",
        icon_size = 64,
        icon = graphicspath .. "Icons/bronzeage.png",
        effects = { { type = "unlock-recipe", recipe = "bronzeage-pack" } },
        prerequisites = { "bricks", "bow-arrow", "stone-age-logistics" },
        unit = {
            count = 20,
            ingredients = { { "stoneage-pack-1", 1 } },
            time = 5
        }
    },
    --     {
    --     type = "technology",
    --     name = "pottery",
    --     icon_size = 64,
    --     icon = graphicspath .. "Icons/tech-pottery.png",
    --     effects = {},
    --     prerequisites = { "fire" },
    --     unit = {
    --         count = 20,
    --         ingredients = { { "stoneage-pack-1", 1 } },
    --         time = 5

    --     }
    -- },
    {
        type = "technology",
        name = "better-pickaxe",
        icon_size = 64,
        icon = graphicspath .. "Icons/simple-pickaxe.png",
        effects = { {
            type = "nothing",
            icon = graphicspath .. "Icons/simple-pickaxe.png",
            icon_size = 64,
            effect_description = { "mining.better-pickaxe" }
        }, },
        prerequisites = { "bronzeage" },
        unit = {
            count = 100,
            ingredients = { { "stoneage-pack-1", 1 }, { "bronzeage-pack", 1 } },
            time = 5
        }
    },
})
