recipes.remove(<ProjectE:transmutation_table>);
recipes.addShaped(<ProjectE:transmutation_table>, [
    [<Thaumcraft:ItemResource:16>, <ProjectE:item.pe_matter:0>, <Thaumcraft:ItemResource:16>],
    [<witchery:ingredient:23>, <ProjectE:item.pe_philosophers_stone:*>, <witchery:ingredient:23>],
    [<ThaumicTinkerer:kamiResource>, <evilcraft:garmonbozia>, <ThaumicTinkerer:kamiResource>]
]);

recipes.remove(<ProjectE:item.pe_transmutation_tablet>);
recipes.addShaped(<ProjectE:item.pe_transmutation_tablet>, [
    [<Botania:manaResource:5>, <ThaumicTinkerer:kamiResource:1>, <Botania:manaResource:5>],
    [<Botania:rune:13>, <ProjectE:transmutation_table>, <Botania:rune:15>],
    [<ThaumicTinkerer:kamiResource:1>, <AWWayofTime:transcendentBloodOrb:*>, <ThaumicTinkerer:kamiResource:1>]
]);

recipes.remove(<ProjectE:condenser_mk1>);
recipes.addShaped(<ProjectE:condenser_mk1>, [
    [<Thaumcraft:ItemResource:16>, <evilcraft:garmonbozia>, <Thaumcraft:ItemResource:16>],
    [<ThaumicTinkerer:kamiResource>, <ProjectE:alchemical_chest>, <ThaumicTinkerer:kamiResource>],
    [<witchery:ingredient:23>, <ProjectE:item.pe_matter:0>, <witchery:ingredient:23>]
]);

recipes.remove(<ProjectE:condenser_mk2>);
recipes.addShaped(<ProjectE:condenser_mk2>, [
    [<ThaumicTinkerer:kamiResource:1>, <ProjectE:item.pe_matter:1>, <ThaumicTinkerer:kamiResource:1>],
    [<Botania:manaResource:5>, <ProjectE:condenser_mk1>, <Botania:manaResource:5>],
    [<Botania:rune:13>, <Thaumcraft:ItemEldritchObject:3>, <Botania:rune:15>]
]);

recipes.remove(<ProjectE:collector_mk1>);
recipes.addShaped(<ProjectE:collector_mk1>, [
    [<Thaumcraft:ItemResource:16>, <minecraft:glowstone>, <Thaumcraft:ItemResource:16>],
    [<witchery:ingredient:23>, <minecraft:diamond_block>, <witchery:ingredient:23>],
    [<Thaumcraft:ItemResource:16>, <minecraft:furnace>, <Thaumcraft:ItemResource:16>]
]);

recipes.remove(<ProjectE:collector_mk2>);
recipes.addShaped(<ProjectE:collector_mk2>, [
    [<ProjectE:item.pe_matter:0>, <ThaumicTinkerer:kamiResource>, <ProjectE:item.pe_matter:0>],
    [<evilcraft:garmonbozia>, <ProjectE:collector_mk1>, <evilcraft:garmonbozia>],
    [<ProjectE:item.pe_matter:0>, <Botania:manaResource:5>, <ProjectE:item.pe_matter:0>]
]);

recipes.remove(<ProjectE:collector_mk3>);
recipes.addShaped(<ProjectE:collector_mk3>, [
    [<ProjectE:item.pe_matter:1>, <ThaumicTinkerer:kamiResource:1>, <ProjectE:item.pe_matter:1>],
    [<Botania:rune:15>, <ProjectE:collector_mk2>, <Botania:rune:13>],
    [<ProjectE:item.pe_matter:1>, <Thaumcraft:ItemEldritchObject:3>, <ProjectE:item.pe_matter:1>]
]);

recipes.remove(<ProjectE:relay_mk1>);
recipes.addShaped(<ProjectE:relay_mk1>, [
    [<Thaumcraft:ItemResource:16>, <minecraft:glass>, <Thaumcraft:ItemResource:16>],
    [<witchery:ingredient:23>, <minecraft:diamond_block>, <witchery:ingredient:23>],
    [<Thaumcraft:ItemResource:16>, <minecraft:obsidian>, <Thaumcraft:ItemResource:16>]
]);

recipes.remove(<ProjectE:relay_mk2>);
recipes.addShaped(<ProjectE:relay_mk2>, [
    [<ProjectE:item.pe_matter:0>, <ThaumicTinkerer:kamiResource>, <ProjectE:item.pe_matter:0>],
    [<evilcraft:garmonbozia>, <ProjectE:relay_mk1>, <evilcraft:garmonbozia>],
    [<ProjectE:item.pe_matter:0>, <Botania:manaResource:5>, <ProjectE:item.pe_matter:0>]
]);

recipes.remove(<ProjectE:relay_mk3>);
recipes.addShaped(<ProjectE:relay_mk3>, [
    [<ProjectE:item.pe_matter:1>, <ThaumicTinkerer:kamiResource:1>, <ProjectE:item.pe_matter:1>],
    [<Botania:rune:13>, <ProjectE:relay_mk2>, <Botania:rune:15>],
    [<ProjectE:item.pe_matter:1>, <AWWayofTime:transcendentBloodOrb:*>, <ProjectE:item.pe_matter:1>]
]);