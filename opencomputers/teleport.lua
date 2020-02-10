--[[Thanks to Rdjrjqouqcu for helping with this script.

This script uses the motion sensor and debug card to grab players
and teleport them via spread and then set their Spawnpoint to that location.

requires https://github.com/ShadowKatStudios/OC-Minitel/tree/master/realtime]]--


local event = require("event")
local component = require("component")
local fs = require("filesystem")
local debug = require("component").debug
component.motion_sensor.setSensitivity(0)


while true do
  eventname, address, x, y, z, name = event.pull("motion")

  debug.runCommand("spreadplayers 0 0 4000 12000 false " .. name)
  debug.runCommand("spawnpoint " .. name)
  x,y,z = debug.getPlayer(name).getPosition()


date = os.date(nil,realtime.time())
file = fs.open("/home/teleportlog.txt","a")

file:write("\n")
file:write(string.format(name .." " .. date .. " " .. "%.1f,%.1f,%.1f",x,y,z .. "\n"))

file:close()

end