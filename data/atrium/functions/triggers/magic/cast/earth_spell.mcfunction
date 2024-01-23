# Redirects from spell_charge
#
# Earth
# Slot 0: Earth Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/earth_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/earth_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/earth_sigil
# Slot 8: Natural Armor I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/natural_armor
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/natural_armor
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/natural_armor
# Slot 1: Locate Ore I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/locate_ore
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/locate_ore
# Slot 7: Conjure Tree I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/conjure_tree
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/conjure_tree
#
# Slot 4: Return
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} unless score @s atrium_return_dim matches 0.. run function atrium:triggers/magic/spells/return_setup
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} if score @s atrium_return_dim matches 0.. run function atrium:triggers/magic/spells/return_cast