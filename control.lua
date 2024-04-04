require("Scripts.disable-mining")
require("Scripts.starting-items")
require("Scripts.claypit")
require("locale.createLocalsScript")
require("Scripts.scriptEvents")
require("Scripts.engineersHand")
require("Scripts.cowSpawner")

script.on_init(function()
    write_data("item", game.item_prototypes)
    write_data("recipe", game.recipe_prototypes)
    write_data("entity", game.entity_prototypes)
    write_data("technology", game.technology_prototypes)


    global.minable_entities = generateMineableEntityLUT(game.surfaces["nauvis"])
end)

script.on_event(defines.events.on_selected_entity_changed, function(event)
    miningPrevention(event)
end)

script.on_configuration_changed(function()
    global.minable_entities = generateMineableEntityLUT(game.surfaces["nauvis"])
end)

script.on_event(defines.events.on_player_created, function(event)
    override_starting_items(event)
    remove_shipwreck(event)
    checkStartArea(event)
end)

script.on_event(defines.events.on_cutscene_cancelled, function(event)
    override_starting_items(event)
    remove_shipwreck(event)
    checkStartArea(event)
end)


local event_on_built = { defines.events.on_built_entity, defines.events.on_robot_built_entity,
    defines.events.script_raised_revive, defines.events.script_raised_built }

script.on_event(event_on_built, function(event)
    claypitplacer(event)
end)

script.on_event(defines.events.on_script_trigger_effect, function(event)
    callscriptevents(event)
end)

script.on_event(defines.events.on_player_gun_inventory_changed, function(event)
    handleEngineersHand(event)
end)

script.on_event(defines.events.on_entity_died, function(event)
    onCowKilled(event)
end)
