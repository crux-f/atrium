# Reset score
scoreboard players set @s valid_ingredients 0
#
# Crafting Components
#
# Start Inert Focus - Check CENTER SOUTH for Diamond
execute positioned ~ ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/inert_focus
# Start Infusion Catalyst [Harmonizing] - Check EAST for Block of Amethyst
# execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
# execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}}] run function atrium:formula_crafting/infusion/i_recipes/catalyst_harmonizing
# Start Infusion Catalyst [Reverberating] - Check EAST for Block of Quartz
# execute positioned ~4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
# execute positioned ~4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz_block",Count:1b}}] run function atrium:formula_crafting/infusion/i_recipes/catalyst_reverberating
#
# Equipment
#
# Start Staff of Air (+1) - Check NORTH for Glowstone Dust
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/air_staff_1
# Start Staff of Earth (+1) - Check NORTH for Emerald
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/earth_staff_1
# Start Staff of Fire (+1) - Check NORTH for Redstone
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/fire_staff_1
# Start Staff of Water (+1) - Check NORTH for Lapis Lazuli
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/water_staff_1
# Start Staff of Time (+1) - Check NORTH for Nether Quartz
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:quartz",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/time_staff_1
# Start Staff of Space (+1) - Check NORTH for Coal
execute positioned ~ ~ ~-4 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-4 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:coal",Count:1b}}] at @s run function atrium:formula_crafting/infusion/i_recipes/space_staff_1
