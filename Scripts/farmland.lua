function handleFarmland(event)
    local player = game.players[event.player_index]
    if event.entity.name == "farmland" then
        player.gui.screen.farmland_gui.destroy()
        if player.cursor_stack.valid_for_read then
            if player.cursor_stack.name == "hemp-seeds" then
                player.cursor_stack.count = player.cursor_stack.count - 1
                local position = event.entity.position
                local surface = event.entity.surface
                event.entity.destroy()
                surface.create_entity({ name = "farmland-seeded", position = position })
            end
        end
    end
end
