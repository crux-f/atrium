# Charge score is reset on a per spell basis to allow for longer cooldowns on mob spells
#
# Damage the item used to cast the spell.
# Level 1: 100 Casts - Breaks 1% each cast
# Level 2: 200 Casts - Breaks 0.5% each cast
# Level 3: 300 Casts - Breaks 0.25% each cast 
execute if data entity @s {HandItems:[{},{tag:{atrium_staff_lv:1b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_1_p
execute if data entity @s {HandItems:[{},{tag:{atrium_staff_lv:2b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_0005_p
execute if data entity @s {HandItems:[{},{tag:{atrium_staff_lv:3b}}]} run item modify entity @s weapon.offhand atrium:chargeable/break_00025_p
# (Ultimate spells use the equivalent of 3 casts; break an additional 0.5% each cast)
# execute if data entity @s[gamemode=!creative] {SelectedItem:{tag:{atrium_power_slot:4b}}} run item modify entity @s weapon.offhand atrium:chargeable/break_0005_p
#
# If the item in the mob's off hand has been used up, break it.
execute if data entity @s {HandItems:[{},{tag:{atrium_staff:1b,Damage:1561}}]} run function atrium:items/use/chargeable/staves/break_staff
