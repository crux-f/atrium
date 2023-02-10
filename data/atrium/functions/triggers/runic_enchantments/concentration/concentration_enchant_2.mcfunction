#
# CONCENTRATION
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:1b}}}] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:2b}}}] if predicate atrium:percentage_chances/0.35_p run function atrium:triggers/enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{concentration_lv:3b}}}] if predicate atrium:percentage_chances/0.45_p run function atrium:triggers/enchantments/concentration/return_1_level
#
# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/enchantments/concentration/concentration_enchant_2