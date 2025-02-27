local playerPosition = {
	{ x = 247, y = 659, z = 13 },
	{ x = 247, y = 660, z = 13 },
	{ x = 247, y = 661, z = 13 },
	{ x = 247, y = 662, z = 13 }
}
local newPosition = {
	{ x = 189, y = 650, z = 13 },
	{ x = 189, y = 651, z = 13 },
	{ x = 189, y = 652, z = 13 },
	{ x = 189, y = 653, z = 13 }
}

local annihilator = Action()

function annihilator.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 2772 then
		local players = {}
		for _, position in ipairs(playerPosition) do
			local topPlayer = Tile(position):getTopCreature()
			if not topPlayer or not topPlayer:isPlayer() or topPlayer:getLevel() < 100 or topPlayer:getStorageValue(Storage.Quest.ExampleQuest.Example) ~= -1 then
				player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
				return false
			end
			players[#players+1] = topPlayer
		end

		for i, targetPlayer in ipairs(players) do
			Position(playerPosition[i]):sendMagicEffect(CONST_ME_POFF)
			targetPlayer:teleportTo(newPosition[i], false)
			targetPlayer:getPosition():sendMagicEffect(CONST_ME_ENERGYAREA)
		end
		item:transform(2773)
	elseif item.itemid == 2773 then
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
	end
	return true
end

annihilator:uid(30015)
annihilator:register()
