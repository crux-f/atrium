execute at @s run particle minecraft:bubble_pop ~ ~3 ~ 1 2.5 1 0.1 100
execute at @s run summon marker ~ ~ ~ {Tags:["nourishment_marker"]}
execute at @s run playsound minecraft:block.bubble_column.upwards_inside player @a[distance=..30] ~ ~ ~ 1 2 0.1
execute at @s run summon area_effect_cloud ~ ~15 ~ {Particle:"cloud",Radius:3f,Duration:240}
execute at @s run summon area_effect_cloud ~ ~15 ~ {Particle:"dripping_water",Radius:3f,Duration:240,Tags:["nourishment_cloud"]}
execute as @s run function atrium:magic/magicitems/spells/nourishment_2_repeat
clear @s minecraft:redstone 1

