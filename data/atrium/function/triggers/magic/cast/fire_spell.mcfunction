# Redirects from spell_charge
#
# Fire
# Slot 0: Fire Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run function atrium:triggers/magic/spells/fire_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/fire_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/fire_sigil
# Slot 8: Throw Flames I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}]} run function atrium:triggers/magic/spells/throw_flames
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/throw_flames
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/throw_flames
# Slot 1: Flare I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/flare
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/flare
# Slot 7: Stoke Furnace I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}]} run function atrium:triggers/magic/spells/stoke_furnace
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/stoke_furnace
#
# Slot 4: Meteor
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}]} run function atrium:triggers/magic/spells/meteor