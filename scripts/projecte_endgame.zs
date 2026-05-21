// =======================================================================
// Хардкорный вход в ProjectE 
// (Трансмутация и генерация EMC доступны только в лейтгейме)
// =======================================================================
import minetweaker.item.IItemStack;

// --- Ванильные предметы ProjectE, нужные для крафтов ---
val philoStone = <ProjectE:item.pe_philosophers_stone>.anyDamage().reuse(); // Не тратится
val darkMatter = <ProjectE:item.pe_matter:0>;
val redMatter = <ProjectE:item.pe_matter:1>;
val alchChest = <ProjectE:alchemical_chest>;

// --- Лейтгейм компоненты из списка ---
val gaiaSpirit = <Botania:manaResource:5>;
val ichor = <ThaumicTinkerer:kamiResource>;
val ichorium = <ThaumicTinkerer:kamiResource:1>;
val demonHeart = <witchery:ingredient:23>;
val voidMetal = <Thaumcraft:ItemResource:16>;
val runeWrath = <Botania:rune:13>;
val runePride = <Botania:rune:15>;
val pearl = <Thaumcraft:ItemEldritchObject:3>;
val garmonbozia = <evilcraft:garmonbozia>;
val bloodOrb = <AWWayofTime:transcendentBloodOrb>.anyDamage().reuse(); // Не тратится

// --- Целевые механизмы ProjectE ---
val transTable = <ProjectE:transmutation_table>;
val transTablet = <ProjectE:item.pe_transmutation_tablet>;
val col1 = <ProjectE:collector_mk1>;
val col2 = <ProjectE:collector_mk2>;
val col3 = <ProjectE:collector_mk3>;
val rel1 = <ProjectE:relay_mk1>;
val rel2 = <ProjectE:relay_mk2>;
val rel3 = <ProjectE:relay_mk3>;
val cond1 = <ProjectE:condenser_mk1>;
val cond2 = <ProjectE:condenser_mk2>;

// =======================================================================

// 1. Трансмутационный стол
recipes.remove(transTable);
recipes.addShaped(transTable, [
    [voidMetal, darkMatter, voidMetal],
    [demonHeart, philoStone, demonHeart],
    [ichor, garmonbozia, ichor]
]);

// 2. Трансмутационный планшет
recipes.remove(transTablet);
recipes.addShaped(transTablet, [
    [gaiaSpirit, ichorium, gaiaSpirit],
    [runeWrath, transTable, runePride],
    [ichorium, bloodOrb, ichorium]
]);

// 3. Конденсатор энергии Mk1
recipes.remove(cond1);
recipes.addShaped(cond1, [
    [voidMetal, garmonbozia, voidMetal],
    [ichor, alchChest, ichor],
    [demonHeart, darkMatter, demonHeart]
]);

// 4. Конденсатор энергии Mk2 (Сингулярная жемчужина!)
recipes.remove(cond2);
recipes.addShaped(cond2, [
    [ichorium, redMatter, ichorium],
    [gaiaSpirit, cond1, gaiaSpirit],
    [runeWrath, pearl, runePride]
]);

// 5. Сборщики энергии (Mk1 - Mk3)
recipes.remove(col1);
recipes.addShaped(col1, [
    [voidMetal, <minecraft:glowstone>, voidMetal],
    [demonHeart, <minecraft:diamond_block>, demonHeart],
    [voidMetal, <minecraft:furnace>, voidMetal]
]);

recipes.remove(col2);
recipes.addShaped(col2, [
    [darkMatter, ichor, darkMatter],
    [garmonbozia, col1, garmonbozia],
    [darkMatter, gaiaSpirit, darkMatter]
]);

recipes.remove(col3);
recipes.addShaped(col3, [
    [redMatter, ichorium, redMatter],
    [runePride, col2, runeWrath],
    [redMatter, pearl, redMatter]
]);

// 6. Ретрансляторы антиматерии (Mk1 - Mk3)
recipes.remove(rel1);
recipes.addShaped(rel1, [
    [voidMetal, <minecraft:glass>, voidMetal],
    [demonHeart, <minecraft:diamond_block>, demonHeart],
    [voidMetal, <minecraft:obsidian>, voidMetal]
]);

recipes.remove(rel2);
recipes.addShaped(rel2, [
    [darkMatter, ichor, darkMatter],
    [garmonbozia, rel1, garmonbozia],
    [darkMatter, gaiaSpirit, darkMatter]
]);

recipes.remove(rel3);
recipes.addShaped(rel3, [
    [redMatter, ichorium, redMatter],
    [runeWrath, rel2, runePride],
    [redMatter, bloodOrb, redMatter]
]);