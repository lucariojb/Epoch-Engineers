function handleEngineersHand(event)
    local player = game.players[event.player_index]
    local gunInventory = player.get_inventory(defines.inventory.character_guns)
    local playerInventory = player.get_inventory(defines.inventory.character_main)
    if gunInventory and gunInventory.valid then
        if gunInventory.get_item_count("engineers-hand") == 0 then
            if gunInventory.can_insert("engineers-hand") then
                gunInventory.insert("engineers-hand")
            end
        end
    end
    if playerInventory and playerInventory.valid then
        local count = playerInventory.get_item_count("engineers-hand")
        if count > 0 then
            playerInventory.remove({ name = "engineers-hand", count = count })
        end
    end
end
