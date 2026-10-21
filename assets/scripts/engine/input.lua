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

---@return boolean true while the first finger is down
function input.IsTouchDown()
  return Input.IsTouchDown()
end

---@return boolean true only on the tick the first finger touched
function input.IsTouchJustPressed()
  return Input.IsTouchJustPressed()
end

---@return boolean true only on the tick the first finger lifted
function input.IsTouchJustReleased()
  return Input.IsTouchJustReleased()
end

---@return boolean true only on the tick a single finger tap finished
function input.IsTouchTapped()
  return Input.IsTouchTapped()
end

---@return boolean true only on the tick a quick two finger tap finished, for cancel / menus
function input.IsTouchTwoFingerTapped()
  return Input.IsTouchTwoFingerTapped()
end

---@return number x, number y touch position in game coords, -1 when not touching
function input.GetTouchPos()
  return Input.GetTouchPos()
end

return input
