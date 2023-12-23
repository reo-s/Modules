local UserInputService = game:GetService("UserInputService")
local Raycast = {}

Raycast.Mouse = function(camera: Camera, blackList)
	local mousePos = UserInputService:GetMouseLocation()
	local mouseRay = camera:ViewportPointToRay(mousePos.X, mousePos.Y)

	local raycastParams = RaycastParams.new()
	raycastParams.FilterType = Enum.RaycastFilterType.Exclude
	raycastParams.FilterDescendantsInstances = blackList

	return workspace:Raycast(mouseRay.Origin, mouseRay.Direction * 1000, raycastParams)
end

return Raycast
