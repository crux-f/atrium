# Summon a primed tnt with tag Throw
execute at @s run summon tnt ^ ^ ^1 {Fuse:80,Tags:["throw"]}
# Store tnt's coordinates into a score (stored on a per-entity basis)
execute at @s as @e[tag=throw,distance=..5] store result score @s x_coordinate run data get entity @s Pos[0] 50
execute at @s as @e[tag=throw,distance=..5] store result score @s y_coordinate run data get entity @s Pos[1] 50
execute at @s as @e[tag=throw,distance=..5] store result score @s z_coordinate run data get entity @s Pos[2] 50
# Store the location of the player that activated this function
execute store result score @s x_coordinate run data get entity @s Pos[0] 50
execute store result score @s y_coordinate run data get entity @s Pos[1] 50
execute store result score @s z_coordinate run data get entity @s Pos[2] 50
# Subtract 'throw' coordinates from player coordinates, then set 'throw' coordinates to the result
scoreboard players operation @e[tag=throw] x_coordinate -= @s x_coordinate
scoreboard players operation @e[tag=throw] y_coordinate -= @s y_coordinate
scoreboard players operation @e[tag=throw] z_coordinate -= @s z_coordinate
# Set Motion to 2% of the resulting difference
execute at @s as @e[tag=throw,distance=..5] store result entity @s Motion[0] double 0.02 run scoreboard players get @s x_coordinate
execute at @s as @e[tag=throw,distance=..5] store result entity @s Motion[1] double 0.02 run scoreboard players get @s y_coordinate
execute at @s as @e[tag=throw,distance=..5] store result entity @s Motion[2] double 0.02 run scoreboard players get @s z_coordinate
