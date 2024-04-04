-- Global Variables
require("global-variables")

--Util Functions
local util = require("Utils.data-util")
util.disable_all_base_techs()
util.disable_all_base_recipes()
util.disableBiterNestAutoSpawn()

--Stone Age
require("Stone Age.fluids")
require("Stone Age.capsules")
require("Stone Age.items")
require("Stone Age.recipes")
require("Stone Age.technology")
require("Stone Age.science-packs")
require("Stone Age.motion-energy")

--Bronze Age
require("Bronze Age.items")
require("Bronze Age.recipes")
require("Bronze Age.capsules")


--Entities
require("Entities.Assemblers.wood-processing")
require("Entities.Assemblers.stone-processing")
require("Entities.decoratives")
require("Entities.labs")
require("Entities.primitive-charcoal-kiln")
require("Entities.Belts.stone-slide")
require("Entities.Pipes.axis")
require("Entities.Inserter.pulley")
require("Entities.Assemblers.claypit")
require("Entities.Assemblers.air-dryer")
require("Entities.Assemblers.firepit")
require("Entities.waterwheel")
require("Entities.Assemblers.dirtpit")
require("Entities.Assemblers.farmland")

--Units
require("Entities.Units.cow")

--Weapons
require("Weapons.bow")
