# If the player has done this before, give them nothing.
function atrium:shrines/shrine_quest/no_answer
#
# If the player hasn't done this before, give them a special message.
execute as @p[gamemode=!spectator,distance=..8] unless entity @s[scores={nameless_anomaly=1}] run function atrium_events:patreon/anomalies/omen_of_secrets/nameless_advice
#
