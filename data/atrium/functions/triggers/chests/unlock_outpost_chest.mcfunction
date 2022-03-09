# Play sound and remove key
execute at @s run playsound minecraft:block.chain.hit master @a[distance=..25] ~ ~ ~ 1 0.75 0.1
clear @s minecraft:tripwire_hook{outpost_key:1b} 1
# Advancement revoke (to allow for retrigger)
advancement revoke @s only atrium:triggers/chests/unlock_outpost_chest
