# For each item check- If the item is correct for this recipe, highlight it with particles, and add 1 to the craft tracking score. 
# If it reaches the total number required for success (number of items required minus 1), give the item and run the reset script. 
# Regardless of success or failure, reset the crafting score afterwards.
# Note: infusion_base_item handles the first item - this script will handle any remaining item checks.
#
# Check NORTH for Infusion Catalyst [Harmonizing]
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_harmonizing:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_catalyst_harmonizing:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH WEST for Blooming Crystal
execute positioned ~-3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check NORTH EAST for Blooming Crystal
execute positioned ~3 ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check WEST for Shimmering Feather
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_shimmering_feather:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_shimmering_feather:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check EAST for Shimmering Feather
execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_shimmering_feather:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_shimmering_feather:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER WEST for Phantom Membrane
execute positioned ~-2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER EAST for Phantom Membrane
execute positioned ~2 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run scoreboard players add @s valid_ingredients 1
# Check CENTER SOUTH for Phantom Membrane
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:phantom_membrane"}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH WEST for Blooming Crystal
execute positioned ~-3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Blooming Crystal
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH EAST for Blooming Crystal
execute positioned ~3 ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_gleaming_crystal:1b}}}}] run scoreboard players add @s valid_ingredients 1
# Check SOUTH for Potion of Slow Falling (8:00)
execute positioned ~ ~ ~4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_potion:"longer_slow_falling"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_potion:"longer_slow_falling"}}}}] run scoreboard players add @s valid_ingredients 1
#
execute if entity @s[scores={valid_ingredients=12..}] at @s run summon item ~ ~1 ~ {Tags:["atrium_formula_product"],Motion:[0.0,0.02,0.0],NoGravity:1b,Glowing:1b,Item:{id:"minecraft:egg",count:1,components:{"minecraft:item_name":'{"text":"Extremely Reportable Egg"}',"minecraft:lore":['{"text":"Seems like something you"}','{"text":"should report to the Admins."}'],"minecraft:custom_model_data":{strings:["atrium_strange_egg"]},"minecraft:custom_data":{atrium_extremely_reportable_egg:1}}}}
execute if entity @s[scores={valid_ingredients=12..}] at @s run item replace entity @e[limit=1,sort=nearest,tag=atrium_formula_product] container.0 with minecraft:elytra[minecraft:custom_model_data={strings:["atrium_dreamers_wings"]},minecraft:lore=['{"text":"The light of the aurora"}','{"text":"dances within its feathers."}'],minecraft:enchantments={levels:{"minecraft:mending":1,"minecraft:unbreaking":3}},minecraft:item_name='{"text":"Dreamer\'s Wings"}',minecraft:custom_data={atrium_dreamers_wings:1b},minecraft:rarity="rare"]
execute if entity @s[scores={valid_ingredients=12..}] at @s run function atrium:formula_crafting/infusion/infusion_reset
execute if entity @s[scores={valid_ingredients=12..}] at @s run advancement grant @p[distance=..10,gamemode=!spectator] only atrium:meridian/the_last_laugh
scoreboard players set @s valid_ingredients 0
