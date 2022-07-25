execute at @s anchored eyes run particle minecraft:flame ^ ^ ^3 1 1 1 0.1 100
execute at @s anchored eyes run particle minecraft:lava ^ ^ ^3 1.5 1 1.5 0.1 50
execute at @s anchored eyes run particle minecraft:flame ^ ^ ^5.5 1.5 1 1.5 0.1 125
execute at @s anchored eyes run particle minecraft:lava ^ ^ ^5.5 1.5 1 1.5 0.1 50
execute at @s anchored eyes run particle minecraft:flame ^ ^ ^8 2 1.5 2 0.1 150
execute at @s anchored eyes run particle minecraft:lava ^ ^ ^8 2 1.5 2 0.1 50
execute at @s anchored eyes positioned ^ ^ ^3 run execute at @e[distance=..2.5] run summon small_fireball ~ ~2 ~ {power:[0.0,-10.0,0.0]}
execute at @s anchored eyes positioned ^ ^ ^5.5 run execute at @e[distance=..3.5] run summon small_fireball ~ ~2 ~ {power:[0.0,-10.0,0.0]}
execute at @s anchored eyes positioned ^ ^ ^8 run execute at @e[distance=..4.5] run summon small_fireball ~ ~2 ~ {power:[0.0,-10.0,0.0]}
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1 0.1 0.1
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete