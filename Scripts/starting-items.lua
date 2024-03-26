local util = require("data-util")



function override_starting_items(event)
    local player = game.players[event.player_index]
    if not player.get_main_inventory() then return end
    local items = {}

    local function items_add(name, count, in_stack)
        items[name] = { count = count or 1, in_stack = in_stack or false }
    end

    player.clear_items_inside()

    items_add("lab-cave", 1)
    util.player_insert_items(player, items)
    util.player_insert_item_gunSlots(player, "engineers-hand")
end

function remove_shipwreck(event)
    local player = game.players[event.player_index]
    --Find ALl entites
    local shipwrecks = player.surface.find_entities_filtered {
        area = { { player.position.x - 30, player.position.y - 30 }, { player.position.x + 30, player.position.y + 30 } },
    }
    --Remove Shipwrecks
    for _, shipwreck in pairs(shipwrecks) do
        if string.find(shipwreck.name, "crash") then
            -- print("SHIPWRECK:" .. shipwreck.name)
            shipwreck.destroy()
            -- else
            --      print("NO SHIPWRECK: " .. shipwreck.name)
        end
    end
end
