# Particles!
particle minecraft:portal ~ ~0.80 ~ 0.1 0.5 0.1 0.1 50
# Sfx!
playsound minecraft:block.ender_chest.close block @a[distance=..15] ~ ~ ~ 1 0.5 0.1
#
# Remove stone thing
execute positioned ~ ~ ~-8 run playsound minecraft:block.stone.break block @a[distance=..5] ~ ~ ~ 0.5 1 0.1
#
execute positioned ~ ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~ ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~ ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
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
execute positioned ~ ~1 ~-6 if block ~ ~ ~ minecraft:stone_button run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~1 ~-7 if block ~ ~ ~ minecraft:chiseled_stone_bricks run setblock ~ ~ ~ minecraft:air
setblock ~ ~1 ~-8 minecraft:air
execute positioned ~ ~1 ~-9 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~1 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~-2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~2 ~1 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
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
execute positioned ~ ~2 ~-7 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
execute positioned ~ ~2 ~-8 if block ~ ~ ~ minecraft:stone run setblock ~ ~ ~ minecraft:air
#
setblock ~ ~ ~ minecraft:air
execute positioned ~ ~ ~ run summon item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Infusion Circle","color":"light_purple","italic":false}',Lore:['{"text":"Space Required:","color":"gray","italic":false}','{"text":"x9,y5,z11","color":"dark_gray","italic":false}','{"text":" "}','{"text":"When Placed:","color":"gray","italic":false}','{"text":"Generates a structure ","color":"blue","italic":false}']},infusion_circle_placer:1b,SkullOwner:{Id:[I;-510246894,-974372697,-1324757754,-2046207321],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTIyNzYzMDkzNzc0NjkzYjI2MzkyNzhhMWMyYzY5OGFkMTFkYjQ5Mjg5NmU5YmYxNjcxNGQ4NTdlOThjYTFkZCJ9fX0="}]}}}}}
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
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:lodestone",Count:1b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stone",Count:4b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:amethyst_block",Count:1b,tag:{display:{Name:'{"text":"Infusion Catalyst","italic":false}',Lore:['{"text":"Harmonizing","color":"light_purple","italic":false}','{"text":" "}','{"text":"A little extra music can"}','{"text":"help even the most"}','{"text":"disparate elements get along."}']},atrium_catalyst_harmonizing:1b,Enchantments:[{}]}}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:ender_pearl",Count:2b}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'{"text":"Inert Focus","italic":false}'},CustomModelData:333059,atrium_inert_focus:1b}}}
execute if data entity @s data.warp_gate_installed run summon minecraft:item ~ ~1 ~ {NoGravity:1b,Glowing:1b,Item:{id:"minecraft:blue_stained_glass",Count:1b,tag:{display:{Name:'{"text":"Calm Crystal","color":"blue","italic":false}',Lore:['{"text":"It feels like chilled"}','{"text":"glass. You can almost"}','{"text":"feel it contemplating."}']},HideFlags:1,atrium_calm_crystal:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2,Operation:0,UUID:[I;-2123071529,1345407694,-1756066510,1972665159],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;1626373228,-1354218532,-1339331348,773807433],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-1101675602,-1514387537,-1111860716,857932385],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-2058357322,1857374624,-1166773954,1459387628],Slot:"offhand"}]}}}
# Remove entity
kill @s
# Cleanup
execute as @p[gamemode=!spectator,distance=..6,nbt={SelectedItem:{tag:{atrium_rod_of_relocation:1b}}}] run function atrium:items/use/placeable_structures/rod_of_relocation_cleanup