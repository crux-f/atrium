# Summon 5 falling stone blocks
execute at @e[tag=atrium_giant_body] run summon falling_block ^ ^5 ^3 {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,Tags:["giant_rock"]}
execute at @e[tag=atrium_giant_body] run summon falling_block ^ ^6 ^3 {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,Tags:["giant_rock"]}
execute at @e[tag=atrium_giant_body] run summon falling_block ^ ^7 ^3 {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,Tags:["giant_rock"]}
execute at @e[tag=atrium_giant_body] run summon falling_block ^1 ^6 ^3 {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,Tags:["giant_rock"]}
execute at @e[tag=atrium_giant_body] run summon falling_block ^-1 ^6 ^3 {BlockState:{Name:"minecraft:stone"},Time:1,DropItem:0b,HurtEntities:1b,Tags:["giant_rock"]}
#
#
# Store zombie's coordinates into a score (stored on a per-entity basis)
execute as @e[tag=giant_rock] store result score @s x_coordinate run data get entity @s Pos[0] 50
execute as @e[tag=giant_rock] store result score @s y_coordinate run data get entity @s Pos[1] 50
execute as @e[tag=giant_rock] store result score @s z_coordinate run data get entity @s Pos[2] 50
# Store the location of the player that triggered the attack (or anyone else in range, honestly)
execute as @e[tag=atrium_giant_brain] store result score @s x_coordinate run data get entity @s Pos[0] 50
execute as @e[tag=atrium_giant_brain] store result score @s y_coordinate run data get entity @s Pos[1] 50
execute as @e[tag=atrium_giant_brain] store result score @s z_coordinate run data get entity @s Pos[2] 50
# Add zombie's coordinates to target's coordinates, then set zombie's coordinate score to the result
execute as @e[tag=atrium_giant_brain] run scoreboard players operation @e[tag=giant_rock] x_coordinate -= @s x_coordinate
execute as @e[tag=atrium_giant_brain] run scoreboard players operation @e[tag=giant_rock] y_coordinate -= @s y_coordinate
execute as @e[tag=atrium_giant_brain] run scoreboard players operation @e[tag=giant_rock] z_coordinate -= @s z_coordinate
# Set Motion to 2% of the resulting difference (altering y to 3% to try for more height)
execute as @e[tag=giant_rock] store result entity @s Motion[0] double 0.02 run scoreboard players get @s x_coordinate
execute as @e[tag=giant_rock] store result entity @s Motion[1] double 0.03 run scoreboard players get @s y_coordinate
execute as @e[tag=giant_rock] store result entity @s Motion[2] double 0.02 run scoreboard players get @s z_coordinate
#
# SFX
execute at @e[tag=zombie_fodder] run playsound minecraft:ui.toast.in hostile @a[distance=..40] ~ ~ ~ 5 0.5 1
#
execute as @e[tag=throw_setup] run attribute @s minecraft:generic.movement_speed base set 0.22
#
# Remove block from giant's hand
execute as @e[tag=throw_setup] at @s run data merge entity @s {HandItems:[{id:"minecraft:air",Count:1b},{}],HandDropChances:[0.000F,0.085F]}
#
# Remove tags from anyone who has them
tag @e[tag=throw_setup] remove throw_setup
tag @e[tag=atrium_giant_brain] remove giant_throw_target

