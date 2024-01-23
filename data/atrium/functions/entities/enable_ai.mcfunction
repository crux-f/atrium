# Re-enables a mob's AI.
data remove entity @s NoAI
# Reset conditon timer
scoreboard players reset @s atrium_condition_timer
#
# Remove tags
tag @s remove atrium_ai_disabled
tag @s remove atrium_condition