-- Global Variables
require("global-variables")

local util = require("data-util")
util.disable_all_base_techs()
util.disable_all_base_recipes()

require("Entities.decoratives")
require("Entities.labs")

require("Entities.primitive-charcoal-kiln")
require("Entities.Belts.stone-slide")
require("Entities.Pipes.axis")
require("Entities.Inserter.pulley")
require("Entities.claypit")
require("Entities.air-dryer")
require("Entities.firepit")
require("Entities.waterwheel")
require("Entities.dirtpit")

require("Weapons.bow")

require("Stone Age.motion-energy")
require("Stone Age.wood-processing")
require("Stone Age.items")
require("Stone Age.recipes")
require("Stone Age.technology")
require("Stone Age.science-packs")
require("Stone Age.stone-processing")
require("Stone Age.fluids")
require("Stone Age.capsules")
