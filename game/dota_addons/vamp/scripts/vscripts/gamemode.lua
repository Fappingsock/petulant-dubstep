require ("libraries/timers")

if _VampMode == nil then
	_VampMode = class({})
end

PRE_GAME_TIME = 0
HERO_SELECT_TIME = 10
NUMBER_OF_WISPS = 9
NUMBER_OF_VAMPIRES = 3

function _VampMode:InitGameMode()
	GameRules:SetHeroSelectionTime(HERO_SELECT_TIME)
	GameRules:SetPreGameTime(PRE_GAME_TIME)
	GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAM_GOODGUYS, NUMBER_OF_WISPS)
	GameRules:SetCustomGameTeamMaxPlayers(DOTA_TEAMBADGUYS, NUMBER_OF_VAMPIRES)
	--GameRules:SetCustomGameSetupRemainingTime(0)
	--GameRules:SetCustomGameSetupAutoLaunchDelay(0)

	ListenToGameEvent("game_rules_state_change", Dynamic_Wrap(_VampMode, "Testing"), self)

end

function _VampMode:Testing(keys)
	if GameRules:State_Get() == DOTA_GAMERULES_STATE_GAME_IN_PROGRESS then
		print("yo")
	end
end