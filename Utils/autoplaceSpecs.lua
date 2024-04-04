local autoplaceSpec = {
    -- control = "random-entities",
    order = "a",
    category = "terrain",
    richness = true,
    sharpness = 0.9,
    max_probability = 0.1,
    tilerestrictions = {
        {
            name = "water",
            restriction = { "water-tile", "water-green", "water-mud", "water-shallow", "water-wube" }
        }
    },
    peaks = {
        {
            influence = 0.2,
            richness_influence = 0.8,
            noise_layer = "your_noise_layer_name",
            noise_octaves_difference = -1.5,
            noise_persistence = 0.5,
            starting_area_weight_optimal = 0,
            starting_area_weight_range = 0,
            starting_area_weight_max_range = 2,
        }
    }
}

local autoplace_utils = require("autoplace_utils")

local noise_layer = autoplace_utils.generate_noise_layer()

autoplaceSpec.peaks[1].noise_layer = noise_layer

data:extend { autoplaceSpec }
