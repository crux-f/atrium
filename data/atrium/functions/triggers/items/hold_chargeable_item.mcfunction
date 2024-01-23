# Triggered any time a player is holding an item with the 'atrium_chargeable:1b' tag on it.
#
# (Revoke to allow for re-trigger)
advancement revoke @s only atrium:triggers/items/hold_chargeable_item
#
# STAVES - - - 
# Off Hand only
#
# Level 1 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:1b}}]} run function atrium:items/use/chargeable/staves/level_1_staff
# Level 2 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:2b}}]} run function atrium:items/use/chargeable/staves/level_2_staff
# Level 3 Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_staff_lv:3b}}]} unless data entity @s {Inventory:[{Slot:-106b,tag:{atrium_special_staff:1b}}]} run function atrium:items/use/chargeable/staves/level_3_staff
# Special Staves
execute if data entity @s {Inventory:[{Slot:-106b,tag:{atrium_staff:1b,atrium_special_staff:1b}}]} run function atrium:items/use/chargeable/staves/special_staff