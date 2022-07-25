execute at @s anchored eyes run particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 100
execute at @s anchored eyes positioned ~ ~1 ~ run execute at @e[distance=..20,predicate=atrium:extinguish_target] run setblock ~ ~ ~ water[level=1]
execute at @s run playsound minecraft:entity.player.splash player @a[distance=..40] ~ ~ ~ 1 0.6 0.1
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete

