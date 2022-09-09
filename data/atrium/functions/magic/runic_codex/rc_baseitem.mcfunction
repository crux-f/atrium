# ANCHOR
execute unless entity @e[distance=..3,tag=runic_codex] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["runic_codex"]}
#
# ITEMS
#
# Start Core Pickaxe - Check NORTH for Diamond Pickaxe
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/core_pickaxe
#
# Start Essence Blade - Check NORTH for Diamond Sword
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/essence_blade
#
# Start Scroll of Translocation - Check NORTH for Bottle o' Enchanting
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:experience_bottle",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/scroll_translocation
#
# Start Gatestone - The Far Lands - Check NORTH for Gatestone - Overworld
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_overworld:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{gatestone_overworld:1b}}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/gatestone_thefarlands
#
# Start Traveler's Best Friend [Spellbook] - Check NORTH for Item enchanted with Loyalty I
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:loyalty",lvl:1s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{Enchantments:[{id:"minecraft:loyalty",lvl:1s}]}}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/travelers_best_friend
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:loyalty",lvl:1s}]}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{StoredEnchantments:[{id:"minecraft:loyalty",lvl:1s}]}}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/travelers_best_friend
#
# Start Forgotten Runestone - Check NORTH EAST for Smooth Stone
execute positioned ~2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/forgotten_runestone
#
#
# INGREDIENTS
#
#
# Start Enchantment Catalyst (Inscribing) - Check WEST for Lapis Lazuli Block
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/catalyst_inscribing
#
# Start Enchantment Catalyst (Transforming) - Check WEST for Block of Amethyst
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_block",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/catalyst_transforming
#
# Start Enchantment Catalyst (Perpetuating) - Check WEST for Flickering Fuel
execute positioned ~-4 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{flickering_fuel:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{flickering_fuel:1b}}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/catalyst_perpetuating
#
#
# Enchantments
#
#
# Start Concentration 1 - Check NORTH for Book & Quill
execute positioned ~ ~2 ~-3 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-3 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/custom_enchantments/enchant_staff_concentration_1
#
# RESEARCH - commenting out until i can find a solution because goddamn PAPER crashes when reducing item count to 0 this way
# Start Research - Check NORTH WEST for Book
execute positioned ~-2 ~2 ~-2 at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:book",Count:1b}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:book",Count:1b}}] run execute as @e[tag=runic_codex,distance=..10] at @s run function atrium:magic/runic_codex/research_formula
