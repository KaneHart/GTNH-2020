local component = require("component")
local sg = component.getPrimary("stargate")
local sides = require("sides")
local term = require("term")
local gpu = component.gpu
local w,h = gpu.getResolution()

local curBunker = 1
gpu1 = component.get("c574")
gpu2 = component.get("004a")

local gateone = "X"
local gateoneadr = ""
local gatetwo = "X"
local gatetwoadr = ""

function validgates()
	if bunker[curBunker][2] ~= "X " then
		gateone = bunker[curBunker][2]
		gateoneadr = bunker[curBunker][5]
	end
	if bunker[curBunker][3] ~= "X " and gateone == "X" then 
		gateone = bunker[curBunker][3]
		gateoneadr = bunker[curBunker][6]
	elseif bunker[curBunker][3] ~= "X " then 
		gatetwo = bunker[curBunker][3]
		gatetwoadr = bunker[curBunker][6]
	end
	if bunker[curBunker][4] ~= "X " and gatetwo == "X" then 
		gatetwo = bunker[curBunker][4]
		gatetwoadr = bunker[curBunker][7]
	end
end

bunker = {
	{ "A", "NE", "TF", "X ", "ZVQN-NXV-A7", "NWEM-Y83-FA", "X ", "-6,840/1,680", 11, 16, "BWNA-EU5-T1"},
	{ "B", "X ", "NE", "EN", "X ", "96NS-ORI-1R", "BFFL-0PS-77", "-2,105/5,925", 21, 20, "H58U-50U-GN"},
	{ "C", "TF", "NE", "X ", "MD1K-15L-UD", "G8UR-FHL-QG", "X ", "1,655/6,309", 33, 20, "QDZK-38H-IW"},
	{ "D", "TF", "X ", "EN", "ESPU-SSI-RK", "X ", "BFFL-0PS-77", "6,277/1,800", 43, 16, "2SVX-ORK-1R"},
	{ "E", "EN", "X ", "NE", "BFFL-0PS-77", "X ", "UNAJ-8CJ-Z8", "6,039/-1,947", 43, 10, "6MAW-FDB-3Z"},
	{ "F", "EN", "X ", "TF", "BFFL-0PS-77", "X ", "412R-PYV-01", "1,927/-6,475", 33, 5, "I19Y-WM6-YD"},
	{ "G", "NE", "EN", "X ", "1CNC-Q8R-CB", "BFFL-0PS-77", "X ", "-1,913/-6,059", 21, 5, "56Y2-YXK-RC"},
	{ "H", "X ", "TF", "NE", "X ", "4GH8-A9Q-BO", "TF0G-DST-KZ", "-5,865/-2,107", 13, 10, "WGYX-PMK-SF"},
	{ "I", "X ", "EN", "TF", "X ", "BFFL-0PS-77", "COQG-L0U-64", "1,352/1,114", 32, 15, "COKA-L66-ZO"}
}

function clearScreen()
	gpu.setResolution( 80, 25 )
	local oldColor = gpu.getBackground( false )
	gpu.setBackground( 0x000000, false )
	gpu.fill( 1, 1, w, h, " " )
	gpu.setBackground( oldColor, false )
	gpu.setBackground(0x000000)
end

function grid()
	gpu.bind(gpu2, false)
	gpu.setBackground(0x332400)
	gpu.setForeground(0xFF0000)
	gpu.set( 12, 1, "Stargate Network Map and Bunker Status" )
	gpu.setBackground(0x000000)
	gpu.setForeground(0xFFFFFF)
	local vert = 3
	gpu.set( 8, 13, "--------------------|--------------------" )
	while vert < 23 do
		gpu.set( 28, vert, "|" )
		vert = vert + 1
	end
end

function info()
	gpu.bind(gpu1, false)
	gpu.fill( 9, 2, 50, 8, " " )
	gpu.setForeground(0x00FF00)
	gpu.set( 6, 2, "    AAA   CCC  TTTTT  III  V   V EEEEE" )
	gpu.set( 6, 3, "   A   A C   C   T     I   V   V E" )
	gpu.set( 6, 4, "   A   A C       T     I   V   V E" )
	gpu.set( 6, 5, "   AAAAA C       T     I   V   V EEEE" )
	gpu.set( 6, 6, "   A   A C       T     I    V V  E" )
	gpu.set( 6, 7, "   A   A C   c   T     I    V V  E" )
	gpu.set( 6, 8, "   A   A  CCC    T    III    V   EEEEE" )

	gpu.set( 6, 15, "Step on the" )
	gpu.setForeground(0x0000FF)
	gpu.set( 18, 15, "BLUE" )
	gpu.setForeground(0x00FF00)
	gpu.set( 23, 15, "pressure plate to go to the" )
	gpu.set( 6, 19, "Step on the" )
	gpu.setForeground(0xFFAA00)
	gpu.set( 18, 19, "ORANGE" )
	gpu.setForeground(0x00FF00)
	gpu.set( 25, 19, "pressure plate to go to the" )
	if gateone == "NE" then
		gpu.set( 51, 15, "Nether")
	elseif gateone == "TF" then
		gpu.set( 51, 15, "Twilight Forest")
	elseif gateone == "EN" then
		gpu.set( 51, 15, "End dimension")
	end
	if gatetwo == "NE" then
		gpu.set( 53, 19, "Nether")
	elseif gatetwo == "TF" then
		gpu.set( 53, 19, "Twilight Forest")
	elseif gatetwo == "EN" then
		gpu.set( 53, 19, "End dimension")
	end
end

function gatemap()
	gpu.bind(gpu2, false)
	gpu.setBackground(0x000000)
	gpu.setForeground(0x00FF00)
	gpu.set( 4, 24, "You are here" )
	gpu.setForeground(0xFF0000)
	gpu.set( 64, 2, "Bunker Y1/Y2/Y3" )
	gpu.set( 20, 24, "NE = Nether" )
	gpu.set( 36, 24, "TF = Twilight Forest" )
	gpu.set( 60, 24, "EN = End dimension" )
	gpu.setForeground(0xFFFFFF)
	for curIdx = 1, #bunker do
		if curBunker == curIdx then
			gpu.setForeground(0x00FF00)
		end
		gpu.setBackground(0x696969)
		gpu.set( 64, (curIdx * 2) + 1, bunker[curIdx][1] )
		gpu.set( 65, curIdx * 2 + 1, "        /  /" )
		gpu.set( 71, curIdx * 2 + 1, bunker[curIdx][2] )
		gpu.set( 74, curIdx * 2 + 1, bunker[curIdx][3] )
		gpu.set( 77, curIdx * 2 + 1, bunker[curIdx][4] )
		gpu.setBackground(0x000000)
		gpu.set( 66, curIdx * 2 + 2, bunker[curIdx][8] )
		gpu.set( bunker[curIdx][9], bunker[curIdx][10], bunker[curIdx][1] )
		gpu.setForeground(0xFFFFFF)
		os.sleep(0.1)
	end
end

function dialone()
	sg.dial(gateoneadr)
end

function dialtwo()
	sg.dial(gatetwoadr)
end

function main()
	gpu.bind(gpu1, false)
	clearScreen()
	gpu.bind(gpu2, false)
	clearScreen()
	grid()
	gatemap()
	validgates()
	info()
	while true do
		if component.redstone.getInput(sides.back) == 15 then dialone()
		elseif component.redstone.getInput(sides.right) == 15 then dialtwo()
		end
		os.sleep(5)
	end
end

main()