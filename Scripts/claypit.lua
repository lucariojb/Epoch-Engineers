function claypitplacer(event)
    local entity = event.created_entity or event.entity
    if entity.valid then
        local surface = entity.surface
        if entity.name == "claypit-placer" then
            surface.create_entity {
                name = "claypit",
                position = { entity.position.x, entity.position.y },
                force = entity.force,
                direction = entity.direction
            }
            entity.destroy()
        end
    end
end
