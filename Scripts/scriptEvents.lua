function callscriptevents(event)
    if event.effect_id == "on_handcrankmill_placed" then
        event.source_entity.operable = false
    end
end
