# Revoke for future
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/reveal_assassin_trade
#
# Reveal Particles + Sound(?)
execute at @s at @e[tag=armada_disguised,distance=..10] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Reveal nearby agents
#
# Reveal Assassins
execute at @s at @e[tag=hidden_assassin,distance=..10] run function atrium:summon/armada/single/summon_assassin
#
# Reveal Others here later
#
# Remove 'Disguised' villagers
execute at @s run tp @e[distance=..10,tag=armada_disguised] ~ ~-400 ~
#
# Remove the unnecessary item
clear @s paper{suspicious_villager:1b}
#
# Music!
execute as @s at @s run function atrium:music/loops/inquisitor_start