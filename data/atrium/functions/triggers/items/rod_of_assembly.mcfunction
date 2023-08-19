# Has a 50% chance of activating when a player places a block that is part of the #atrium:conjurable_building_blocks tag while holding
# the Rod of Assembly in their Off Hand and has at least one of that block left in their Main Hand.
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/rod_of_assembly
#
# If the player has at least 1 level of Experience, give them the block they just placed back.
# Strangely, this triggers after the block is placed but BEFORE the item is removed from your inventory, so increasing it by 0 just allows them to keep it.
item modify entity @s[level=1..] weapon.mainhand atrium:increase_count_by_0
# Subtract 2 points of Experience for each block conjured.
xp add @s[level=1..] -2 points