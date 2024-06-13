# Play sound
execute at @s run playsound minecraft:block.chain.hit master @a[distance=..25] ~ ~ ~ 1 0.75 0.1
# Advancement revoke (to allow for retrigger)
advancement revoke @s only atrium:triggers/chests/unlock/village_armorer_chest
# Tag player
tag @s add village_armorer_key_remove
# Remove key in 1 tick (allows for loot table to have a chance to run before the key is removed)
schedule function atrium:triggers/chests/take_key/village_armorer_key 1t
