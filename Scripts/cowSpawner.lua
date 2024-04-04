function onCowKilled(event)
    -- Check if the killed entity is a cow
    if event.entity.name == "biter-cow" then
        -- Get the nearest cow spawner
        local nearestSpawner = game.surfaces[event.entity.surface.name].find_nearest_enemy({
            position = event.entity
                .position,
            max_distance = 100,
            name = "cow-spawner"
        })
        -- Check if a cow spawner was found
        if nearestSpawner then
            -- Generate a random number between 1 and 100
            local randomNumber = math.random(1, 100)
            -- Check if the random number is less than or equal to 1 (1% chance)
            if randomNumber == 1 then
                -- Destroy the nearest cow spawner
                nearestSpawner.destroy()
            end
        end
    end
end
