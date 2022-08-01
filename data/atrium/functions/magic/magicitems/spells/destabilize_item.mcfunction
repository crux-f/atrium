# Remove 1 Glowstone Dust (casting component cost)
clear @s minecraft:glowstone_dust 1
# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# SFX
execute at @s run particle minecraft:crimson_spore ^-0.25 ^1.5 ^0.25 0 0 0 0 25
execute at @s run particle minecraft:warped_spore ^-0.25 ^1.5 ^0.25 0 0 0 0 25
execute at @s run playsound minecraft:block.amethyst_cluster.break player @a[distance=..5] ~ ~ ~ 1 0.1 0.1
#
# Break items on the ground in front of the caster.
#
# Iron Armor
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_helmet_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_chestplate_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_leggings_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_boots_salvage
# Golden Armor
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_helmet",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_helmet_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_chestplate",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_chestplate_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_leggings",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_leggings_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_boots",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_boots_salvage
# Diamond Armor
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_helmet",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_helmet_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_chestplate",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_chestplate_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_leggings",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_leggings_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_boots",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_boots_salvage
# Netherite Armor
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_helmet",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_helmet_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_chestplate",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_chestplate_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_leggings",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_leggings_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_boots",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_boots_salvage
# Iron Tools
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_pickaxe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_pickaxe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_shovel",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_shovel_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_sword_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_axe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_axe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_hoe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/iron_hoe_salvage
# Golden Tools
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_pickaxe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_pickaxe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_shovel",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_shovel_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_sword",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_sword_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_axe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_axe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:golden_hoe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/golden_hoe_salvage
# Diamond Tools
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_pickaxe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_pickaxe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_shovel",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_shovel_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_sword_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_axe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_axe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_hoe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/diamond_hoe_salvage
# Netherite Tools
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_pickaxe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_pickaxe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_shovel",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_shovel_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_sword",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_sword_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_axe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_axe_salvage
execute at @s anchored eyes positioned ^ ^2 ^ as @e[type=minecraft:item,nbt={Item:{id:"minecraft:netherite_hoe",Count:1b}}] run function atrium:magic/magicitems/spells/destabilize_spell/netherite_hoe_salvage