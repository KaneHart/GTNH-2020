local debug = require("component").debug
local component = require("component")
local chat = component.getPrimary("chat_box")

chat.say("Resetting Alpha Site")

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 42")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 42")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 42")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 42")
os.sleep( 1 )

debug.runCommand("//pos1 x,y,z")
debug.runCommand("//pos2 x,y,z")
debug.runCommand("//set 42")
os.sleep( 1 )

