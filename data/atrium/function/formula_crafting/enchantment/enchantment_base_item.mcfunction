# Reset score
scoreboard players set @s valid_ingredients 0
#
# Research Enchantment (Transform Runic Research items into Formulas) - Check NORTH for Runic Research
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"runic"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:paper",components:{"minecraft:custom_data":{atrium_research_type:"runic"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/create_runic_formula
#
# Ingredients
#
# Start Enchantment Catalyst [Transforming] - Check SOUTH for Block of Diamond
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_transforming
#
# Start Enchantment Catalyst [Focusing] - Check SOUTH for Block of Lapis Lazuli
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/catalyst_focusing
#
# Start Blank Slate - Check NORTH for Smooth Stone Slab
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:smooth_stone_slab"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/blank_slate
#
# Start Copy Rune [Green] - Check NORTH for any green Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"green"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"green"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_green_rune
#
# Start Copy Rune [Red] - Check NORTH for any red Runestone
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"red"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune_color:"red"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/copy_red_rune
# 
# Start Forgotten Runestone - Check NORTH for Blank Slate
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune:"blank"}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_rune:"blank"}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/forgotten_runestone
#
# Start Dilution Matrix - Check NORTH for Blooming Crystal
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{atrium_blooming_crystal:1b}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/dilution_matrix
#
# 
# Other
#
# Start Occult Altar [Upgrade] - Check SOUTH for Block of Redstone
execute positioned ~ ~ ~3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/occult_altar_upgrade
# 
# Vanilla Enchanted Books
#
# Start Aqua Affinity - Check WEST for Ink Sac
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ink_sac"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:ink_sac"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/aqua_affinity
#
# Start Bane of Arthropods - Check WEST for Cracked Stone Bricks
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cracked_stone_bricks"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cracked_stone_bricks"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/bane_of_arthropods
#
# Start Blast Protection - Check WEST for White Wool
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_wool"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_wool"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/blast_protection
#
# Start Breach - Check NORTH WEST for Gunpowder
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gunpowder"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/breach
#
# Start Channeling - Check NORTH WEST for Prismarine Crystals
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:prismarine_crystals"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/channeling
#
# Start Density - Check WEST for Gravel
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gravel"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gravel"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/density
#
# Start Depth Strider - Check WEST for Tropical Fish
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tropical_fish"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/depth_strider
#
# Start Efficiency - Check WEST for Rail
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rail"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:rail"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/efficiency
#
# Start Feather Falling - Check WEST for Powder Snow Bucket
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:powder_snow_bucket"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:powder_snow_bucket"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/feather_falling
#
# Start Fire Aspect - Check WEST for Campfire
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:campfire"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fire_aspect
#
# Start Fire Protection - Check WEST for Snow Block
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snow_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:snow_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fire_protection
#
# Start Flame - Check WEST for Flint and Steel
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:flint_and_steel"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:flint_and_steel"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/flame
#
# Start Fortune - Check WEST for Emerald Ore
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_ore"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:emerald_ore"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/fortune
#
# Start Impaling - Check WEST for Bone
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bone"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/impaling
#
# Start Infinity - Check NORTH WEST for Redstone Dust
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:redstone"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/infinity
#
# Start Knockback - Check WEST for Piston
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:piston"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/knockback
#
# Start Looting - Check NORTH WEST for Gold Ingot
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/looting
#
# Start Loyalty - Check WEST for Lead
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lead"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lead"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/loyalty
#
# Start Luck of The Sea - Check WEST for Lapis Lazuli
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:lapis_lazuli"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/luck_of_the_sea
#
# Start Lure - Check WEST for Sweet Berries
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sweet_berries"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:sweet_berries"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/lure
#
# Start Multishot - Check NORTH WEST for Tripwire Hook
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tripwire_hook"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:tripwire_hook"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/multishot
#
# Start Piercing - Check WEST for Bamboo
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bamboo"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bamboo"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/piercing
#
# Start Power - Check NORTH WEST for Glowstone
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/power
#
# Start Projectile Protection - Check NORTH WEST for Target
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:target"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:target"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/projectile_protection
#
# Start Protection - Check WEST for Diamond
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/protection
#
# Start Punch - Check WEST for Egg
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:egg"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/punch
#
# Start Quick Charge - Check WEST for Wind Charge
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wind_charge"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:wind_charge"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/quick_charge
#
# Start Respiration - Check NORTH WEST for Bamboo
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bamboo"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:bamboo"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/respiration
#
# Start Riptide - Check WEST for Magma Block
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:magma_block"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/riptide
#
# Start Sharpness - Check WEST for Amethyst Shard
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_shard"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:amethyst_shard"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sharpness
#
# Start Silk Touch - Check WEST for White Wool
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_wool"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:white_wool"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/silk_touch
#
# Start Smite - Check WEST for Glowstone Dust
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:glowstone_dust"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/smite
#
# Start Sweeping Edge - Check NORTH WEST for Stone Sword
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_sword"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stone_sword"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/sweeping_edge
#
# Start Thorns - Check WEST for Cactus
execute positioned ~-4 ~ ~ at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cactus"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-4 ~ ~ if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cactus"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/thorns
#
# Start Unbreaking - Check NORTH WEST for Diamond
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/unbreaking
#
# Start Backstabbing I - Check NORTH WEST for any item enchanted with Piercing or a book storing Piercing
execute positioned ~-2 ~ ~-2 as @e[type=minecraft:glow_item_frame,distance=..1.5] if data entity @s Item.components.minecraft:enchantments.minecraft:piercing at @s run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:piercing at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
execute positioned ~-2 ~ ~-2 as @e[type=minecraft:glow_item_frame,distance=..1.5] if data entity @s Item.components.minecraft:stored_enchantments.minecraft:piercing at @s run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:piercing at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_1
#
# Start Backstabbing II - Check NORTH for Any Sword enchanted with Backstabbing I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:backstabbing":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:backstabbing":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_2
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:backstabbing":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:backstabbing":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_2
#
# Start Backstabbing III - Check NORTH for Any Sword enchanted with Backstabbing II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:backstabbing":2}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:backstabbing":2}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_3
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:backstabbing":2}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:backstabbing":2}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/backstabbing_3
#
# Start Fuse Cutter - Check NORTH WEST for any item enchanted with Blast Protection
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:blast_protection run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:blast_protection at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:blast_protection run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:blast_protection at @s run function atrium:formula_crafting/enchantment/e_recipes/fuse_cutter
#
# Start Shard Touch - Check NORTH WEST for any item enchanted with Silk Touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"minecraft:silk_touch":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"minecraft:silk_touch":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"minecraft:silk_touch":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"minecraft:silk_touch":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/shard_touch
#
# Start Sentinel - Check NORTH WEST for any item enchanted with Unbreaking
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:unbreaking run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:unbreaking at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:unbreaking run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:unbreaking at @s run function atrium:formula_crafting/enchantment/e_recipes/sentinel
#
# Start Concentration I - Check NORTH WEST for any item enchanted with Respiration
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:respiration run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:respiration at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:respiration run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:respiration at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_1
#
# Start Concentration II - Check NORTH for Any Staff enchanted with Concentration I
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:concentration":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:concentration":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_2
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:concentration":1}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:concentration":1}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_2
#
# Start Concentration III - Check NORTH for Any Staff enchanted with Concentration II
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:concentration":2}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:enchantments":{"atrium:concentration":2}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_3
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:concentration":2}}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{components:{"minecraft:stored_enchantments":{"atrium:concentration":2}}}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/concentration_3
#
# Start Smelting - Check NORTH WEST for any item enchanted with Fire Aspect
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:fire_aspect run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:enchantments.minecraft:fire_aspect at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:fire_aspect run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if data entity @e[type=minecraft:glow_item_frame,distance=..1.5,limit=1] Item.components.minecraft:stored_enchantments.minecraft:fire_aspect at @s run function atrium:formula_crafting/enchantment/e_recipes/smelting
#
# Start FEAST - Check NORTH WEST for Cooked Porkchop
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:cooked_porkchop"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/feast
#
# Start SURGE - Check NORTH WEST for Diamond
execute positioned ~-2 ~ ~-2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~-2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/surge
#
# Items
#
# Start Totem of Undying - Check SOUTH WEST for Stripped Birch Wood
execute positioned ~-2 ~ ~2 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~ ~2 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:stripped_birch_wood"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/totem_of_undying
# Start Trident - Check NORTH for Diamond Sword
execute positioned ~ ~ ~-3 at @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword"}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~ ~-3 if entity @e[type=minecraft:glow_item_frame,distance=..1.5,nbt={Item:{id:"minecraft:diamond_sword"}}] at @s run function atrium:formula_crafting/enchantment/e_recipes/trident
# 