#
# CONCENTRATION
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:1b}}}] if predicate atrium:percentage_chances/0.10_p run function atrium:triggers/enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:2b}}}] if predicate atrium:percentage_chances/0.20_p run function atrium:triggers/enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:3b}}}] if predicate atrium:percentage_chances/0.30_p run function atrium:triggers/enchantments/concentration/return_1_level
#
# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/enchantments/concentration/concentration_enchant_1
