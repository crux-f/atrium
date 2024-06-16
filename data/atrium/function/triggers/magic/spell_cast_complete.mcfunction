# Reset charge score
scoreboard players set @s charge 0
# Damage the item used to cast the spell - Doesn't break in Creative Mode.
# Level 1: 100 Casts - Breaks 1% each cast
# Level 2: 200 Casts - Breaks 0.5% each cast
# Level 3: 300 Casts - Breaks 0.25% each cast 
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_1_p
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_0005_p
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_00025_p
# (Ultimate spells use the equivalent of 3 casts; break an additional 0.5% each cast)
execute if data entity @s[gamemode=!creative] {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}}} run item modify entity @s weapon.offhand atrium:chargeable/break_0005_p
# Remove power items
clear @s *[minecraft:custom_data~{atrium_power:1b}]
#
# If the item in your off hand has been used up, break it.
execute if data entity @s {Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff:1b},"minecraft:damage":1561}}]} run function atrium:items/use/chargeable/staves/break_staff
# If the Staff is enchanted with Concentration, return some of the XP used to cast the spell.
execute if entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_concentration_enchanted:1b}}}]}] at @s run function atrium:triggers/runic_enchantments/concentration/return_spell_xp