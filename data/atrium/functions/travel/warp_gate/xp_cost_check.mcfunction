# Tag the infusion circle you're currently using with fx_travel.
tag @s add fx_travel
#
# Determine the multiplier (XP cost of 1% of distance for compasses attached to Waystones, 3% for all other lodestones)
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b,Enchantments:[{id:"minecraft:lure"}]}}}] run scoreboard players set @s warp_xp_multiplier -97
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}},nbt=!{Item:{tag:{Enchantments:[{id:"minecraft:lure"}]}}}] run scoreboard players set @s warp_xp_multiplier -99
#
# Add 100 to the multiplier and store the value 100 in the item frame's Charge score (for % math)
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players add @s warp_xp_multiplier 100
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players set @s charge 100
#
# Store the compass' coordinates into a score (stored on a per-entity basis) on the item frame its sitting in
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] store result score @s x_coordinate run data get entity @s Item.tag.LodestonePos.X 1
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] store result score @s y_coordinate run data get entity @s Item.tag.LodestonePos.Y 1
execute at @s positioned ~-5 ~4 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] store result score @s z_coordinate run data get entity @s Item.tag.LodestonePos.Z 1
#
# Store the location of the circle that activated this function
execute store result score @s x_coordinate run data get entity @s Pos[0] 1
execute store result score @s y_coordinate run data get entity @s Pos[1] 1
execute store result score @s z_coordinate run data get entity @s Pos[2] 1
#
# Subtract compass coordinates from circle coordinates, then set compass coordinates to the result to get the total distance between the two points on all 3 axes
#
execute at @s positioned ~-5 ~4 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] x_coordinate -= @s x_coordinate
execute at @s positioned ~-5 ~4 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] y_coordinate -= @s y_coordinate
execute at @s positioned ~-5 ~4 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] z_coordinate -= @s z_coordinate
# Multiply the distance values by the xp multiplier 
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s x_coordinate *= @s warp_xp_multiplier
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s y_coordinate *= @s warp_xp_multiplier
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s z_coordinate *= @s warp_xp_multiplier
# And divide all of them by 100
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s x_coordinate /= @s charge
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s y_coordinate /= @s charge
execute at @s positioned ~-5 ~4 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] run scoreboard players operation @s z_coordinate /= @s charge
#
# Add all the numbers together to get the xp cost (in points) stored in 'charge' of the warp gate
execute at @s positioned ~-5 ~4 ~ store result score @s charge run scoreboard players get @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] x_coordinate
scoreboard players operation @s charge += @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] z_coordinate
scoreboard players operation @s charge += @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{LodestoneTracked:1b}}}] y_coordinate
#
# Tag the closest player within 6 blocks who isn't dead.
execute at @s as @p[distance=..6,gamemode=!spectator] run tag @s add gate_user
#
# Give them a 'charge' value equal to the total cost (if the number is negative, convert it to positive)
execute unless entity @s[scores={charge=0..}] run scoreboard players set @p[tag=gate_user] charge -1
execute unless entity @s[scores={charge=0..}] run scoreboard players operation @p[tag=gate_user] charge *= @s charge
execute if entity @s[scores={charge=0..}] run scoreboard players operation @p[tag=gate_user] charge = @s charge
# Grab their exp
execute as @p[tag=gate_user] run function atrium:misc/xp_calculators/get_total_xp
# If the xp_calc_storage (total # of xp points) is greater than or equal to the cost (stored in charge at this point), run the xp drain script.
# If it's not, tell them to go to hell and remove the tags.
execute as @p[tag=gate_user] if score @s xp_calc_storage < @s charge run tellraw @p[tag=gate_user] {"text":"You don't have enough experience.","italic":true,"color":"gray"} 
execute as @p[tag=gate_user] if score @s xp_calc_storage < @s charge run tag @p[tag=gate_user] remove gate_user
execute as @p[tag=gate_user] if score @s xp_calc_storage < @s charge run tag @s remove fx_travel
execute as @p[tag=gate_user] if score @s xp_calc_storage < @s charge run scoreboard players set @s charge 0
execute as @p[tag=gate_user] if score @s xp_calc_storage < @s charge run scoreboard players set @s xp_calc_storage 0
execute as @p[tag=gate_user] if score @s xp_calc_storage >= @s charge run function atrium:travel/warp_gate/xp_take_repeat
# Clear the scores again
# scoreboard players set @s x_coordinate 0
# scoreboard players set @s y_coordinate 0
# scoreboard players set @s z_coordinate 0
#
