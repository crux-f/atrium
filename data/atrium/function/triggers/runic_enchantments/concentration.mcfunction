#
# CONCENTRATION
execute as @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"atrium:concentration":1}}}}}] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"atrium:concentration":2}}}}}] if predicate atrium:percentage_chances/0.50_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"atrium:concentration":3}}}}}] if predicate atrium:percentage_chances/0.75_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{components:{"minecraft:enchantments":{levels:{"atrium:concentration":4}}}}}] run function atrium:triggers/runic_enchantments/concentration/return_1_level
#
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"atrium:concentration":1}}}}]}] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"atrium:concentration":2}}}}]}] if predicate atrium:percentage_chances/0.50_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"atrium:concentration":3}}}}]}] if predicate atrium:percentage_chances/0.75_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:enchantments":{levels:{"atrium:concentration":4}}}}]}] run function atrium:triggers/runic_enchantments/concentration/return_1_level
#
# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/runic_enchantments/concentration
