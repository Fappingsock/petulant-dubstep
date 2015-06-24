require ("gamemode")

function Precache(context)

end

function Activate()
	print("============MAP DEBUG INIT==============")
	GameRules.GameMode = _VampMode()
	GameRules.GameMode:InitGameMode()
end
