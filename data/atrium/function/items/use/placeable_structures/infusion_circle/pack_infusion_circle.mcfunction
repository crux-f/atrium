# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
# Remove stone thing
# execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.break block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
# execute positioned ~ ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~ ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~ ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
# Remove all crafting slots
#
# CENTER NORTH
execute positioned ~ ~ ~-2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~-2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER EAST
execute positioned ~2 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER SOUTH
execute positioned ~ ~ ~2 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~2 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# CENTER WEST
execute positioned ~-2 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-2 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# execute positioned ~ ~1 ~-6 if block ~ ~ ~ minecraft:stone_button run setblock ~ ~ ~ minecraft:air
# execute positioned ~ ~1 ~-7 if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:air
# setblock ~ ~1 ~-8 minecraft:air
# execute positioned ~ ~1 ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~-2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
# NORTH
execute positioned ~ ~ ~-4 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~-4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-EAST
execute positioned ~3 ~ ~-3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# EAST
execute positioned ~4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-EAST
execute positioned ~3 ~ ~3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH
execute positioned ~ ~ ~4 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~ ~ ~4 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# SOUTH-WEST
execute positioned ~-3 ~ ~3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-3 ~ ~3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# WEST
execute positioned ~-4 ~ ~ run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-4 ~ ~ run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
# NORTH-WEST
execute positioned ~-3 ~ ~-3 run kill @e[distance=..1.5,type=minecraft:glow_item_frame,limit=1]
execute positioned ~-3 ~ ~-3 run particle minecraft:portal ~ ~ ~ 0.1 0.5 0.1 0.1 15
#
# execute positioned ~ ~2 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
# execute positioned ~ ~2 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",count:1b,components:{"minecraft:lore":['{"text":"Space Required:","color":"gray","italic":false}','{"text":"x9,y3,z9","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure ","color":"blue","italic":false}'],"minecraft:item_name":'{"text":"Infusion Circle"}',"minecraft:profile":{id:[I;-510246894,-974372697,-1324757754,-2046207321],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIyNzYzMDkzNzc0NjkzYjI2MzkyNzhhMWMyYzY5OGFkMTFkYjQ5Mjg5NmU5YmYxNjcxNGQ4NTdlOThjYTFkZCJ9fX0="}]},"minecraft:custom_data":{infusion_circle_placer:1b}}}}
#
# If the Warp Gate Upgrade is installed, disassemble that as well.
execute positioned ~-6 ~-1 ~ if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~-1 ~1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~-1 ~-1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~ ~1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~ ~-1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~1 ~1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~1 ~-1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~2 ~ if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~2 ~1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~2 ~-1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~3 ~ if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~3 ~1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
execute positioned ~-6 ~3 ~-1 if data entity @s data.warp_gate_installed run setblock ~ ~ ~ minecraft:air
#
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:lodestone",count:1b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stone",count:4b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:amethyst_block",count:1b,components:{"minecraft:enchantment_glint_override":true,"minecraft:lore":['{"text":"Harmonizing","color":"light_purple","italic":false}','{"text":" "}','{"text":"A little extra music can"}','{"text":"help even the most"}','{"text":"disparate elements get along."}'],"minecraft:item_name":'{"text":"Infusion Catalyst"}',"minecraft:custom_data":{atrium_catalyst_harmonizing:1b}}}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:ender_pearl",count:2b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stick",count:1b,components:{"minecraft:custom_model_data":{strings:["atrium_inert_focus"]},"minecraft:item_name":'{"text":"Inert Focus"}',"minecraft:custom_data":{atrium_inert_focus:1b}}}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:blue_stained_glass",count:1b,components:{"minecraft:lore":['{"text":"It feels like chilled"}','{"text":"glass. You can almost"}','{"text":"feel it contemplating."}'],"minecraft:attribute_modifiers":{modifiers:[{amount:2,id:"atrium:calm_crystal_armor_toughness_mainhand",operation:"add_value",slot:"mainhand",type:"armor_toughness"},{amount:1,id:"atrium:calm_crystal_armor_toughness_offhand",operation:"add_value",slot:"offhand",type:"armor_toughness"},{amount:4,id:"atrium:calm_crystal_armor_mainhand",operation:"add_value",slot:"mainhand",type:"armor"},{amount:2,id:"atrium:calm_crystal_armor_mainhand",operation:"add_value",slot:"offhand",type:"armor"}]},"minecraft:enchantments":{levels:{"minecraft:unbreaking":1},show_in_tooltip:0b},"minecraft:item_name":'{"text":"Calm Crystal","color":"blue"}',"minecraft:custom_data":{atrium_calm_crystal:1b}}}}
# Remove entity
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{components:{"minecraft:custom_data":{atrium_rod_of_relocation:1b}}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup