function FromMatrix(position, lookAt)
    local lookVector = (position - lookAt).Unit
    local modelUpVector = Vector3.new(0, 1, 0)
    local rightVector = lookVector:Cross(modelUpVector)
    local upVector = rightVector:Cross(lookVector)

    return CFrame.fromMatrix(position, rightVector, upVector)
end
