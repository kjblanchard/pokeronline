local ui = require("engine.ui")
local input = require("engine.input")
local log = require("engine.log")
local buttontest = {}

local buttonNames = { "TestButton1", "TestButton2", "TestButton3" }
local buttons = {}

---Caches the test buttons, call after the ui file is loaded
function buttontest.Init()
  for _, name in ipairs(buttonNames) do
    local obj = ui.GetUIObject(name)
    if obj then
      buttons[#buttons + 1] = { name = name, userdata = obj.userdata, clicks = 0, active = true }
    else
      log.Warn("Button test could not find " .. name)
    end
  end
end

---Checks every button's status, call each tick
function buttontest.Update()
  for _, b in ipairs(buttons) do
    local status = ui.GetButtonMouseStatus(b.userdata)
    if status == ui.ButtonMouseStatus.JustOverlap then
      log.Warn(b.name .. " hover enter")
    elseif status == ui.ButtonMouseStatus.JustLeftOverlap then
      log.Warn(b.name .. " hover leave")
    end
    if ui.IsButtonClicked(b.userdata) then
      b.clicks = b.clicks + 1
      log.Warn(b.name .. " clicked! (count " .. b.clicks .. ")")
    end
  end
  -- Touch logging, to check positions and gestures on device
  if input.IsTouchJustPressed() then
    local x, y = input.GetTouchPos()
    log.Warn("touch down at " .. x .. ", " .. y)
  elseif input.IsTouchJustReleased() then
    local x, y = input.GetTouchPos()
    log.Warn("touch up at " .. x .. ", " .. y)
  end
  if input.IsTouchTapped() then
    log.Warn("touch tapped")
  end
  if input.IsTouchTwoFingerTapped() then
    log.Warn("two finger tapped")
  end
  -- Right click (or two finger tap) button 3 to toggle button 2, to test inactive buttons
  local b2, b3 = buttons[2], buttons[3]
  if b2 and b3 and ui.IsButtonClicked(b3.userdata, input.MouseButtons.Right) then
    b2.active = not b2.active
    ui.SetButtonActive(b2.userdata, b2.active)
    log.Warn(b2.name .. " active: " .. tostring(b2.active))
  end
end

return buttontest
