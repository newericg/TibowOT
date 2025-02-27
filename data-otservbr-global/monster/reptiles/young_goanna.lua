local mType = Game.createMonsterType("Young Goanna")
local monster = {}

monster.description = "a young goanna"
monster.experience = 6100
monster.outfit = {
	lookType = 1196,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0
}

monster.raceId = 1817
monster.Bestiary = {
	class = "Reptile",
	race = BESTY_RACE_REPTILE,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Kilmaresh Central Steppe, Kilmaresh Southern Steppe, Green Belt."
}

monster.health = 6200
monster.maxHealth = 6200
monster.race = "blood"
monster.corpse = 31409
monster.speed = 190
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "platinum coin", chance = 100000, maxCount = 3 },
	{ name = "envenomed arrow", chance = 68000, maxCount = 35 },
	{ name = "terra rod", chance = 10900 },
	{ name = "goanna meat", chance = 9800 },
	{ name = "snakebite rod", chance = 9000 },
	{ name = "blue goanna scale", chance = 7900 },
	{ name = "goanna claw", chance = 4300 },
	{ name = "serpent sword", chance = 4000 },
	{ name = "leaf star", chance = 3800, maxCount = 3 },
	{ name = "silver amulet", chance = 3800 },
	{ name = "springsprout rod", chance = 2700 },
	{ name = "scared frog", chance = 2100 },
	{ name = "terra amulet", chance = 1100 },
	{ name = "lizard heart", chance = 800 },
	{ name = "sacred tree amulet", chance = 800 },
	{ name = "small tortoise", chance = 550 },
	{ name = "fur armor", chance = 270 },
	{ name = "terra hood", chance = 250 }
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230, condition = { type = CONDITION_POISON, totalDamage = 15, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -490, range = 3, radius = 1, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_EXPLOSIONHIT, target = true }
}

monster.defenses = {
	defense = 78,
	armor = 78,
	mitigation = 2.16,
	{ name = "speed", interval = 2000, chance = 5, speedChange = 350, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 }
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -20 },
	{ type = COMBAT_EARTHDAMAGE, percent = 20 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false }
}

mType:register(monster)
