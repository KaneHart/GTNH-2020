import mods.gregtech.Assembler;

// --- Chunk Loaders
//We Promote the use of Personal / Passive Anchors
//Remove SC Chunk Loader
<StevesCarts:CartModule:49>.addTooltip(format.red("Banned Item"));
recipes.remove(<StevesCarts:CartModule:49>);

//Remove OC Chunk Loader
<ore:oc:chunkloaderUpgrade>.addTooltip(format.red("Banned Item"));
recipes.remove(<ore:oc:chunkloaderUpgrade>);

//Remove RC World Anchor
<Railcraft:machine.alpha>.addTooltip(format.red("Banned Item"));
recipes.remove(<Railcraft:machine.alpha>);

//Remove RC World Cart Anchor
<Railcraft:cart.anchor>.addTooltip(format.red("Banned Item"));
recipes.remove(<Railcraft:cart.anchor>);

//Removed Waystone for Teleportation Reasons. Witchery is TO OP
recipes.remove(<witchery:ingredient:12>);

//Glider Nerf
<OpenBlocks:hangglider>.addTooltip(format.green("Does Not Work In Overworld, Nether, Twilight"));


// --- Chunk Loader Coin I
Assembler.addRecipe(<dreamcraft:item.CoinChunkloaderTierI>, <dreamcraft:item.CoinBlank>, <gregtech:gt.metaitem.03:32079>, <gregtech:gt.integrated_circuit:1> * 0, <liquid:ender> * 3000, 6000, 120);

// --- Chunk Loader Coin II
Assembler.addRecipe(<dreamcraft:item.CoinChunkloaderTierII>, <dreamcraft:item.CoinBlank>, <gregtech:gt.metaitem.03:32082>, <gregtech:gt.integrated_circuit:2> * 0, <liquid:ender> * 6000, 6000, 480);

// --- Chunk Loader Coin III
Assembler.addRecipe(<dreamcraft:item.CoinChunkloaderTierIII>, <dreamcraft:item.CoinBlank>, <gregtech:gt.metaitem.03:32083>, <gregtech:gt.integrated_circuit:3> * 0, <liquid:ender> * 12000, 6000, 1920);

// --- Chunk Loader Coin IV
Assembler.addRecipe(<dreamcraft:item.CoinChunkloaderTierIV>, <dreamcraft:item.CoinBlank>, <gregtech:gt.metaitem.03:32084>, <gregtech:gt.integrated_circuit:4> * 0, <liquid:ender> * 24000, 6000, 7680);

// --- Chunk Loader Coin V
Assembler.addRecipe(<dreamcraft:item.CoinChunkloaderTierV>, <dreamcraft:item.CoinBlank>, <gregtech:gt.metaitem.03:32087>, <gregtech:gt.integrated_circuit:5> * 0, <liquid:ender> * 48000, 6000, 30720);
