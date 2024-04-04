autoplaceUtil = {}

function autoplaceUtil.singleSpawnerAutoplace(bases_per_chunk)
    -- Anpassung der Wahrscheinlichkeit und Dichte
    local bases_per_chunk = bases_per_chunk or 1        -- Ziel ist ein Spawner alle 6 Chunks
    local chunk_size = 32 * 32                          -- Größe eines Chunks in Quadratmetern
    local target_density = bases_per_chunk / chunk_size -- Zieldichte pro Quadratmeter

    local probability_expression = noise.to_noise_expression(target_density)
    local richness_expression = noise.to_noise_expression(1) -- Kann angepasst werden, falls notwendig

    return {
        force = "enemy",
        probability_expression = probability_expression,
        richness_expression = richness_expression
    }
end

return autoplaceUtil
