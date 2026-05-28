recipes.remove(<AWWayofTime:Altar>);
recipes.remove(<evilcraft:bloodInfuser>);
recipes.remove(<witchery:witchesovenidle>);

recipes.addShaped(<AWWayofTime:Altar>, [
    [<Botania:livingrock>, null, <Botania:livingrock>],
    [<Botania:livingrock>, <minecraft:furnace>, <Botania:livingrock>],
    [<minecraft:gold_ingot>, <evilcraft:darkGem>, <minecraft:gold_ingot>]
]);

recipes.addShaped(<evilcraft:bloodInfuser>, [
    [<Botania:livingwood>, <Botania:livingwood>, <Botania:livingwood>],
    [<Botania:livingwood>, <AWWayofTime:weakBloodOrb:*>, <Botania:livingwood>],
    [<Botania:livingwood>, <Botania:livingwood>, <Botania:livingwood>]
]);

recipes.addShaped(<witchery:witchesovenidle>, [
    [<minecraft:iron_ingot>, <Thaumcraft:ItemResource:1>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_bars>, <minecraft:iron_ingot>],
    [<AWWayofTime:blankSlate>, <AWWayofTime:blankSlate>, <AWWayofTime:blankSlate>]
]);