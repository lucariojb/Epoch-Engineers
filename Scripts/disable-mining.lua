local util = require("Utils.data-util")

function generateMineableEntityLUT(surface)
    local LUT = {}
    local entities = game.get_filtered_entity_prototypes { { filter = "type", type = { "simple-entity", "fish", "tree", "resource" } } }
    --surface.find_entities_filtered({ type = { "simple-entity", "fish", "tree" } })
    for _, entity in pairs(entities) do
        if string.find(entity.name, "rock") and string.find(entity.name, "huge") == nil then
            LUT[entity.name] = "simple-pickaxe"
        end
        if string.find(entity.name, "rock") and string.find(entity.name, "huge") then
            LUT[entity.name] = "better-pickaxe"
        end
        if string.find(entity.name, "tree") and string.find(entity.name, "dead") == nil then
            LUT[entity.name] = "simple-axe"
        end
        if string.find(entity.name, "fish") then
            LUT[entity.name] = "speer-fishing"
        end
        if entity.type == "resource" then
            LUT[entity.name] = "DISABLED"
        end
    end
    return LUT
end

--All Rocks
function miningPrevention(event)
    if event then
        local player = game.players[event.player_index]
        local entity = player.selected
        local last_entity = event.last_entity
        if entity then
            tech = global.minable_entities[entity.name]
            if tech == "DISABLED" then
                entity.minable = false
            elseif tech then
                if player.force.technologies[tech].researched == false then
                    entity.minable = false
                end
            end
        end
        if last_entity then
            if global.minable_entities[last_entity.name] then
                last_entity.minable = true
            end
        end
    end
end
