execute at @s anchored eyes run particle minecraft:flame ^ ^ ^3 1 1 1 0.1 200
execute at @s anchored eyes run particle minecraft:smoke ^ ^ ^3 1 1 1 0.1 100
execute at @s anchored eyes positioned ^ ^ ^3 run execute at @e[distance=..2.9] run summon small_fireball ~ ~2 ~ {power:[0.0,-10.0,0.0]}
execute at @s run playsound minecraft:entity.blaze.shoot player @a[distance=..30] ~ ~ ~ 1 0.6 1
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
