local component = require("component")
local sg = component.getPrimary("stargate")
local sides = require("sides")
local term = require("term")

local owgate = ""

bunker = {
	{ "A", "BWNA-EU5-T1"},
	{ "B", "H58U-50U-GN"},
	{ "C", "QDZK-38H-IW"},
	{ "D", "2SVX-ORK-1R"},
	{ "E", "6MAW-FDB-3Z"},
	{ "F", "I19Y-WM6-YD"},
	{ "G", "56Y2-YXK-RC"},
	{ "H", "WGYX-PMK-SF"},
	{ "I", "COKA-L66-ZO"},
}

function dialow()
	owgate = bunker[math.random(9)][2]
	print(os.date("%c"))
	print (owgate)
	sg.dial(owgate)
end

function main()
	term.clear()
	while true do
		if component.redstone.getInput(sides.back) == 15 then dialow()
		end
		os.sleep(5)
		print("...")
	end
end

main()