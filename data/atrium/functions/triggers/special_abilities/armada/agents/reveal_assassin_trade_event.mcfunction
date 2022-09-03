# Revoke for future
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/reveal_assassin_trade_event
#
# Reveal Particles + Sound(?)
execute at @s at @e[tag=event_obj,distance=..3] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0 25
execute at @s at @e[tag=event_obj,distance=..3] run playsound minecraft:entity.pillager.celebrate hostile @a[distance=..5] ~ ~ ~ 1.25 1 0.1
#
# Reveal nearby agents
#
# Reveal Assassin
execute at @s at @e[tag=event_obj,distance=..3] run function atrium:events/quest_events/iteration3/snowfall_4/reveal_unknown_assassin
#
# Remove 'Disguised' villager
execute at @s run tp @e[tag=event_obj,distance=..10] ~ ~-400 ~
#
# Remove the unnecessary item
clear @s paper{suspicious_villager:1b}