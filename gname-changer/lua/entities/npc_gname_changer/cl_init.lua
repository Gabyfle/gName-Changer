--[[---------------------------------------------------------------------------

				        gName-Changer | CLIENT SIDE CODE
				This addon has been created & released for free
								   by Gaby
				Steam : https://steamcommunity.com/id/EpicGaby

-----------------------------------------------------------------------------]]
include("shared.lua")

function ENT:Draw()
	local pos = self:GetPos()+ Vector(0, 0, 75)
	local ang = self:GetAngles()
	local angles = LocalPlayer():EyeAngles()

	self:DrawModel()	
	ang:RotateAroundAxis(ang:Forward(), 90)
	ang:RotateAroundAxis(ang:Right(), 90)

	if LocalPlayer():GetPos():DistToSqr(self:GetPos()) < 90000 then
		cam.Start3D2D(pos + ang:Up(), Angle(0, angles.y - 90, 90), 0.1) -- The 3d2dcam will always face the player
			draw.RoundedBox(5, -80, -49, 163, 40 , gNameChanger.camColor)
			draw.DrawText("Secrétaire", "montserrat-medium", 0, -42, Color(255, 255, 255, 255), TEXT_ALIGN_CENTER)
		cam.End3D2D()
	end
end