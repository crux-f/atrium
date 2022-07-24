# ANCHOR
execute unless entity @e[distance=..3,tag=infusion] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["infusion"]}
#
# ITEMS
#
# Start Spacial Focus - Check CENTER SOUTH for Diamond
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/spacial_focus
#
# Start Water Staff I - Check NORTH for Prismarine Crystals
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/water_staff_1
#
# Start Earth Staff I - Check NORTH for Emerald
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/earth_staff_1
#
# Start Fire Staff I - Check NORTH for Campfire
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/fire_staff_1
#
# Start Air Staff I - Check NORTH for Air Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{air_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{air_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/air_staff_1
#
# Start Space Staff I - Check NORTH for Compass
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:compass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:compass",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/space_staff_1
#
# Start Time Staff I - Check NORTH for Clock
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:clock",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:clock",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/time_staff_1
#
# Start Trident - Check NORTH for Diamond Sword (Undamaged)
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:0}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b,tag:{Damage:0}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/trident
#
# Start Tipped Arrows (Without Dragon's Breath) - Check SOUTH WEST for Arrow
execute positioned ~3 ~2 ~3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~3 ~2 ~3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:arrow",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/tipped_arrow
#
# Start Bottle o' Enchanting (45x) - Check CENTER NORTH for Gold Ingot
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{cyclone_cube:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{cyclone_cube:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/bottle_o_enchanting_45x
#
# Start Bottle o' Enchanting - Check CENTER NORTH for Gold Nugget 
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_nugget",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/bottle_o_enchanting
#
# Start Water Staff II - Check NORTH for Wet Sponge
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wet_sponge",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/water_staff_2
#
# Start Earth Staff II - Check NORTH for Diamond Ore
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_ore",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_ore",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/earth_staff_2
#
# Start Fire Staff II - Check NORTH for Primordial Stone
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{primordial_stone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{primordial_stone:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/fire_staff_2
#
# Start Air Staff II - Check NORTH for Cyclone Cube
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{cyclone_cube:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{cyclone_cube:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/air_staff_2
#
# Start Depths Gatestone - Check CENTER NORTH for Mountain's Root
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mountains_root:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mountains_root:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/gs_depths
#
# Start Nether Gatestone - Check CENTER NORTH for Glowstone
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/gs_nether
#
# Start Meridian Gatestone - Check CENTER NORTH for Chiseled Quartz Block
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_quartz_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:chiseled_quartz_block",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/gs_meridian
#
# Start Overworld Gatestone - Check CENTER NORTH for Grass Block
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:grass_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:grass_block",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/gs_overworld
#
# Start Arcane Kaleidoscope - Check NORTH for Red Dye
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_dye",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:red_dye",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/arcane_kaleidoscope
#
# Start Air Staff III - Check NORTH for Ambient Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{ambient_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{ambient_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/air_staff_3
#
# Start Earth Staff III - Check NORTH for Tangleheart
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{tangleheart:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{tangleheart:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/earth_staff_3
#
# Start Fire Staff III - Check NORTH for Nether Star
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/fire_staff_3
#
# Start Water Staff III - Check NORTH for Heart of the Sea
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:heart_of_the_sea",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/water_staff_3
#
# Start Molten Staff - Check NORTH for Lava Bucket
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lava_bucket",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/molten_staff
#
# INGREDIENTS
#
# Start Gleaming Prismarine - Check CENTER NORTH for Mysterious Fish
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mysterious_fish:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{mysterious_fish:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/gleaming_prismarine
#
# Start Air Crystal - Check NORTH for Glass
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/air_crystal
#
# Start Scintillating Melon - Check CENTER NORTH for Melon
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:melon",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:melon",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/scintillating_melon
#
# Start Sorrowfruit - Check CENTER NORTH for Apple
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:apple",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/sorrowfruit
#
# Start Spellcraft Compound - Check NORTH for Redstone
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/spellcraft_compound
#
# Start Cyclone Cube - Check CENTER NORTH for Glass
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glass",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/cyclone_cube
#
# Start Brightsteel Ingot - Check CENTER NORTH for Iron Ingot
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/brightsteel_ingot
#
# Start Life's Echo - Check NORTH for Spellcraft Compound
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{spellcraft_compound:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/lifes_echo
#
# Start Eager Crystal - Check NORTH for Blooming Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{blooming_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{blooming_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/eager_crystal
#
# Start Dimensional Anchor - Check NORTH for Lodestone
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lodestone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lodestone",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/dimensional_anchor
#
# Start Ambient Crystal - Check NORTH for Rumbling Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{rumbling_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/ambient_crystal
#
# Start Rainbow Road - Check CENTER SOUTH for Dirt
execute positioned ~ ~2 ~2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:dirt",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/rainbow_road
#
# Start Calm Crystal - Check NORTH for Subdued Crystal
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{subdued_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{subdued_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/calm_crystal
#
# Start Hellish Lantern - Check NORTH for Waxed Cut Copper
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:waxed_cut_copper",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/hellish_lantern
#
# Start Everglacier - Check NORTH for Blue Ice
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:blue_ice",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/everglacier
#
# Start Infusion Catalyst (Reverberating) - Check CENTER NORTH for Vibrant Crystal
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{vibrant_crystal:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{vibrant_crystal:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/catalyst_reverberating
#
# Start Infusion Catalyst (Harmonizing)- Check CENTER NORTH for Pearlescent Froglight
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pearlescent_froglight",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:pearlescent_froglight",Count:1b}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/catalyst_harmonizing
#
# MOBS
#
# Start Golem Centurion - Check NORTH for Life's Echo
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{lifes_echo:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{lifes_echo:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/golem_centurion
#
# UPGRADES
#
# Start Warp Gate - Check NORTH for Dimensional Anchor
execute positioned ~ ~2 ~-4 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dimensional_anchor:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-4 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{dimensional_anchor:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:magic/infusion/warp_gate
#
# MISC
#
# Check WARP GATE for a Gatestone. If there is one, run the tp_dimension script, which gets more granular.
execute if entity @e[tag=warp_gate,distance=..10] positioned ~-5 ~4 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute if entity @e[tag=warp_gate,distance=..10] positioned ~-5 ~4 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone:1b}}}] run execute as @e[tag=infusion,distance=..10] at @s run function atrium:travel/warp_gate/tp_dimension
