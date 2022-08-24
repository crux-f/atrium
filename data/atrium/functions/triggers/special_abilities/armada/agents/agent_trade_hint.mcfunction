# Revoke advancement for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/agent_hint_1
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/agent_hint_2
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/agent_hint_3
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/agent_hint_4
advancement revoke @s only atrium:triggers/special_abilities/armada/agents/agent_hint_5
#
# Give the player who was trading with the agent a hint
tellraw @s {"text":"(Behind the eagerness in their eyes, you sense something darker...)\n(But maybe you're just imagining it.)","italic":true,"color":"gray"}
execute at @s run playsound minecraft:entity.illusioner.ambient player @a[distance=..5] ~ ~ ~ 0.07 1 0.1