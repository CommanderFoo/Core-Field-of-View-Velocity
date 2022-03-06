local LEFT_HAND = script:GetCustomProperty("LeftHand")
local RIGHT_HAND = script:GetCustomProperty("RightHand")

local function on_player_joined(player)
	local left_ik = World.SpawnAsset(LEFT_HAND, { networkContext = NetworkContextType.NETWORKED })
	local right_ik = World.SpawnAsset(RIGHT_HAND, { networkContext = NetworkContextType.NETWORKED })

	left_ik:AttachToPlayer(player, "left_prop")
	right_ik:AttachToPlayer(player, "right_wrist")

	--left_ik:SetPosition(Vector3.New(-44.091, 25.517, 19.817))
	--left_ik:SetRotation(Rotation.New(0, -140.832, 0))
	--right_ik:SetPosition(Vector3.New(-60, -40, 0))

	left_ik:Activate(player)
	--right_ik:Activate(player)
end

Game.playerJoinedEvent:Connect(on_player_joined)

-- function Tick()
-- 	local player = Game.GetPlayers()[1]
-- 	local vel = player:GetVelocity().size

-- 	if(vel > 100) then
-- 		-- player:EnableRagdoll("right_elbow", .7)
-- 		-- player:EnableRagdoll("left_elbow", .7)
-- 		-- player:EnableRagdoll("right_shoulder", .7)
-- 		-- player:EnableRagdoll("left_shoulder", .7)
-- 		-- player:EnableRagdoll("neck", .7)
-- 	else
-- 		player:DisableRagdoll()
-- 	end	
-- end