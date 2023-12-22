# Play sound
execute at @s run playsound minecraft:block.note_block.bass block @s ~ ~ ~ 1 0.75 1
execute at @s run playsound minecraft:block.note_block.bass block @s ~ ~ ~ 1 0.25 1
# Particles!
execute at @s run particle minecraft:happy_villager ~ ~.75 ~ 0.25 0.5 0.25 0.15 25
# Advancement revoke (to allow for retrigger)
advancement revoke @s only atrium:triggers/chests/unlock/mineshaft_quest_rewards
# Tag player
tag @s add atrium_getting_mineshaft_reward
# Remove key in 1 tick (allows for loot table to have a chance to run before the key is removed)
schedule function atrium:triggers/chests/take_key/mineshaft_quest_rewards 1t
