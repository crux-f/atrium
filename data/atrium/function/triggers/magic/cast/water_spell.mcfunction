# Redirects from spell_charge
#
# Water
# Slot 0: Water Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run function atrium:triggers/magic/spells/water_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/water_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/water_sigil
# Slot 8: Extinguish I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run function atrium:triggers/magic/spells/extinguish
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/extinguish
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/extinguish
# Slot 1: Turn Tide I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/turn_tide
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/turn_tide
# Slot 7: Undercurrent I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/undercurrent
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/undercurrent
#
# Slot 4: Refresh
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/refresh