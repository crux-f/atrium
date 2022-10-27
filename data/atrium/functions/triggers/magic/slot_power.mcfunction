# (Revoke to allow for re-trigger)
advancement revoke @s only atrium:triggers/magic/slot_power
#
# Run the function associated with the combo of the item in your off hand and the selected power slot.
execute if data entity @s {SelectedItem:{tag:{atrium_power:1b}},Inventory:[{Slot:-106b,tag:{atrium_staff:1b}}]} run function atrium:triggers/magic/spell_charge
