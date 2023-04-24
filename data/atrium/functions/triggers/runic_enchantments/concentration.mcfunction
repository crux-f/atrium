#
# CONCENTRATION
execute as @s[nbt={SelectedItem:{tag:{atrium_concentration_lv:1b}}}] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{atrium_concentration_lv:2b}}}] if predicate atrium:percentage_chances/0.50_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
execute as @s[nbt={SelectedItem:{tag:{atrium_concentration_lv:3b}}}] if predicate atrium:percentage_chances/0.75_p run function atrium:triggers/runic_enchantments/concentration/return_1_level
#
# Revoke to allow retrigger
advancement revoke @s only atrium:triggers/runic_enchantments/concentration
