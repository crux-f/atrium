# Tag the infusion circle you're currently using with fx_travel.
tag @s add fx_travel
#
# Determine the multiplier (XP cost = 1% of the travel distance for compasses attached to Waystones, 5% for all other lodestones)
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{levels:{"atrium:attunement":1}}}}}] run scoreboard players set @s atrium_xp_multiplier -99
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}},nbt=!{Item:{components:{"minecraft:enchantments":{levels:{"atrium:attunement":1}}}}}] run scoreboard players set @s atrium_xp_multiplier -95
#
# Add 100 to the multiplier and store the value 100 in the item frame's Charge score (for % math)
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players add @s atrium_xp_multiplier 100
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players set @s charge 100
#
# tellraw crux_f [{"text":"multiplier is ","italic":true,"color":"gray"},{"score":{"name":"@e[limit=1,sort=nearest,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}]","objective":"atrium_xp_multiplier"},"color":"yellow"}]
# Store the compass' coordinates into a score (stored on a per-entity basis) on the item frame its sitting in
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] store result score @s atrium_x_coordinate run data get entity @s Item.components.minecraft:lodestone_tracker.target.pos[0]
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] store result score @s atrium_y_coordinate run data get entity @s Item.components.minecraft:lodestone_tracker.target.pos[1]
execute at @s positioned ~-5 ~2 ~ as @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] store result score @s atrium_z_coordinate run data get entity @s Item.components.minecraft:lodestone_tracker.target.pos[2]
#
# Store the location of the circle that activated this function
execute store result score @s atrium_x_coordinate run data get entity @s Pos[0] 1
execute store result score @s atrium_y_coordinate run data get entity @s Pos[1] 1
execute store result score @s atrium_z_coordinate run data get entity @s Pos[2] 1
#
# Subtract compass coordinates from circle coordinates, then set compass coordinates to the result to get the total distance between the two points on all 3 axes
execute at @s positioned ~-5 ~2 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_x_coordinate -= @s atrium_x_coordinate
execute at @s positioned ~-5 ~2 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_y_coordinate -= @s atrium_y_coordinate
execute at @s positioned ~-5 ~2 ~ run scoreboard players operation @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_z_coordinate -= @s atrium_z_coordinate
# Multiply the distance values by the xp multiplier 
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_x_coordinate *= @s atrium_xp_multiplier
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_y_coordinate *= @s atrium_xp_multiplier
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_z_coordinate *= @s atrium_xp_multiplier
# And divide all of them by 100
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_x_coordinate /= @s charge
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_y_coordinate /= @s charge
execute at @s positioned ~-5 ~2 ~ as @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] run scoreboard players operation @s atrium_z_coordinate /= @s charge
#
# Add all the numbers together to get the xp cost (in points) stored in 'charge' of the circle
execute at @s positioned ~-5 ~2 ~ store result score @s charge run scoreboard players get @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_x_coordinate
# tellraw crux_f [{"text":"cost after x = ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"charge"},"color":"yellow"}]
scoreboard players operation @s charge += @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_z_coordinate
# tellraw crux_f [{"text":"cost after z = ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"charge"},"color":"yellow"}]
scoreboard players operation @s charge += @e[limit=1,type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}}] atrium_y_coordinate
# tellraw crux_f [{"text":"cost after y = ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"charge"},"color":"yellow"}]
#
# Tag the closest player within 20 blocks who isn't dead.
execute at @s as @p[distance=..20,gamemode=!spectator] run tag @s add atrium_gate_user
#
# Give them a 'atrium_xp_debt' value equal to the total cost (if the number is negative, convert it to positive)
execute unless entity @s[scores={charge=0..}] run scoreboard players set @p[tag=atrium_gate_user] atrium_xp_debt -1
execute unless entity @s[scores={charge=0..}] run scoreboard players operation @p[tag=atrium_gate_user] atrium_xp_debt *= @s charge
execute if entity @s[scores={charge=0..}] run scoreboard players operation @p[tag=atrium_gate_user] atrium_xp_debt = @s charge
# Calculate their total xp
execute as @p[tag=atrium_gate_user] run function atrium:misc/xp_calculators/get_total_xp
# If the xp_calc_storage (total # of xp points) is greater than or equal to the cost (stored in atrium_xp_debt at this point), run the xp drain script.
# If it's not, tell them to go to hell and remove the tags.
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage < @s atrium_xp_debt run tellraw @s [{"text":"You don't have enough Experience. This warp requires ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"atrium_xp_debt"},"color":"yellow"},{"text":" points, and you have ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"xp_calc_storage"},"color":"yellow"},{"text":".","italic":true,"color":"gray"}]
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage < @s atrium_xp_debt run tag @p[tag=atrium_gate_user] remove atrium_gate_user
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage < @s atrium_xp_debt run tag @s remove fx_travel
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage < @s atrium_xp_debt run scoreboard players set @s atrium_xp_debt 0
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage < @s atrium_xp_debt run scoreboard players set @s xp_calc_storage 0
execute as @p[tag=atrium_gate_user] if score @s xp_calc_storage >= @s atrium_xp_debt run function atrium:formula_crafting/infusion/additions/warp_gate/xp_take_repeat
#
# Directional Insanity Advancement - - -
# If the target is a Waystone and the cost is 120 or more, grant the advancement.
execute at @s if score @p[tag=atrium_gate_user] atrium_xp_debt matches 120.. if score @p[tag=atrium_gate_user] xp_calc_storage >= @p[tag=atrium_gate_user] atrium_xp_debt positioned ~-5 ~2 ~ if score @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}},limit=1,sort=nearest] atrium_xp_multiplier matches 1 positioned ~ ~ ~ run advancement grant @p[tag=atrium_gate_user] only atrium:magic/directional_insanity
# If the target is not a Waystone and the cost is 600 or more, grant the advancement.
execute at @s if score @p[tag=atrium_gate_user] atrium_xp_debt matches 600.. if score @p[tag=atrium_gate_user] xp_calc_storage >= @p[tag=atrium_gate_user] atrium_xp_debt positioned ~-5 ~2 ~ if score @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:lodestone_tracker":{}}}},limit=1,sort=nearest] atrium_xp_multiplier matches 5 positioned ~ ~ ~ run advancement grant @p[tag=atrium_gate_user] only atrium:magic/directional_insanity
#
# Clear the scores again
# scoreboard players set @s atrium_x_coordinate 0
# scoreboard players set @s atrium_y_coordinate 0
# scoreboard players set @s atrium_z_coordinate 0
#
