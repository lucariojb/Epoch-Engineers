data:extend({ {
    type = "capsule",
    name = "wood-bucket",
    icon = graphicspath .. "icons/wood-bucket.png",
    icon_size = 128,
    subgroup = "intermediate-product",
    stack_size = 1,
    capsule_action =
    {
        type = "throw",
        attack_parameters =
        {
            type = "projectile",
            ammo_category = "grenade",
            cooldown = 30,
            projectile_creation_distance = 0.6,
            range = 5,
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
                        target_effects = { {
                            type = "script",
                            effect_id = "on-bucket-used"
                        }, {
                            type = "create-explosion",
                            entity_name = "water-splash",
                            -- repeat_count = 15,
                        } }


                    }

                    },
                }
            }
        }
    },

},
    --Wood Bucket filled with Water
    {
        type = "capsule",
        name = "wood-bucket-water",
        icon = graphicspath .. "icons/wood-bucket-water.png",
        icon_size = 128,
        subgroup = "intermediate-product",
        stack_size = 1,
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "grenade",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 5,
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
                            target_effects = { {
                                type = "script",
                                effect_id = "on-water-bucket-used"
                            }, {
                                type = "create-explosion",
                                entity_name = "water-splash",
                                -- repeat_count = 15,
                            } }


                        } }
                    }
                }
            }
        },
    },
    {
        type = "capsule",
        name = "hemp-seeds",
        icon = graphicspath .. "icons/hemp-seeds.png",
        icon_size = 128,
        subgroup = "raw-material",
        stack_size = 100,
        capsule_action =
        {
            type = "throw",
            attack_parameters =
            {
                type = "projectile",
                ammo_category = "grenade",
                cooldown = 30,
                projectile_creation_distance = 0.6,
                range = 5,
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
                            target_effects = { {
                                type = "script",
                                effect_id = "on-hemp-seeds-used"
                            }, {
                                type = "create-explosion",
                                entity_name = "water-splash",
                                -- repeat_count = 15,
                            } }


                        } }
                    }
                }
            }
        },
    },

})
