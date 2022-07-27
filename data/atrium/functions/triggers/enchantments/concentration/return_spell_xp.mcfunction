# For spellcasting, Concentration also gives you back more XP per level of enchantment.
#
# Level 1 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv1:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:12}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv1:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:17}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv1:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:22}
# Level 2 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv2:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:24}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv2:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:32}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv2:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:40}
# Level 3 staves
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:1b,lv3:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:36}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:2b,lv3:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:52}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{concentration_lv:3b,lv3:1b}}]}] at @s run summon experience_orb ~ ~ ~ {Value:68}
# Enchantment particles
execute at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.1 0.5 0.1 0.5 25
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.75 1 0.1