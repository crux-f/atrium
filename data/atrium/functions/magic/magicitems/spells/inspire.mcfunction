# Remove 1 Glowstone Dust (casting component cost)
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s run particle minecraft:explosion ^ ^2.25 ^1 0 0 0 0 1
execute at @s run playsound minecraft:item.goat_horn.sound.0 record @a[distance=..256] ~ ~ ~ 1 0.75 1
#
# All passive mobs, players, and iron golems within a 20-block radius get Absorption I for 60 seconds
execute at @s at @a[distance=..20,gamemode=!spectator] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
execute at @s at @e[distance=..20,type=minecraft:iron_golem] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
execute at @s at @e[distance=..20,type=#atrium:passive_mobs] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
execute at @s run effect give @a[distance=..20,gamemode=!spectator] absorption 60 0 false
execute at @s run effect give @e[distance=..20,type=minecraft:iron_golem] absorption 60 0 false
execute at @s run effect give @e[distance=..20,type=#atrium:passive_mobs] absorption 60 0 false
#
# All raiders within a 20-block radius get Weakness I for 60 seconds
execute at @s run effect give @e[distance=..20,type=#minecraft:raiders] weakness 60 0 false