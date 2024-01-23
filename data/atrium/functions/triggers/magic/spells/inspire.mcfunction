# SFX
particle minecraft:explosion ^ ^2.25 ^1 0 0 0 0 1
playsound minecraft:item.goat_horn.sound.0 record @a[distance=..256] ~ ~ ~ 1 0.75 1
#
# All passive mobs, players, and iron golems within a 20-block radius get Absorption I for 60 seconds
execute at @a[distance=..30,gamemode=!spectator] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
execute at @e[distance=..30,type=minecraft:iron_golem] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
execute at @e[distance=..30,type=#atrium:passive_mobs] run particle minecraft:glow ~ ~ ~ 0.25 1.25 0.25 0.1 125
effect give @a[distance=..30,gamemode=!spectator] absorption 60 0 false
effect give @e[distance=..30,type=minecraft:iron_golem] absorption 60 0 false
effect give @e[distance=..30,type=#atrium:passive_mobs] absorption 60 0 false
#
# All raiders within a 20-block radius get Glowing for 60 seconds
effect give @e[distance=..30,type=#minecraft:raiders] minecraft:glowing 60 0 false
# Spell cleanup
function atrium:triggers/magic/spell_cast_complete