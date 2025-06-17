# 
#
#
#
# z cube
#
#
# distance-based punishment
execute as @p[gamemode=!spectator,distance=..4] run damage @s 50 atrium:extra_magic_damage
execute at @p[gamemode=!spectator,distance=..4] run playsound minecraft:item.mace.smash_ground_heavy block @a[distance=..5] ~ ~ ~ 0.5 0 0.25
execute at @p[gamemode=!spectator,distance=..4] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 50
#
execute as @p[gamemode=!spectator,distance=..8] run damage @s 25 atrium:extra_magic_damage
execute at @p[gamemode=!spectator,distance=..8] run playsound minecraft:item.wolf_armor.break block @a[distance=..5] ~ ~ ~ 0.75 0 0.25
execute at @p[gamemode=!spectator,distance=..8] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 15
#
execute as @p[gamemode=!spectator,distance=..16] run damage @s 15 atrium:extra_magic_damage
execute at @p[gamemode=!spectator,distance=..16] run playsound minecraft:item.wolf_armor.crack block @a[distance=..5] ~ ~ ~ 0.75 0 0.25
execute at @p[gamemode=!spectator,distance=..16] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 10