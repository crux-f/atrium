# Redirects from spell_charge
#
# Air
# Slot 0: Water Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/water_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/water_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:0b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/water_sigil
# Slot 8: Extinguish I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:1b}}]} run function atrium:triggers/magic/spells/extinguish
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/extinguish
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:8b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/extinguish
# Slot 1: Turn Tide I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/turn_tide
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/turn_tide
# Slot 7: Undercurrent I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:2b}}]} run function atrium:triggers/magic/spells/undercurrent
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:7b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/undercurrent
#
# Slot 4: Flush
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{tag:{atrium_power_slot:4b}},Inventory:[{Slot:-106b,tag:{atrium_staff_lv:3b}}]} run function atrium:triggers/magic/spells/flush