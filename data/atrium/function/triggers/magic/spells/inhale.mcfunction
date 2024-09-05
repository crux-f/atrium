# Store the location of the player that activated this function
execute store result score @s atrium_x_coordinate run data get entity @s Pos[0] 50
execute store result score @s atrium_y_coordinate run data get entity @s Pos[1] 50
execute store result score @s atrium_z_coordinate run data get entity @s Pos[2] 50
# Particles
execute anchored eyes run particle minecraft:cloud ^ ^ ^3 0.75 0.75 0.75 0.1 75
execute anchored eyes run particle minecraft:cloud ^ ^ ^6 0.75 0.75 0.75 0.1 75
# SFX
playsound minecraft:entity.breeze.inhale player @a[distance=..15] ~ ~ ~ 0.25 1.5 0.01
#
# Tag + store location of every entity in a line in front of player
execute anchored eyes positioned ^ ^ ^3 as @e[distance=..2.5] run tag @s add atrium_inhale_target
execute anchored eyes positioned ^ ^ ^6 as @e[distance=..2.5] run tag @s add atrium_inhale_target
#
execute as @e[tag=atrium_inhale_target,distance=..25] store result score @s atrium_x_coordinate run data get entity @s Pos[0] 50
execute as @e[tag=atrium_inhale_target,distance=..25] store result score @s atrium_y_coordinate run data get entity @s Pos[1] 50
execute as @e[tag=atrium_inhale_target,distance=..25] store result score @s atrium_z_coordinate run data get entity @s Pos[2] 50
# Subtract the target's coordinates from caster's coordinates, then set the target's coordinate scores to the result
scoreboard players operation @e[tag=atrium_inhale_target,distance=..25] atrium_x_coordinate -= @s atrium_x_coordinate
scoreboard players operation @e[tag=atrium_inhale_target,distance=..25] atrium_y_coordinate -= @s atrium_y_coordinate
scoreboard players operation @e[tag=atrium_inhale_target,distance=..25] atrium_z_coordinate -= @s atrium_z_coordinate
# Spell Level 1 (Staff Lv 2) = Set the target's Motion to 2% of the resulting difference
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[0] double -0.02 run scoreboard players get @s atrium_x_coordinate
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[1] double -0.02 run scoreboard players get @s atrium_y_coordinate
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[2] double -0.02 run scoreboard players get @s atrium_z_coordinate
# Spell Level 2 (Staff Lv 3) = Set the target's Motion to 5% of the resulting difference
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[0] double -0.05 run scoreboard players get @s atrium_x_coordinate
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[1] double -0.05 run scoreboard players get @s atrium_y_coordinate
execute at @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]}] as @e[tag=atrium_inhale_target,distance=..25] store result entity @s Motion[2] double -0.05 run scoreboard players get @s atrium_z_coordinate
#
# Reset coordinate scores
execute as @e[tag=atrium_inhale_target,distance=..25] run scoreboard players reset @s
scoreboard players reset @s
# Remove tag
tag @e[tag=atrium_inhale_target] remove atrium_inhale_target 
#
#
# Spell cleanup
execute as @s run function atrium:triggers/magic/spell_cast_complete