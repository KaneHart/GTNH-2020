-- Loads SG Crap
component = require("component")
sg = component.getPrimary("stargate")
-- Term Lib
local term = require("term") --requires the term library

--set res
component.gpu.setResolution(30,4)


-- Runs one Time to shutdown the gate if script broken
os.sleep(1)
sg.closeIris()
os.sleep(1)
sg.disconnect()



-- Used to start the math again
::loop::

-- Get Hour & Minutes
h = (os.date("%H"))
m = (os.date("%M"))

-- Convert into Seconds
hs = (60*h)
ms = m
a = (hs+ms)

-- Gate Open Till 8:00AM
open = (480-a)

-- Gate Opening Starts at 5:05AM
opening = (310-a)

-- Gated Closed The Biggest Countdown Part from 8AM to Midnight
closed = (1750-a)


-- Debug Testing Crap
--[[print(string.format("closed %03d",closed))
print(string.format("open %03d", open))
print(string.format("opening %03d", opening))]]--



-- Gate Opening 5:05AM
while (opening) > 1 do
os.sleep(1)
term.clear()
print("")
print(string.format(" Gate Opening In %03d Seconds", opening))
goto loop
end

-- Gate Open Till 8:00AM
while (open) > 1 do
os.sleep(1)
term.clear()
print("")
print(string.format(" Gate Closing In %03d Seconds", open))
sg.openIris()
sg.dial("XXXXXXXXXX")
goto loop
end

-- Gate Shutsdown here at 8:00AM
os.sleep(1)
term.clear()
print("")
print(string.format(" Gate Opening In %03d Seconds", closed))
sg.closeIris()
sg.disconnect()
goto loop