local waters = { "water",
    "water-green",
    "water-mud",
    "water-shallow",
    "water-wube" }


function callscriptevents(event)
    --Prevent Entity from being opened
    if event.effect_id == "not-operable" then
        event.source_entity.operable = false
        return

        --Handle if Empty Bucket is used
    elseif event.effect_id == "on-bucket-used" then
        local player = event.source_entity
        local position = event.target_position
        local targetTile = player.surface.get_tile(position.x, position.y)


        for _, value in ipairs(waters) do
            if value == targetTile.name then
                -- game.print("Bucket Filled with Water")
                player.insert({ name = "wood-bucket-water", count = 1 })
                return
            end
        end
        -- game.print("Bucket Empty")
        player.insert({ name = "wood-bucket", count = 1 })
        return

        --Handle Water Bucket being used
    elseif event.effect_id == "on-water-bucket-used" then
        local player = event.source_entity
        local targetentity = player.surface.find_entities_filtered({
            position = event.target_position,
            radius = 5,
        })[1]

        if targetentity and targetentity.name == "farmland-seeded" then
            local position = targetentity.position
            targetentity.destroy()
            player.surface.create_entity({ name = "farmland-watered", position = position, force = player.force })
            return
        end
        player.insert({ name = "wood-bucket", count = 1 })
        return
        --Handle Hemp Seeds being used
    elseif event.effect_id == "on-hemp-seeds-used" then
        local player = event.source_entity

        local targetentity = player.surface.find_entities_filtered({
            position = event.target_position,
            radius = 5,
            type =
            "simple-entity"
        })[1]

        if targetentity and targetentity.name == "farmland" then
            local position = targetentity.position
            targetentity.destroy()
            player.surface.create_entity({ name = "farmland-seeded", position = position, force = player.force })
            return
        end
        player.insert({ name = "hemp-seeds", count = 1 })
        return
    end
end
