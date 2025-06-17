# 
#
#
#
# cube
#
#
# tell crux_f trap activated
execute at @p[gamemode=!spectator,distance=..4] run playsound minecraft:item.mace.smash_ground_heavy block @a[distance=..5] ~ ~ ~ 1 0 1
execute at @p[gamemode=!spectator,distance=..8] run playsound minecraft:item.wolf_armor.crack block @a[distance=..5] ~ ~ ~ 1 0 1
execute at @p[gamemode=!spectator,distance=..8] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 1 100
execute as @p[gamemode=!spectator,distance=..8] run damage @s 25 atrium:extra_magic_damage
execute as @p[gamemode=!spectator,distance=..4] run damage @s 25 atrium:extra_magic_damage