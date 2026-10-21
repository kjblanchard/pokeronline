local input = {}

---Matches MouseButtons in mouse.h
input.MouseButtons = {
  Left = 0,
  Right = 1,
  Middle = 2,
}

---@param button integer|nil a value in input.MouseButtons, defaults to Left
---@return boolean
function input.IsMouseButtonDown(button)
  return Input.IsMouseButtonDown(button or input.MouseButtons.Left)
end

---@param button integer|nil a value in input.MouseButtons, defaults to Left
---@return boolean true only on the tick the button was pressed
function input.IsMouseButtonJustPressed(button)
  return Input.IsMouseButtonJustPressed(button or input.MouseButtons.Left)
end

---@param button integer|nil a value in input.MouseButtons, defaults to Left
---@return boolean true only on the tick the button was released
function input.IsMouseButtonJustReleased(button)
  return Input.IsMouseButtonJustReleased(button or input.MouseButtons.Left)
end

return input
