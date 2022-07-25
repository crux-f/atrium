# Already has caster position(s) stored from charge script
#
# Summon meteor 1 block ahead of the player's eyes (where they are aiming)
execute at @s anchored eyes run summon fireball ^ ^ ^1 {Fire:20,CustomNameVisible:0b,ExplosionPower:3b,Tags:["meteor_projectile"],CustomName:'{"text":"Meteor","color":"dark_red","italic":false}'}
# Sets the player to be the Owner of the meteor
# execute at @s positioned ^ ^ ^1 run data modify entity @e[limit=1,tag=meteor_projectile,distance=..1,sort=nearest] Owner set from entity @s UUID
# Store meteor's coordinates into a score (stored on a per-entity basis, using a scale of 50 to include decimals)
#execute at @s as @e[tag=meteor_projectile,distance=..3] store result score @s x_coordinate run data get entity @s Pos[0] 50
#execute at @s as @e[tag=meteor_projectile,distance=..3] store result score @s y_coordinate run data get entity @s Pos[1] 50
#execute at @s as @e[tag=meteor_projectile,distance=..3] store result score @s z_coordinate run data get entity @s Pos[2] 50
# Store the location of the player that activated this function
#execute store result score @s x_coordinate run data get entity @s Pos[0] 50
#execute store result score @s y_coordinate run data get entity @s Pos[1] 50
#execute store result score @s z_coordinate run data get entity @s Pos[2] 50
# Subtract the meteor's coordinates from player coordinates, then set the meteor's coordinate score to the result
#execute at @s run scoreboard players operation @e[tag=meteor_projectile,distance=..3] x_coordinate -= @s x_coordinate
#execute at @s run scoreboard players operation @e[tag=meteor_projectile,distance=..3] y_coordinate -= @s y_coordinate
#execute at @s run scoreboard players operation @e[tag=meteor_projectile,distance=..3] z_coordinate -= @s z_coordinate
# Set meteor's Motion to 0.5% of the resulting difference, throwing it away from the caster
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s Motion[0] double 0.005 run scoreboard players get @s x_coordinate
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s Motion[1] double 0.005 run scoreboard players get @s y_coordinate
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s Motion[2] double 0.005 run scoreboard players get @s z_coordinate
#
# Set meteor's power to 0.5% of the resulting difference, throwing it away from the caster
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s power[0] double 0.005 run scoreboard players get @s x_coordinate
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s power[1] double 0.005 run scoreboard players get @s y_coordinate
#execute at @s as @e[tag=meteor_projectile,distance=..5] store result entity @s power[2] double 0.005 run scoreboard players get @s z_coordinate
#
# Remove 1 Primordial Stone (casting component cost)
clear @s minecraft:fire_charge{primordial_stone:1b} 1
# Spell cleanup
function atrium:magic/magicitems/spell_cast_complete
#
# SFX
#
execute at @s anchored eyes run particle minecraft:flame ^ ^ ^1.5 0.25 0.25 0.25 0.1 50
execute at @s anchored eyes run particle dust_color_transition 1.000 0.267 0.000 1 0.129 0.039 0.000 ^ ^ ^1.5 0.45 0.45 0.45 0.5 75 normal
execute at @s run playsound minecraft:block.beacon.power_select player @a[distance=..50] ~ ~ ~ 0.75 2 0.1
