# Redirects from spell_charge
#
# Time
# Slot 0: Delaying Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run function atrium:triggers/magic/spells/time_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/time_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/time_sigil
# Slot 8: Desync I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run function atrium:triggers/magic/spells/desync
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/desync
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/desync
# Slot 1: Extend Duration I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/extend_duration
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/extend_duration
# Slot 7: Rewind Item I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/rewind_item
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/rewind_item
#
# Slot 4: Moment
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/moment