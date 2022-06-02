# Tag the nearest giant with slam_setup (already in position from previous function)
tag @e[sort=nearest,limit=1,distance=..40,tag=atrium_giant_body] add throw_setup
#
# Warning sound
execute if entity @e[type=zombie,distance=..7] run playsound minecraft:entity.zombie.hurt hostile @a[distance=..40] ~ ~ ~ 1 2 0.1
execute unless entity @e[type=zombie,distance=..7] run playsound minecraft:block.basalt.break block @a[distance=..40] ~ ~ ~ 1 0.5 0.1
#
# Schedule the actual attack to happen in 2 seconds
execute if entity @e[type=zombie,distance=..7] run schedule function atrium:triggers/special_abilities/giant/g_throw_zombie 2s
execute unless entity @e[type=zombie,distance=..7] run schedule function atrium:triggers/special_abilities/giant/g_throw_blocks 2s
#
# STOP!!!!
execute as @e[tag=throw_setup] run attribute @s minecraft:generic.movement_speed base set 0
#
# Tag the targeted player for later
tag @s add giant_throw_target
#
# If there isn't a zombie within 5 blocks, the giant prepares to throw stones.
execute as @e[tag=throw_setup] at @s unless entity @e[distance=..7,type=minecraft:zombie,tag=!atrium_giant_brain] run data merge entity @s {HandItems:[{id:"minecraft:stone",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
#
# If there's a zombie within 7 blocks, the giant prepares to throw the zombie.
tag @e[distance=..7,type=minecraft:zombie,tag=!atrium_giant_brain] add zombie_fodder
tp @e[limit=1,tag=zombie_fodder] ^ ^6 ^3
execute positioned ^ ^6 ^3 run data modify entity @e[limit=1,distance=..3,tag=zombie_fodder] NoGravity set value 1
#
#
# Reset nearest living player's threat score to 0.
scoreboard players set @p[distance=..40,gamemode=!spectator] giant_threat 0
