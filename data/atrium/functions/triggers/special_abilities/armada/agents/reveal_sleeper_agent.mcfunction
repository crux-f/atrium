# Revoke for future
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/reveal_assassin_hit
#
# tick up score by 1
scoreboard players add @e[tag=hidden_assassin,distance=..10] event_misc 1
#
# Reveal Particles + Sound(?)
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=armada_disguised,distance=..10] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Reveal Assassins
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_assassin,distance=..10] run function atrium:summon/armada/single/summon_assassin
# Reveal all other nearby agents
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_propagandist,distance=..10] run function atrium:summon/armada/single/summon_propagandist
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_sleeper_agent,distance=..10] run function atrium:summon/armada/single/summon_sleeper_agent
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_sabotour,distance=..10] run function atrium:summon/armada/single/summon_sabotour
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_secret_police,distance=..10] run function atrium:summon/armada/single/summon_secret_police
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] at @e[tag=hidden_informant,distance=..10] run function atrium:summon/armada/single/summon_informant
# Remove 'Disguised' villagers
execute at @s if entity @e[distance=..10,scores={event_misc=3..},type=!player] run tp @e[distance=..10,tag=armada_disguised] ~ ~-400 ~