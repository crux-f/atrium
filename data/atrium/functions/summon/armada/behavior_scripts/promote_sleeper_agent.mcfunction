# Promote Sleeper Agent
#
# Tag a random sleeper agent at the meeting.
tag @e[limit=1,tag=hidden_sleeper_agent,sort=random,distance=..20] add promoted
#
# Reveal Particles + Sound(?)
execute at @s at @e[tag=promoted,distance=..20] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Summon new secret police
execute at @s at @e[tag=promoted,distance=..20] run function atrium:summon/armada/single/summon_hidden_secret_police
#
# Remove 'Disguised' villagers
execute at @s run tp @e[distance=..20,tag=promoted] ~ ~-400 ~