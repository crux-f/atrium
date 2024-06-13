# Particle
execute as @a[tag=atrium_destabilize_item_caster] at @s anchored eyes run particle minecraft:explosion ^ ^ ^2 0 0 0 1 1
#
# Turn the item back into its ingredients. If the player is holding a power slot item, let them know it didn't work.
#
# If you aren't holding an item that can be deconstructed, stop the show.
# (holding nothing)
execute as @a[tag=atrium_destabilize_item_caster] unless predicate atrium:player/inventory/holding_destabilizable_item run tellraw @s {"text":"You are not holding an item that can be taken apart.","italic":true,"color":"gray"}
execute as @a[tag=atrium_destabilize_item_caster] unless predicate atrium:player/inventory/holding_destabilizable_item run return 0
#
# Iron Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/leather_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/leather_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/leather_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/leather_boots_salvage
# Iron Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_boots_salvage
# Golden Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_boots_salvage
# Diamond Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_boots_salvage
# Netherite Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_boots_salvage
# Iron Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/iron_hoe_salvage
# Golden Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/golden_hoe_salvage
# Diamond Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/diamond_hoe_salvage
# Netherite Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",Count:1b}}] at @s run function atrium:triggers/magic/spells/destabilize_item/netherite_hoe_salvage
#
# If it was successful, remove the item in your main hand.
execute as @a[tag=atrium_destabilize_item_caster] run item replace entity @s weapon.mainhand with minecraft:air
#
# Remove tag
execute as @a[tag=atrium_destabilize_item_caster] run tag @s remove atrium_destabilize_item_caster