data:extend({ {
    type = "capsule",
    name = "firestarter",
    icon = graphicspath .. "Icons/firestarter.png",
    icon_size = 256,
    stack_size = 20,
    subgroup = "intermediate-product",
    capsule_action =
    {
        type = "throw",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "grenade",
            cooldown = 120,
            projectile_creation_distance = 0.6,
            range = 2,
            ammo_type =
            {
                category = "grenade",
                target_type = "position",
                action =
                {
                    type = "direct",
                    action_delivery =
                    { {
                        type = "instant",
                        target_effects = {
                            type = "create-fire",
                            entity_name = "fire-flame",
                            initial_ground_flame_count = 1,
                        },
                    }, {
                        type = "instant",
                        target_effects = {
                            type = "create-smoke",
                            entity_name = "crash-site-fire-smoke",
                        },
                    } }
                }
            }
        }
    },

},

})
