# Redirects from spell_charge
#
# Air
# Slot 0: Updraft I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/air_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/air_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/air_sigil
# Slot 8: Increase Velocity I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/increase_velocity
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/increase_velocity
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/increase_velocity
#
# Slot 4: Dance
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/dance