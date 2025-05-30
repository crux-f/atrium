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
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_helmet",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/leather_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_chestplate",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/leather_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_leggings",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/leather_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:leather_boots",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/leather_boots_salvage
# Iron Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_helmet",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_chestplate",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_leggings",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_boots",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_boots_salvage
# Golden Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_helmet",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_chestplate",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_leggings",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_boots",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_boots_salvage
# Diamond Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_helmet",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_chestplate",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_leggings",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_boots",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_boots_salvage
# Netherite Armor
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_helmet",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_helmet_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_chestplate",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_chestplate_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_leggings",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_leggings_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_boots",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_boots_salvage
# Iron Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_hoe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/iron_hoe_salvage
# Golden Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_pickaxe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_sword",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:golden_hoe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/golden_hoe_salvage
# Diamond Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_shovel",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_hoe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/diamond_hoe_salvage
# Netherite Tools
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_pickaxe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_shovel",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_shovel_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_sword",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_sword_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_axe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_axe_salvage
execute as @a[tag=atrium_destabilize_item_caster] if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_hoe",count:1}}] at @s run function atrium:triggers/magic/spells/destailize_item/netherite_hoe_salvage
#
# If it was successful, remove the item in your main hand.
execute as @a[tag=atrium_destabilize_item_caster] run item replace entity @s weapon.mainhand with minecraft:air
#
# Remove tag
execute as @a[tag=atrium_destabilize_item_caster] run tag @s remove atrium_destabilize_item_caster