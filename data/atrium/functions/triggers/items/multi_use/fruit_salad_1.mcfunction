# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/multi_use/fruit_salad_1
#
# Need to do this 1 tick later bc the bowl doesn't exist until then
tag @s add atrium_eating_fruit_salad
tag @s add atrium_salad_used_1
#
# Run the rest 1 tick later
schedule function atrium:triggers/items/multi_use/fruit_salad_changed 1t