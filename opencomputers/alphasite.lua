local computer = require("computer")
local component = require("component")
local chat = component.getPrimary("chat_box")
local sides = require("sides")
local colors = require("colors")
local rs = component.redstone
local debug = require("component").debug
  print(rs.getBundledInput(sides.right, colors.green))
  while rs.getBundledInput(sides.right, colors.green) == 0 do
os.sleep(1);
  print("Green Redstone OFF")


  end

rs.setBundledOutput(sides.right, { [colors.black] = 15 } )
os.sleep(1);
chat.say("Alpha Base Hangers about to Open")

os.sleep(5);
  print("Green Redstone ON")

os.sleep(1);


debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 0")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 0")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 0")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 0")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 0")
os.sleep( 1 )

os.sleep( 5 )
rs.setBundledOutput(sides.right, { [colors.black] = 0 } )
print("Hangers Open Terminating Computer")
computer.shutdown(false)
