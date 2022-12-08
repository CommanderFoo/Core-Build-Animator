---@type Tween
local Tween = require(script:GetCustomProperty("Tween"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()

local OBJECT = ROOT:GetCustomProperty("Object"):WaitForObject()
local SPEED = ROOT:GetCustomProperty("Speed")
local TWEEN_SPEED = ROOT:GetCustomProperty("TweenSpeed")
local EASING = ROOT:GetCustomProperty("Easing")
local START_Z = ROOT:GetCustomProperty("StartZ")
local START_SCALE = ROOT:GetCustomProperty("StartScale")
local ROTATE_AROUND_OBJECT = ROOT:GetCustomProperty("RotateAroundObject")
local CAMERA_ROTATOR = ROOT:GetCustomProperty("CameraRotator"):WaitForObject()
local LOOK_AT_TARGET = ROOT:GetCustomProperty("LookAtTarget"):WaitForObject()
local HIDE_PLAYER = ROOT:GetCustomProperty("HidePlayer")
local WAIT_DURATION = ROOT:GetCustomProperty("WaitDuration")
local ENABLE_FINAL_SHOT = ROOT:GetCustomProperty("EnableFinalShot")

local SHOW_CREDIT = ROOT:GetCustomProperty("ShowCredit")
local SHOW_STATS = ROOT:GetCustomProperty("ShowStats")

local CAMERA_START = ROOT:GetCustomProperty("CameraStart"):WaitForObject()
local CAMERA_END = ROOT:GetCustomProperty("CameraEnd"):WaitForObject()
local SHOT_OUT_SPEED = ROOT:GetCustomProperty("ShotOutSpeed")
local SHOT_HOLD_DURATION = ROOT:GetCustomProperty("ShotHoldDuration")

local STATS = script:GetCustomProperty("Stats"):WaitForObject()
local NAME = script:GetCustomProperty("Name"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

local meshes = OBJECT:FindDescendantsByType("StaticMesh")
local tweens = {}
local objs = {}
local out_tween = nil
local is_building = false
local total_time = 0
local rotate_tween = nil

local pivot_orig_rot = CAMERA_ROTATOR.parent:GetWorldRotation()
local camera_start_orig_pos = CAMERA_START:GetWorldPosition()
local camera_start_orig_rot = CAMERA_START:GetWorldRotation()

local function setup()
	objs = {}
	total_time = 0

	NAME.text = OBJECT:GetChildren()[1].name

	for index, child in ipairs(meshes) do
		objs[#objs + 1] = { child = child, position = child:GetPosition(), scale = child:GetScale(), rotation = child:GetRotation() }

		child:SetScale(Vector3.New(START_SCALE))
		child:SetPosition(child:GetPosition() + (Vector3.New(0, 0, START_Z)))

		total_time = (index / SPEED)
	end

	print("Build Time: ", total_time)
end

local function reset()
	tweens = {}
	objs = {}
	is_building = false
	CAMERA_ROTATOR.parent:SetWorldRotation(pivot_orig_rot)
	CAMERA_START:SetWorldPosition(camera_start_orig_pos)
	CAMERA_START:SetWorldRotation(camera_start_orig_rot)
end

local function animate_out()
	if(not ENABLE_FINAL_SHOT) then
		reset()
		return
	end

	if(CAMERA_START ~= nil and CAMERA_END ~= nil) then
		LOCAL_PLAYER:SetOverrideCamera(CAMERA_START, 0)
		
		local out_pos = CAMERA_START:GetPosition()
		local out_rot = CAMERA_START:GetRotation()
		local end_pos = CAMERA_END:GetPosition()
		local end_rot = CAMERA_END:GetRotation()

		out_tween = Tween:new(SHOT_OUT_SPEED, {
			
			x = out_pos.x, y = out_pos.y, z = out_pos.z,
			rx = out_rot.x, ry = out_rot.y, rz = out_rot.z
		
		}, {

			x = end_pos.x, y = end_pos.y, z = end_pos.z,
			rx = end_rot.x, ry = end_rot.y, rz = end_rot.z

		})

		out_tween:on_change(function(c)
			CAMERA_START:SetRotation(Rotation.New(c.rx, c.ry, c.rz))
			CAMERA_START:SetPosition(Vector3.New(c.x, c.y, c.z))
		end)

		out_tween:on_complete(function()
			out_tween = nil
			Task.Wait(SHOT_HOLD_DURATION)
			LOCAL_PLAYER:ClearOverrideCamera(0)

			if(HIDE_PLAYER) then
				Events.BroadcastToServer("Build.Animator.Show")
			end

			reset()
		end)
	end
end

local function scale_move_in()
	local total = #objs

	for index, obj in ipairs(objs) do
		local index = #tweens + 1
		local pos = obj.child:GetPosition()
		local tween = Tween:new(TWEEN_SPEED, {
			
			sx = 0,
			sy = 0,
			sz = 0,
			z = pos.z,
			rx = 0, ry = 0, rz = 0
		
		}, {
			
			sx = obj.scale.x,
			sy = obj.scale.y,
			sz = obj.scale.z,
			z = pos.z - START_Z,
			rx = obj.rotation.x,
			ry = obj.rotation.y,
			rz = obj.rotation.z
		
		})
		
		tween:on_change(function(c)
			pos.z = c.z
			obj.child:SetScale(Vector3.New(c.sx, c.sy, c.sz))
			obj.child:SetPosition(pos)
			obj.child:SetRotation(Rotation.New(c.rx, c.ry, c.rz))
		end)

		tween:on_complete(function()
			Tween.remove(tweens, tween)

			STATS.text = "Mesh Count: " .. tostring(index)

			if(index == total) then
				if(ROTATE_AROUND_OBJECT and CAMERA_ROTATOR ~= nil) then
					Task.Wait(WAIT_DURATION)
					CAMERA_ROTATOR.parent:StopRotate()
					LOCAL_PLAYER:ClearOverrideCamera(0)
				
					animate_out()
				else
					animate_out()
				end
			end
		end)

		tween:set_delay(index / SPEED)
		tween:set_easing(Tween.Easings[EASING or "Out_Back"])
		tweens[index] = tween
	end
end

function Tick(dt)
	for index, tween in ipairs(tweens) do
		tween:tween(dt)
	end

	if(out_tween ~= nil) then
		out_tween:tween(dt)
	end

	if(rotate_tween ~= nil) then
		rotate_tween:tween(dt)
	end
end

Input.actionPressedEvent:Connect(function(player, action)
	if(action == "Build" and not is_building) then
		if(SHOW_CREDIT) then
			NAME.parent.visibility = Visibility.FORCE_ON
		end
		
		if(SHOW_STATS) then
			STATS.parent.visibility = Visibility.FORCE_ON
		end
		
		is_building = true
		setup()
		
		if(HIDE_PLAYER) then
			Events.BroadcastToServer("Build.Animator.Hide")
		end

		if(ROTATE_AROUND_OBJECT and CAMERA_ROTATOR ~= nil) then
			LOCAL_PLAYER:SetOverrideCamera(CAMERA_ROTATOR, 0)
			CAMERA_ROTATOR:LookAtContinuous(LOOK_AT_TARGET or OBJECT)
			
			rotate_tween = Tween:new(total_time, { z = pivot_orig_rot.z }, { z = 360 - pivot_orig_rot.z })
			rotate_tween:on_change(function(c)
				CAMERA_ROTATOR.parent:SetRotation(Rotation.New(0, 0, c.z))
			end)

			rotate_tween:on_complete(function()
				rotate_tween = nil
			end)
		else
			animate_out()
		end

		scale_move_in()
	end
end)