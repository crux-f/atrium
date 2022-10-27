# Reset charge score
scoreboard players set @s charge 0
# Damage the item used to cast the spell - Doesn't break in Creative Mode.
# Level 1: 100 Casts - Breaks 1% each cast
# Level 2: 200 Casts - Breaks 0.5% each cast
# Level 3: 300 Casts - Breaks 0.25% each cast 
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_1_p
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_0005_p
execute if data entity @s[gamemode=!creative] {Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_00025_p
# (Ultimate spells use the equivalent of 2 casts; break an additional 0.25% each cast)
execute if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}}} run item modify entity @s weapon.offhand atrium:chargeable/break_00025_p
# Remove power items
clear @s minecraft:firework_star{atrium_power:1b}