require("gamemode")

if _VampMode == nil then
	_VampMode = {}
end

function Precache(context)

end

function Activate()
	GameRules.GameMode = _VampMode()
	GameRules.GameMode:InitGameMode()
end
