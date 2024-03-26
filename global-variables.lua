require("__base__/prototypes/entity/assemblerpipes.lua")
require("__base__/prototypes/entity/pipecovers.lua")

graphicspath = "__Epoch-Engineers__/Graphics/"

handcrankMillAnimation = {
    layers = { {
        filename = graphicspath ..
            "entities/hand-crank-mill-4Frames.png",
        priority = "high",
        width = 64,
        height = 64,
        frame_count = 4,
        line_length = 4,
        scale = 0.6
    }
    }
}
assemblerAnimation = {
    layers = { {
        filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
        priority = "high",
        width = 108,
        height = 114,
        frame_count = 32,
        line_length = 8,
        hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
            priority = "high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            scale = 0.5
        }
    }, {
        filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
        priority = "high",
        width = 95,
        height = 83,
        frame_count = 1,
        line_length = 1,
        repeat_count = 32,
        draw_as_shadow = true,
        hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
            priority = "high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            scale = 0.5
        }
    } }
}

assemblerWorkingSound = ({
    sound = { {
        filename = "__base__/sound/assembling-machine-t1-1.ogg",
        volume = 0.5
    } },
    audible_distance_modifier = 0.5,
    fade_in_ticks = 4,
    fade_out_ticks = 20
})

assemblerFlags = { "placeable-neutral", "placeable-player", "player-creation" }
