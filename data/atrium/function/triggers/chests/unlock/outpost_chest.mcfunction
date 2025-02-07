# Play sound
execute at @s run playsound minecraft:block.vault.insert_item block @a[distance=..10] ~ ~ ~ 1 1.25 0.1
# Advancement revoke (to allow for retrigger)
advancement revoke @s only atrium:triggers/chests/unlock/outpost_chest
# Tag player
tag @s add outpost_key_remove
# Remove key in 1 tick (allows for loot table to have a chance to run before the key is removed)
schedule function atrium:triggers/chests/take_key/outpost_key 1t