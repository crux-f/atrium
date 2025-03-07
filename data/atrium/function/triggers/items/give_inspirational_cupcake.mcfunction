# Activated by a Master level villager picking up a Inspirational Cupcake
#
# tag player
tag @s add atrium_inspiring_villager
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/give_inspirational_cupcake
#
# Run the main thing in 2 seconds.
schedule function atrium:triggers/items/activate_inspirational_cupcake 2s