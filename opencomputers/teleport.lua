--[[Thanks to Rdjrjqouqcu for helping with this script.

This script uses the motion sensor and debug card to grab players
and teleport them via spread and then set their Spawnpoint to that location.

requires https://github.com/ShadowKatStudios/OC-Minitel/tree/master/realtime]]--


local event = require("event")
local component = require("component")
local fs = require("filesystem")
component.motion_sensor.setSensitivity(0)

while true do
  eventname, address, x, y, z, name = event.pull("motion")

  component.debug.runCommand("spreadplayers 0 0 4000 12000 false " .. name)
  component.debug.runCommand("spawnpoint " .. name)

date = os.date(nil,realtime.time())
file = fs.open("/home/teleport-logs.txt","a")
file:write(name .." " .. date .. "\n")
file:close()

end