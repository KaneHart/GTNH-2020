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
