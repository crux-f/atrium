# For spellcasting, Concentration also gives you back more XP per level of enchantment.
#
# Level I (Staff lv 1-3) - 25% of total cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:1b,atrium_staff_lv:1b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:6}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:1b,atrium_staff_lv:2b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:12}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:1b,atrium_staff_lv:3b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:18}
# Level II (Staff lv 1-3) - 50% of total cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:2b,atrium_staff_lv:1b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:12}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:2b,atrium_staff_lv:2b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:24}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:2b,atrium_staff_lv:3b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:36}
# Level III (Staff lv 1-3) - 75% of total cost
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:3b,atrium_staff_lv:1b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:18}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:3b,atrium_staff_lv:2b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:36}
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{atrium_concentration_lv:3b,atrium_staff_lv:3b}}]}] at @s run summon minecraft:experience_orb ~ ~ ~ {Value:54}
# Enchantment particles
execute at @s run particle minecraft:enchanted_hit ~ ~1.25 ~ 0.1 0.5 0.1 0.5 10
# execute at @s run playsound minecraft:entity.experience_orb.pickup player @a[distance=..10] ~ ~ ~ 0.75 1 0.1