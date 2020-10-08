local component = require("component")
local meController = component.proxy(component.me_controller.address)
local gpu = component.gpu
local w,h = gpu.getResolution()
local sg = component.getPrimary("stargate")
local sides = require("sides")

local gpu1 = component.get("8465")
local gpu2 = component.get("fc12")
local curBunker = 1
local discovered = 0
local online = 0

local nepasttrips = 1
local tfpasttrips = 1
local endpasttrips = 1
local daysleft = 0
local triyear = 0
local napcount = 0

items = {
	{ "minecraft:flint_and_steel",  0, "Flint and Steel", ""},
	{ "dreamcraft:item.TwilightCrystal",  0, "Quick and Dirty Portal Generator", ""},
	{ "StevesCarts:ModuleComponents",  45, "Eye of Galgador", ""}
}

bunker = {
	{ "A", "NE", "TF", "X ", "ZVQN-NXV-A7", "NWEM-Y83-FA", "X ", "-6,840/1,680", 10, 16},
	{ "B", "X ", "NE", "EN", "X ", "96NS-ORI-1R", "BFFL-0PS-77", "-2,105/5,925", 20, 20},
	{ "C", "TF", "NE", "X ", "MD1K-15L-UD", "G8UR-FHL-QG", "X ", "1,655/6,309", 32, 20},
	{ "D", "TF", "X ", "EN", "2SVX-ORK-1R", "X ", "BFFL-0PS-77", "6,277/1,800", 42, 16},
	{ "E", "EN", "X ", "NE", "BFFL-0PS-77", "X ", "UNAJ-8CJ-Z8", "6,039/-1,947", 42, 10},
	{ "F", "EN", "X ", "TF", "BFFL-0PS-77", "X ", "412R-PYV-01", "1,927/-6,475", 32, 5},
	{ "G", "NE", "EN", "X ", "1CNC-Q8R-CB", "BFFL-0PS-77", "X ", "-1,913/-6,059", 20, 5},
	{ "H", "X ", "TF", "NE", "X ", "4GH8-A9Q-BO", "TF0G-DST-KZ", "-5,865/-2,107", 12, 10},
	{ "I", "X ", "EN", "TF", "X ", "BFFL-0PS-77", "COQG-L0U-64", "1,352/1,114", 31, 15}
}

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

function gatemap()
	gpu.bind(gpu2, false)
	gpu.setBackground(0x000000)
	gpu.setForeground(0x00FF00)
	gpu.set( 10, 24, "You are here" )
	gpu.setForeground(0xFF0000)
	gpu.set( 61, 1, "Bunker    Y1/Y2/Y3" )
	gpu.setForeground(0xFFFFFF)
	gpu.set( 36, 24, "Days left in current Year:" )
	gpu.set( 63, 24, tostring(daysleft) )
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
		gpu.set( bunker[curIdx][9] + 1, bunker[curIdx][10], ":" )
		gpu.set( bunker[curIdx][9] + 2, bunker[curIdx][10], bunker[curIdx][triyear+1] )
		gpu.setForeground(0xFFFFFF)
		os.sleep(shortDelay)
	end
end

function clearScreen()
	gpu.setResolution( 80, 25 )
	local oldColor = gpu.getBackground( false )
	gpu.setBackground( 0x000000, false )
	gpu.fill( 1, 1, w, h, " " )
	gpu.setBackground( oldColor, false )
	gpu.setBackground(0x000000)
end

function outgoinggate()
	sg.dial(bunker[curBunker][triyear + 4])
	gpu.setForeground(0x00FF00)
	component.redstone.setOutput((sides.top), 0)
	gpu.set( 11, 17, "Payment Accepted                             " )
	local i = 0
	repeat
		if sg.stargateState() == "Idle" then i = 1
			sgstate()
		else
			sgstate()
			os.sleep(15)
		end
		until i == 1
end

function sgstate()
  gpu.setBackground(0xFFFFFF)
  gpu.fill( 1, 24, 20, 24, " " )
  gpu.setForeground(0x000000)
  gpu.set( 3, 24, "State: " )
  gpu.set( 10, 24, tostring(sg.stargateState()))
  gpu.set( 3, 25, "Current/Last Connection: " )
  gpu.set( 28, 25, bunker[curBunker][triyear + 1] )
  gpu.setBackground(0x000000)
  gpu.setForeground(0xFFFFFF)
end

function nap()
	os.sleep(5)
	gpu.bind(gpu1, false)
	clearScreen()
	gpu.setForeground(0xFF0000)
	gpu.set( 11, 15, "BORED NOW. NAP TIME         " )
	gpu.set( 11, 17, "Step on the pressure plate to wake me        " )
	component.redstone.setOutput((sides.top), 0)
	deepnap()
end

function deepnap()
	os.sleep(5)
	if component.redstone.getInput(sides.back) == 15 then
		component.redstone.setOutput((sides.right), 15)
		os.sleep(5)
		component.redstone.setOutput((sides.right), 0)
		napcount = 0
		whichyear()
	else deepnap()
	end
end

function active()
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
	gpu.set( 11, 22, "Please drop your payment in the Vacuum chest.   " )
	gpu.setForeground(0xFFFFFF)
	component.redstone.setOutput((sides.top), 15)
	while online == 1 do
		gpu.setForeground(0xFFFFFF)
		os.sleep(10)
		napcount = napcount + 1
		if napcount > 19 then
			nap()
		end
		gpu.set( 11, 17, "Payment: " )
		gpu.set( 20, 17, "1 x " )
		for curIdx = 1, #items do
			curmodName = items[curIdx][1]
			curDamage = items[curIdx][2]
			storedItem = meController.getItemsInNetwork({
				name = curmodName,
				damage = curDamage
			})
			if bunker[curBunker][triyear + 1] == "NE" then
				gpu.set( 11, 15, "Destination: Nether         " )
				gpu.set( 24, 17, "Flint and Steel                 " )
				if storedItem[1].label == items[1][3] and storedItem[1].size > nepasttrips then
					nepasttrips = nepasttrips + 1
					outgoinggate()
				end
			elseif bunker[curBunker][triyear + 1] == "TF" then
				gpu.set( 11, 15, "Destination: Twilight Forest" )
				gpu.set( 24, 17, "Quick and Dirty Portal Generator" )
				if storedItem[1].label == items[2][3] and storedItem[1].size > tfpasttrips then
					tfpasttrips = tfpasttrips + 1
					outgoinggate()
				end
			elseif bunker[curBunker][triyear + 1] == "EN" then
				gpu.set( 11, 15, "Destination: End Dimension  " )
				gpu.set( 24, 17, "Eye of Galgador                 " )
				if storedItem[1].label == items[3][3] and storedItem[1].size > endpasttrips then
					endpasttrips = endpasttrips + 1
					outgoinggate()
				end
			end
		end
		whichyear()
	end
end

function offline()
	gpu.bind(gpu1, false)
	gpu.fill( 9, 2, 50, 8, " " )
	gpu.setForeground(0xFF0000)
	gpu.set( 6, 2, " OOO  FFFFF FFFFF L      III  N   N EEEEE" )
	gpu.set( 6, 3, "O   O F     F     L       I   N   N E" )
	gpu.set( 6, 4, "O   O F     F     L       I   NN  N E" )
	gpu.set( 6, 5, "O   O FFFF  FFFF  L       I   N N N EEEE" )
	gpu.set( 6, 6, "O   O F     F     L       I   N  NN E" )
	gpu.set( 6, 7, "O   O F     F     L       I   N   N E" )
	gpu.set( 6, 8, " OOO  F     F     LLLLL  III  N   N EEEEE" )
	gpu.set( 11, 15, "                            " )
	gpu.set( 11, 17, "Under maintenance for " )
	gpu.set( 33, 17, "    more day(s)            " )
	gpu.set( 33, 17, tostring(daysleft) )
	gpu.set( 11, 22, "Payment not accepted. Please use another bunker." )
	component.redstone.setOutput((sides.top), 0)
	gpu.setForeground(0xFFFFFF)
	os.sleep(10)
	nap()
end

function whichyear()
	triyear = math.floor((os.date("%Y")) % 3) + 2
		if triyear == 4 then
			triyear = 1
		end
	daysleft = 365 - math.floor(os.date("%j"))
	if discovered == 1 then
		grid()
		gatemap()
	else
		gpu.bind(gpu2, false)
		gpu.setForeground(0xFF0000)
		gpu.set( 1, 1, "Bunker Network connection lost." )
		gpu.set( 1, 2, "Data corrupted." )
		gpu.set( 1, 3, "Attempting reconnection..." )
		gpu.bind(gpu1, false)
	end
	if bunker[curBunker][triyear + 1] == "X " then
		online = 0
		offline()
	elseif bunker[curBunker][triyear + 1] == "NE" or bunker[curBunker][triyear + 1] == "TF" or bunker[curBunker][triyear + 1] == "EN" then
		online = 1
		active()
	end
end

function running()
	while true do
		whichyear()
		os.sleep(5)
	end
end

function main()
	gpu.bind(gpu1, false)
	clearScreen()
	gpu.bind(gpu2, false)
	clearScreen()
	running()
end

main()