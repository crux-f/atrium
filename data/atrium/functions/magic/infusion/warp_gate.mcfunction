# Check NORTH EAST for Stone
execute positioned ~3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check EAST for Stone
execute positioned ~4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH EAST for Stone
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check SOUTH WEST for Stone
execute positioned ~-3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check WEST for Stone
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check NORTH WEST for Stone
execute positioned ~-3 ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-3 ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone",Count:1b}}] run scoreboard players add @s infusion 1
#
# Check CENTER EAST for Enchantment Catalyst (Inscribing)
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_inscribing:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_inscribing:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER NORTH for Infusion Catalyst (Harmonizing)
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_harmonizing:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_harmonizing:1b}}}] run scoreboard players add @s infusion 1
#
# Check CENTER WEST for Enchantment Catalyst (Transforming). If true, construct the WARP GATE.
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_transforming:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{catalyst_transforming:1b}}}] run scoreboard players add @s infusion 1
#
# Tag the nearest infusion marker with warp_gate
execute if entity @s[scores={infusion=9..}] at @s run tag @e[tag=infusion,distance=..10] add warp_gate
#
# Tag the nearest warp_gate with the temporary build FX tag
execute if entity @s[scores={infusion=9..}] at @s run tag @e[tag=warp_gate,distance=..10] add fx_build
#
# Run the build script
execute if entity @s[scores={infusion=9..}] at @s run function atrium:travel/warp_gate/warp_gate_build
#
# Reset
execute if entity @s[scores={infusion=9..}] at @s run function atrium:magic/infusion/infusion_reset
scoreboard players set @s infusion 0
