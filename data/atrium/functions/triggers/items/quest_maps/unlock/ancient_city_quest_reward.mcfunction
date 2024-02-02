# Play sound
execute at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.5 1.25 0.5
# Particles!
execute at @s run particle minecraft:happy_villager ~ ~.75 ~ 0.25 0.5 0.25 0.15 25
# Advancement revoke (to allow for retrigger)
advancement revoke @s only atrium:triggers/items/quest_maps/ancient_city_quest_complete
# Tag player
tag @s add atrium_getting_ancient_city_reward
# Remove key in 1 tick (allows for loot table to have a chance to run before the key is removed)
schedule function atrium:triggers/items/quest_maps/take_map/ancient_city_quest 1t
