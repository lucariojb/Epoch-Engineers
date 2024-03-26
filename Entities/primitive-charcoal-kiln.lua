data:extend({
    --Item
    {
        type = "item",
        name = "primitive-charcoal-kiln",
        icon = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln.png",
        icon_size = 256,
        stack_size = 10,
        place_result = "primitive-charcoal-kiln"

    },
    --Recipe
    {
        type = "recipe",
        name = "primitive-charcoal-kiln",
        category = "crafting",
        ingredients = { { "wood", 50 }, { "dry-grass", 20 } },
        results = { { "primitive-charcoal-kiln", 1 } },
        energy_required = 10,
        enabled = false
    },
    --Entity
    {
        type = "simple-entity",
        name = "primitive-charcoal-kiln",
        icon = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln.png",
        icon_size = 256,
        collision_box = { { -2, -2 }, { 2, 2 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        minable = { mining_time = 2, result = "primitive-charcoal-kiln" },
        dying_trigger_effect = { {
            type = "create-entity",
            entity_name = "primitive-charcoal-kiln-burning",
            trigger_created_entity = true,
            damage_type_filters =
            {
                whitelist = true,
                types = "fire"
            }
        }, },
        resistances =
        {
            {
                type = "fire",
                percent = -99
            }
        },

        pictures =
        {
            layers = { {
                filename = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln.png",
                size = "256",
                scale = 0.7,
            },
            }
        },


    },
    --Entity Burning
    {
        type = "simple-entity",
        name = "primitive-charcoal-kiln-burning",
        icon = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln-burning.png",
        icon_size = 256,
        render_layer = "lower-object-above-shadow",
        collision_box = { { -2, -2 }, { 2, 2 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        max_health = 179 * 60 * 10,
        created_smoke = { type = "create-trivial-smoke", smoke_name = "fire-smoke", repeat_count = 1, },
        created_effect = {
            type = "direct",
            repeat_count = 1,
            action_delivery =
            { {
                type = "instant",
                target_effects = {
                    type = "create-fire",
                    entity_name = "charcoal-kiln-fire-flame",
                    initial_ground_flame_count = 10,
                    offsets = { { 0, -0.5 } },
                },
            }, }
        },
        flags = { "not-blueprintable", "not-deconstructable" },
        resistances =
        {
            {
                type = "physical",
                percent = 100
            },
            {
                type = "explosion",
                percent = 100
            },
            {
                type = "acid",
                percent = 100
            },
            {
                type = "fire",
                percent = 0
            }
        },
        dying_trigger_effect = { {
            type = "create-entity",
            entity_name = "primitive-charcoal-kiln-burned",
            trigger_created_entity = true,
            damage_type_filters =
            {
                whitelist = true,
                types = "fire"
            }
        } },


        pictures =
        {
            layers = { {
                filename = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln-burning.png",
                size = "256",
                scale = 0.7,
            },
            }
        },


    },
    --Entity Burned
    {
        type = "simple-entity",
        name = "primitive-charcoal-kiln-burned",
        icon = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln-burning.png",
        icon_size = 256,
        collision_box = { { -2, -2 }, { 2, 2 } },
        selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
        max_health = 500,
        created_smoke = { type = "create-trivial-smoke", smoke_name = "charcoal_kiln_smoke", repeat_count = 1, offsets = { { 0, -0.5 } } },
        remains_when_mined = "huge-scorchmark-tintable",

        minable = {
            mining_time = 2,
            results = { { "charcoal", 50 } },
            mining_trigger = {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                { {
                    type = "instant",
                    target_effects = {
                        type = "create-trivial-smoke",
                        smoke_name = "fire-smoke-without-glow",
                        repeat_count = 1,
                        offsets = { { 0, -0.5 } }
                    }
                } }
            },

        },
        flags = { "not-blueprintable" },
        resistances =
        {

            {
                type = "fire",
                percent = 100
            }
        },


        pictures =
        {
            layers = { {
                filename = graphicspath .. "entities/charcoal-kiln/primitive-charcoal-kiln-burning.png",
                size = "256",
                scale = 0.7,
            }
            }
        },


    }

})


--Adjusted Fire Entity
local charcoal_kiln_fire_flame = table.deepcopy(data.raw["fire"]["fire-flame-on-tree"])
charcoal_kiln_fire_flame.name = "charcoal-kiln-fire-flame"
charcoal_kiln_fire_flame.maximum_spread_count = 0
charcoal_kiln_fire_flame.spread_delay = 0
-- charcoal_kiln_fire_flame.fade_in_duration = 1200
-- charcoal_kiln_fire_flame.fade_in_duration = 1000
-- charcoal_kiln_fire_flame.smoke_fade_in_duration = 1000
-- charcoal_kiln_fire_flame.smoke_fade_out_duration = 1300
charcoal_kiln_fire_flame.delay_between_initial_flames = 200
charcoal_kiln_fire_flame.spawn_entity = "charcoal-kiln-fire-flame"
charcoal_kiln_fire_flame.initial_lifetime = 180 * 60
charcoal_kiln_fire_flame.damage_per_tick = { amount = 10, type = "fire" }
-- charcoal_kiln_fire_flame.render_layer = "higher-object-under"

--Adjusted Smoke Entity
local charcoal_kiln_smoke = table.deepcopy(data.raw["trivial-smoke"]["fire-smoke"])
charcoal_kiln_smoke.name = "charcoal_kiln_smoke"
charcoal_kiln_smoke.duration = 300
charcoal_kiln_smoke.cyclic = true
charcoal_kiln_smoke.movement_slow_down_factor = 0
charcoal_kiln_smoke.affected_by_wind = false
charcoal_kiln_smoke.glow_fade_away_duration = 60
charcoal_kiln_smoke.fade_away_duration = 90




data:extend({ charcoal_kiln_fire_flame, charcoal_kiln_smoke })
