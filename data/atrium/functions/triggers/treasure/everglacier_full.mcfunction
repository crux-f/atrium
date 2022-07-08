# Replace lantern with full version
clear @s minecraft:blue_ice{everglacier:1b,charges:9b} 1
give @s sea_lantern{display:{Name:'{"text":"Everglacier","color":"aqua","italic":false}',Lore:['{"text":"Concentration III","color":"gray","italic":false}','{"text":"A globe of ice and crystal."}','{"text":"When you hold it, you can"}','{"text":"hear whispers in your own voice."}','{"text":" "}','[{"text":"Knowledge Absorbed:","color":"gray","italic":false},{"text":" 100%","color":"yellow","italic":false}]']},HideFlags:1,everglacier:1b,concentration_enchant:1b,charges:10b,concentration_lv:3b,Enchantments:[{id:"minecraft:frost_walker",lvl:1s}]} 1
#
# SFX
execute at @s run playsound minecraft:entity.guardian.ambient player @a[distance=..10] ~ ~ ~ 0.75 1.35 0.2
execute at @s run playsound minecraft:block.bubble_column.whirlpool_inside player @a[distance=..30] ~ ~ ~ 0.75 0.1 0.1
execute at @s anchored eyes run particle minecraft:rain ^-0.65 ^1 ^ 0.25 0.25 0.25 0.5 75
