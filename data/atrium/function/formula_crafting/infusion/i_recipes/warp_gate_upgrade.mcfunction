# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH WEST for Stone
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Stone
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER NORTH for Infusion Catalyst [Harmonizing]
execute positioned ~ ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_harmonizing:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_harmonizing:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Ender Pearl
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Ender Pearl
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ender_pearl"}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Stone
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Stone
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Calm Crystal
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_calm_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_calm_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Inert Focus
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Inert Focus
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_inert_focus:1b}}}}] run scoreboard players add @s valid_ingredients 1
#
# Check that there isn't already a Warp Gate installed
execute unless entity @s[nbt={data:{warp_gate_installed:1}}] run scoreboard players add @s valid_ingredients 1
#
# Check to make sure there is space. If there isn't, put a floating marker there to show which blocks need to be removed.
execute positioned ~-6 ~-1 ~ if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~-1 ~1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~-1 ~-1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~ ~ if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~ ~1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~ ~-1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~1 ~ if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~1 ~1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~1 ~-1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~2 ~ if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~2 ~1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~2 ~-1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~3 ~ if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~3 ~1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
execute positioned ~-6 ~3 ~-1 if block ~ ~ ~ minecraft:air run scoreboard players add @s valid_ingredients 1
#
execute positioned ~-6 ~-1 ~ unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~-1 ~1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~-1 ~-1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~ ~ unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~ ~1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~ ~-1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~1 ~ unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~1 ~1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~1 ~-1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~2 ~ unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~2 ~1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~2 ~-1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~3 ~ unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~3 ~1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
execute positioned ~-6 ~3 ~-1 unless block ~ ~ ~ minecraft:air run summon minecraft:snowball ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["atrium_special","atrium_temporary_entity","atrium_upgrade_marker"],CustomName:'{"text":"Upgrade Block Marker","italic":false}',Item:{id:"minecraft:barrier"}}
#
scoreboard players set @e[type=minecraft:snowball,distance=..10,tag=atrium_upgrade_marker] charge -200
#
execute if entity @s[scores={valid_ingredients=26..}] at @s run data merge entity @s {data:{warp_gate_installed:1}}
execute if entity @s[scores={valid_ingredients=26..}] at @s run tag @s add warp_gate
execute if entity @s[scores={valid_ingredients=26..}] at @s run tag @s add fx_build
execute if entity @s[scores={valid_ingredients=26..}] at @s run function atrium:formula_crafting/infusion/additions/build_warp_gate
execute if entity @s[scores={valid_ingredients=26..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
# tellraw @a [{"text":"Validation reached: [","color":"gray"},{"score":{"name":"@s","objective":"valid_ingredients"},"bold":true,"color":"gray"},{"text":"]","color":"gray"}]
scoreboard players set @s valid_ingredients 0
