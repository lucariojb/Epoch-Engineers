local util = require("Utils.data-util")



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
        area = { { player.position.x - 50, player.position.y - 50 }, { player.position.x + 50, player.position.y + 50 } },
    }
    --Remove Shipwrecks
    for _, shipwreck in pairs(shipwrecks) do
        if string.find(shipwreck.name, "crash") then
            shipwreck.destroy()
        end
    end
end

function checkStartArea(event)
    local deadtrees = {
        "dead-dry-hairy-tree",
        "dead-grey-trunk",
        "dead-tree-desert" }

    local flintcount = 0
    local deadtreecount = 0
    local grasscount = 0

    local flintGoal = 20
    local deadtreeGoal = 10
    local grassGoal = 20

    local player = game.players[event.player_index]

    local entites = player.surface.find_entities_filtered {
        area = { { player.position.x - 100, player.position.y - 100 }, { player.position.x + 100, player.position.y + 100 } }, }
    for _, entity in pairs(entites) do
        if string.find(entity.name, "dead") then
            deadtreecount = deadtreecount + 1
        end
        if entity.name == "grass-pile" then
            grasscount = grasscount + 1
        end
        if entity.name == "flint_ground" then
            flintcount = flintcount + 1
        end
    end
    if flintcount < flintGoal then
        for i = flintGoal, 10, 1 do
            player.surface.create_entity { name = "flint_ground", position = { player.position.x + math.random(10, 100), player.position.y + math.random(10, 100) } }
        end
    end
    if deadtreecount < deadtreeGoal then
        for i = deadtreecount, deadtreeGoal, 1 do
            player.surface.create_entity { name = deadtrees[math.random(1, 3)], position = { player.position.x + math.random(10, 100), player.position.y + math.random(10, 100) } }
        end
    end
    if grasscount < grassGoal then
        for i = grasscount, grassGoal, 1 do
            player.surface.create_entity { name = "grass-pile", position = { player.position.x + math.random(10, 100), player.position.y + math.random(10, 100) } }
        end
    end
end
