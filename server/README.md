## Server Changes

This is a list of server side changes we make and need to keep an eye from. Things like modified quests to mods we have to remove, include, etc. This is not a place for special information, ideas or plans that belongs in the main Readme file one directory above this. 

### Removed Mods:
* **LootGames-1.7.10-1.0.18.jar** - One Boring game, cheap loot, more world gen.
* **roguelike-1.7.10-1.5.0b.jar** - easily exploitable, cheap loot, more world gen, makes messy world at times.
* **RWG-alpha-1.3.2.jar** - Old World Generator

### Added Mods:
* RTG-1.7.10-1.1.1.7.jar - New World Gen - Modified with Lava Lakes
* ClimateControl-0.8.2.jar - Climate Control For New World Gen
* forgeessentials-1.7.10-1.4.6.0-server.jar - Our main Permissions System / Command Handlers.
* worldedit-forge-mc1.7.10-6.1.1-SNAPSHOT-dist.jar - Comes with Forge Essentials
* Insomnia-1.7.10-1.0.1.jar - Prevents Sleeping but Allows Saving Respawn.
* MyTown2-1.7.10-0.5.1GTNH.jar - Our Main Protection System
* MyEssentials-Core-1.7.10-1.19GTNH-universal.jar - Required Lib For MyTown
* MyPermissions-1.7.10-0000r.jar - Required Lib for MyTown (We used FE Perms)
* CanIJoinNow-1.7.10-1.0-3.jar - Shows you the time on the server.
* DiscordIntegration-mc1.7.10-3.0.5.jar - Allows Discord / In Game Chat to Link
* NoPortals-1.7.10-1.0.0.jar - Removes End Portal Spawn if Dragon Killed in Overworld. 
* ServerTabInfo-1.7.10-Final-b3.jar - Gives Extra Info about TPS / MS, etc in TAB window. 

### World Gen:
* **Added Mods Required For Worldgen:**
* Chunk+Pregenerator+V1.7.10-2.1.jar - Chunk Gen
* Chicken+Chunk+Patcher+1.1.jar - Patch To Prevent Crash
* **Speed Up Commands**
* /pregen timepertick 250
* /pregen utils setPriority Pregenerator
* **Worlds To Pregen Commands:**
* Overworld: /pregen gen startradius square 0 0 b16000
* Nether: /pregen gen startradius square 0 0 b16000 -1
* Twilight: /pregen gen startradius square 0 0 b16000 7

### DefaultQuests.json Changes:
* **Nether, Twilight, End Text Update:**
* Search: ```"name:8": "§3§m§l§m§4§3§lTHE NETHER",```
* Search: ```"name:8": "Searching for answers",```
* Search: ```"name:8": "Is this the End? No the END Dimension",```
* Replace: ```"desc:8": "```
* With: ```"desc:8": "§4WARNING: Nether, Twilight Forest and End Portals are disabled. You must search the World for an Active Bunker (3 of 12) that can provide you access to the other Dimensions. \n\n§f§0§r```

### DefaultQuests.json Disabled Quests (Just Locked Behind Highest Item):


The idea here is to set any quests we don't want showing hidden behind preRequisites ```308```. This is the quest where you earn a Zero Point Module. This normally just use for junk quests like how to set rwg settings on a server, etc.


This is a much easier system to update, etc per new version then having to edit / replace parts of quests especially since these are dedicted to nothing we want or need...
 

We might steal 1 quest for Server Rules / Info! 
**Quest ID's To Add 308 Quest as a Requirement:** 
* ```"questID:3": 1834``` - BoP Mushrooms and Wrong World ID Quest
* ```"questID:3": 645``` - Glider
* ```"questID:3": 2406``` - TPS Debug, etc stuff
* ```"questID:3": 1500``` - Special BQ Info HC mode, etc
* ```"questID:3": 1501``` - Backup Stuff
* ```"questID:3": 1495``` - Reloading QB Command Block
* ```"questID:3": 2404``` - Ender Pearls
* ```"questID:3": 491``` - Sleeping Bag
* ```"questID:3": 1528``` - Chunkloaders
* ```"questID:3": 2014``` - Chunkloaders
* ```"questID:3": 1180``` - Chunkloaders
* ```"questID:3": 1379``` - Chunkloaders
