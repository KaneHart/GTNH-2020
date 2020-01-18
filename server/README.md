## Server Changes

### Removed Mods:
* LootGames - One Boring game, cheap loot, more world gen.
* roguelike - easily exploitable, cheap loot, more world gen, makes messy world at times.
* RWG-alpha-1.3.2.jar - Old World Gen

### Added Mods:
* RTG-1.7.10-1.1.1.7.jar - New World Gen
* ClimateControl-0.8.2.jar - Climate Control For New World Gen

### Temp Mod World Gen:
* Chunk+Pregenerator+V1.7.10-2.1.jar - Chunk Gen
* Chicken+Chunk+Patcher+1.1.jar - Patch To Prevent Crash
* Overworld: /pregen gen startradius square 0 0 b8000
* Nether: /pregen gen startradius square 0 0 b4000 -1

### DefaultQuests.json Changes:
* **Nether, Twilight, End Text Update:**
* Search: ```"name:8": "§3§m§l§m§4§3§lTHE NETHER",```
* Search: ```"name:8": "Searching for answers",```
* Search: ```"name:8": "Is this the End? No the END Dimension",```
* Replace: ```"desc:8": "```
* With: ```"desc:8": "§4WARNING: Nether, Twilight Forest and End Portals are disabled. You must search the World for an Active Bunker (3 of 12) that can provide you access to the other Dimensions. \n\n§f§0§r```
* **Anchor to Personal Anchor Change:**
* Find / Replace: ```Railcraft:cart.anchor```
* With: ```Railcraft:cart.anchor.personal```
* **Personal Chunloading Quest Change:**
* Find: ```"name:8": "§5§lPersonal Chunkloading",```
* Replace Full Line: ```desc:8": "Let\u0027s craft some personal chunkloaders.```
* With: ```"desc:8": "Let\u0027s craft some personal chunkloaders. 3x3 chunks are loaded. You need coins to power the chunkloader that is locked up in MV Tier.\n\nChunk Loader Coin I Can Power Passive Anchor for 12 Hours and a Personal Anchor for 24 Hours. There is 4 Other Tiers of the Coin that increase the fuel time in the Anchors.\n\nPersonal Anchors are loaded  once the owner visits, and stays loaded while the player is logged in. \n\nPassive Anchors are loaded once the owner visits, and stays loaded until the server resets."```

### Removed Client Mods (This For Testing Only When Using Client For Server):
* BeeBetterAtBees-0.3.jar
* BetterAchievements-1.7.10-0.1.0.jar
* Controlling-1.7.10-1.0.0.jar
* CustomMainMenu-MC1.7.10-1.9.2.jar
* DefaultWorldGenerator-1.7.10-0.1-b13-universal.jar
* gtneioreplugin-1.7.10-1.0.7.jar
* IC2+Nei+Plugin+Version+1.7.10-1.2.2.jar
* MouseTweaks-2.4.4-mc1.7.10.jar
* OptiFine_1.7.10_HD_U_D6.jar
* ReAuth-3.5.0.jar
* ResourceLoader-MC1.7.10-1.3.jar
* tcnodetracker-1.7.10-1.1.2.jar

### Removed Client Folders (This For Testing Only When Using Client For Server):
* resourcepacks
* resources

### Removed Client Configs (This For Testing Only When Using Client For Server):
roguelike_dungeons
LootGames
