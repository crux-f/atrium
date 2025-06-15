# (Revoke to allow for re-trigger)
advancement revoke @s only atrium:triggers/magic/slot_power
#
# Run the function associated with the combo of the item in your off hand and the selected power slot.
#
# All Staves
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_staff:1b}}}}} run function atrium:triggers/magic/spell_charge
# Patreon-only casting items
execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{atrium_power:1b}}},equipment:{offhand:{components:{"minecraft:custom_data":{atrium_patreon_casting_item:1b}}}}} run function atrium:triggers/magic/spell_charge