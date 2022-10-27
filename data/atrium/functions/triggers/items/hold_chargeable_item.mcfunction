# Triggered any time a player is holding an item with the 'atrium_chargeable:1b' tag on it.
#
# (Revoke to allow for re-trigger)
advancement revoke @s only atrium:triggers/items/hold_chargeable_item
# If the item in your off hand has been used up, break it.
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,Damage:1561}}]} run function atrium:items/use/chargeable/staves/break_staff
#
# STAVES - - - 
# Off Hand only
#
# Level 1 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:1b}}]} run function atrium:items/use/chargeable/staves/level_1_staff
# Level 2 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:2b}}]} run function atrium:items/use/chargeable/staves/level_2_staff
# Level 3 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:3b}}]} run function atrium:items/use/chargeable/staves/level_3_staff