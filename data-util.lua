local util = {}

function util.disable_all_base_techs()
    for _, tech in pairs(data.raw["technology"]) do
        if tech then
            if tech.normal then
                tech.normal.enabled = false
                tech.expensive.enabled = false
                tech.normal.hidden = true
                tech.expensive.hidden = true
            else
                tech.enabled = false
                tech.hidden = true
            end
        end
    end
end

function util.disable_all_base_recipes()
    for _, recipe in pairs(data.raw["recipe"]) do
        if recipe then
            if recipe.normal then
                recipe.normal.enabled = false
                recipe.expensive.enabled = false
                recipe.normal.hidden = true
                recipe.expensive.hidden = true
            else
                recipe.enabled = false
                recipe.hidden = true
            end
        end
    end
end

function util.tech_researched(technologyname, player)
    local technology = player.force.technologies[technologyname]
    if technology.researched then
        return true
    else
        return false
    end
end

function util.player_insert_items(player, items)
    local itemproto = game.item_prototypes
    local count
    for name, v in pairs(items) do
        if v.count > 0 and name ~= "NONE" then
            if itemproto[name] then
                if v.in_stack then
                    count = v.count * itemproto[name].stack_size
                else
                    count = v.count
                end
                player.insert { name = name, count = count }
            else
                player.print({ "description.Schall-failed-to-add-msg", name, count })
            end
        end
    end
end

function util.player_insert_item_gunSlots(player, item)
    local gunInventory = player.get_inventory(defines.inventory.character_guns)
    if gunInventory and gunInventory.valid then
        gunInventory.insert(item)
    end
end

return util
