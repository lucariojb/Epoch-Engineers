local function has_localization(prototype)
    -- Überprüfen, ob eine Lokalisierung für den Namen existiert
    local localized_name = prototype.localised_name
    if localized_name and #localized_name > 0 then
        return true
    end
    return false
end

function write_data(type, prototype_table)
    file_name = type .. ".txt"
    game.write_file(file_name, "[" .. type .. "-name]")
    for name, prototype in pairs(prototype_table) do
        if not has_localization(prototype) then
            game.write_file(file_name, name .. "=\n", true)
        end
    end
    game.write_file(file_name, "\n[" .. type .. "-description]")
    for name, prototype in pairs(prototype_table) do
        if prototype.localised_description and not has_localization(prototype) then
            game.write_file(file_name, name .. "=\n", true)
        end
    end
end
