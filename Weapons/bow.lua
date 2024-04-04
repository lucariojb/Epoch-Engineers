local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    --Ammo category
    {
        type = "ammo-category",
        name = "arrow"
    }, {
    --Bow Gun
    type = "gun",
    name = "primitive-bow",
    icon = graphicspath .. "Icons/bow.png",
    icon_size = 512,
    icon_mipmaps = 4,
    subgroup = "gun",
    -- order = "a[basic-clips]-a[pistol]",
    attack_parameters =
    {
        type = "projectile",
        ammo_category = "arrow",
        cooldown = 90,
        movement_slow_down_factor = 0.5,
        projectile_creation_distance = 1.125,
        range = 15,
        sound = sounds.light_gunshot --!!
    },
    stack_size = 1
}, {
    --Bow Recipe
    type = "recipe",
    name = "primitive-bow",
    category = "wood-processing",
    ingredients = { { "stick", 10 }, { "natural-fiber", 20 } },
    results = { { "primitive-bow", 1 } },
    energy_required = 10,
    enabled = false
}, {
    --Arrow Ammo
    type = "ammo",
    name = "arrow",
    icon = graphicspath .. "Icons/arrow.png",
    icon_size = 64,
    icon_mipmaps = 4,
    ammo_type =
    {
        category = "arrow",
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    {
                        type = "instant",
                        -- source_effects =
                        -- {
                        --     {
                        --         type = "create-explosion",
                        --         entity_name = "explosion-gunshot"
                        --     }
                        -- },
                        target_effects =
                        {
                            -- {
                            --     type = "create-entity",
                            --     entity_name = "explosion-hit",
                            --     offsets = { { 0, 1 } },
                            --     offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } }
                            -- },
                            {
                                type = "damage",
                                damage = { amount = 5, type = "physical" }
                            }
                        }
                    }
                }
            }
        }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "a[basic-clips]-a[firearm-magazine]",
    stack_size = 200
}, {
    --Arrow Recipe
    type = "recipe",
    name = "arrow",
    category = "wood-processing",
    ingredients = { { "stick", 1 }, { "natural-fiber", 1 }, { "arrow-head", 1 } },
    results = { { "arrow", 4 } },
    energy_required = 8,
    enabled = false
} })
