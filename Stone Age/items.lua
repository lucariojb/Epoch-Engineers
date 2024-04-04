data:extend({ -- Grass
    {
        type = "item",
        name = "grass",

        icon = graphicspath .. "Icons/grass.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "raw-resource",
        fuel_category = "chemical",
        fuel_value = "100kJ"

    }, {
    type = "item",
    name = "natural-fiber",

    icon = graphicspath .. "Icons/natural-fiber.png",
    icon_size = 64,
    stack_size = 50,
    subgroup = "raw-material",
    fuel_category = "chemical",
    fuel_value = "400kJ"

}, {
    type = "item",
    name = "flint",
    icon = graphicspath .. "Icons/flint.png",
    icon_size = 64,
    stack_size = 50,
    subgroup = "raw-resource"

}, {
    type = "item",
    name = "whetstone",
    icon = graphicspath .. "Icons/whetstone.png",
    icon_size = 64,
    stack_size = 50,
    subgroup = "raw-material"
}, {
    type = "item",
    name = "clay",
    icon = graphicspath .. "Icons/clay.png",
    icon_size = 256,
    stack_size = 100,
    subgroup = "raw-material"
}, {
    type = "item",
    name = "dry-grass",
    icon = graphicspath .. "Icons/dry-grass.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "raw-material",
    fuel_category = "chemical",
    fuel_value = "400kJ"

}, {
    type = "item",
    name = "raw-brick",
    icon = graphicspath .. "Icons/raw-brick.png",
    icon_size = 256,
    stack_size = 100,
    subgroup = "raw-material",

}, {
    type = "item",
    name = "brick",
    icon = graphicspath .. "Icons/brick.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "raw-material",

}, {
    type = "item",
    name = "arrow-head",
    icon = graphicspath .. "Icons/arrow-head.png",
    icon_size = 64,
    stack_size = 100,
    subgroup = "intermediate-product"

}, {
    type = "item",
    name = "wooden-gear",
    icon = graphicspath .. "Icons/wooden-gear.png",
    icon_size = 256,
    stack_size = 100,
    subgroup = "intermediate-product"

}, {
    type = "item",
    name = "charcoal",
    icon = graphicspath .. "Icons/charcoal.png",
    icon_size = 128,
    stack_size = 100,
    subgroup = "raw-material",
    fuel_category = "chemical",
    fuel_value = "1MJ",

}, {
    type = "item",
    name = "raw-hide",
    icon = graphicspath .. "Icons/raw-hide.png",
    icon_size = 254,
    stack_size = 100,
    subgroup = "raw-material"

}, {
    type = "item",
    name = "meat",
    icon = graphicspath .. "Icons/meat.png",
    icon_size = 254,
    stack_size = 100,
    subgroup = "raw-material"
},
    --Primitive Brick
    {
        type = "item",
        name = "primitive-brick",
        icon = graphicspath .. "Icons/primitive-brick.png",
        icon_size = 64,
        stack_size = 10,
        subgroup = "raw-material",

    },
    --Stick
    {
        type = "item",
        name = "stick",
        category = "wood-processing",
        icon = graphicspath .. "Icons/stick.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "raw-material",
        fuel_category = "chemical",
        fuel_value = data.raw["item"]["wood"].fuel_value

    },
})
