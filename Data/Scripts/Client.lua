local local_player = Game.GetLocalPlayer()

Task.Wait()

local cam = local_player:GetActiveCamera()
local min_fov = 90
local max_fov = 140
local fov_speed = 10

function Tick(dt)
	local current_velocity = local_player:GetVelocity().size
	local current_fov = cam.fieldOfView

	cam.fieldOfView = CoreMath.Lerp(current_fov, min_fov + current_velocity * (max_fov - min_fov) / 3500, dt * fov_speed)
end