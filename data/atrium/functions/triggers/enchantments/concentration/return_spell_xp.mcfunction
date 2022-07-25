# For spellcasting, Concentration also gives you back more XP per level of enchantment.
#
# Level 1 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv1:1b}}]}] run xp add @s 12 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv1:1b}}]}] run xp add @s 17 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv1:1b}}]}] run xp add @s 22 points
# Level 2 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv2:1b}}]}] run xp add @s 24 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv2:1b}}]}] run xp add @s 32 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv2:1b}}]}] run xp add @s 40 points
# Level 3 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv3:1b}}]}] run xp add @s 36 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv3:1b}}]}] run xp add @s 52 points
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv3:1b}}]}] run xp add @s 68 points
# Enchantment particles
execute at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.1 0.5 0.1 0.5 25
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.75 1 0.1