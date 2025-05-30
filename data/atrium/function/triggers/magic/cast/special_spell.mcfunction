# Redirects from spell_charge
# Each combo staff has a ultimate spell in Slot 4.
# Both of the "opposite" staves have 2 additional spells instead of copying from their respective elements.
# 
# Frigid Staff
# Slot 4 | Blizzard
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_frigid_staff:1b}}}}} run function atrium:triggers/magic/spells/blizzard
# Slot 0 | Air Sigil III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_frigid_staff:1b}}}}} run function atrium:triggers/magic/spells/air_sigil
# Slot 8 | Extinguish III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_frigid_staff:1b}}}}} run function atrium:triggers/magic/spells/extinguish
#
# Melodic Staff
# Slot 4 | Song
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_melodic_staff:1b}}}}} run function atrium:triggers/magic/spells/song
# Slot 0 | Inspire
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_melodic_staff:1b}}}}} run function atrium:triggers/magic/spells/inspire
# Slot 8 | Hush
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_melodic_staff:1b}}}}} run function atrium:triggers/magic/spells/hush
#
# Mercurial Staff
# Slot 4 | Catalyze
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_mercurial_staff:1b}}}}} run function atrium:triggers/magic/spells/catalyze
# Slot 0 | Destabilize Item
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_mercurial_staff:1b}}}}} run function atrium:triggers/magic/spells/destabilize_item
# Slot 8 | Fizzle Spell
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_mercurial_staff:1b}}}}} run function atrium:triggers/magic/spells/fizzle_spell
#
# Molten Staff
# Slot 4 | Eruption
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_molten_staff:1b}}}}} run function atrium:triggers/magic/spells/eruption
# Slot 0 | Earth Sigil III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_molten_staff:1b}}}}} run function atrium:triggers/magic/spells/earth_sigil
# Slot 8 | Throw Flames III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_molten_staff:1b}}}}} run function atrium:triggers/magic/spells/throw_flames
#
# Verdant Staff
# Slot 4 | Cure
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_verdant_staff:1b}}}}} run function atrium:triggers/magic/spells/cure
# Slot 0 | Water Sigil III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_verdant_staff:1b}}}}} run function atrium:triggers/magic/spells/water_sigil
# Slot 8 | Nautral Armor III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_verdant_staff:1b}}}}} run function atrium:triggers/magic/spells/natural_armor
#
# Voltaic Staff
# Slot 4 | Thunderbolt
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_voltaic_staff:1b}}}}} run function atrium:triggers/magic/spells/thunderbolt_setup
# Slot 0 | Fire Sigil III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:0b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_voltaic_staff:1b}}}}} run function atrium:triggers/magic/spells/fire_sigil
# Slot 8 | Increase Velocity III
execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:8b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_voltaic_staff:1b}}}}} run function atrium:triggers/magic/spells/increase_velocity
# PATREON: konigin12
# execute if entity @s[scores={charge=160..}] if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power_slot:4b}}},Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{atrium_patron:"konigin12"}}}]} run function atrium:triggers/magic/spells/dance