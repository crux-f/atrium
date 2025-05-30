# Redirects from spell_charge
#
# Air
# Slot 0: Air Sigil I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run function atrium:triggers/magic/spells/air_sigil
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/air_sigil
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/air_sigil
# Slot 8: Increase Velocity I-III
execute if entity @s[scores={charge=60..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:1b}}}}} run function atrium:triggers/magic/spells/increase_velocity
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/increase_velocity
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/increase_velocity
# Slot 1: Inhale I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/inhale
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/inhale
# Slot 7: Exhale I-II
execute if entity @s[scores={charge=120..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:2b}}}}} run function atrium:triggers/magic/spells/exhale
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:7b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/exhale
#
# Slot 4: Dance
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff_lv:3b}}}}} run function atrium:triggers/magic/spells/dance