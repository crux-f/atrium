# Teleport the player who rose above the water in The Abyss to the same X + Z coords in The Depths, except at Y=1.
execute as @s at @s in atrium:the_depths run tp @s ~ 1 ~
effect give @s minecraft:levitation 5 0 true
execute at @s positioned ~ ~ ~ unless block ~ ~ ~ minecraft:bedrock run tp @s ~ ~1 ~
# In 1 second, tunnel through the bedrock floor of The Depths (if needed).
tag @s add atrium_abyss_exiting
schedule function atrium:triggers/random_events/abyss_exit_check 10t
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/random_events/ascend_out_of_abyss