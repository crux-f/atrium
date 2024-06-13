# Run from special_entity_manager
#
scoreboard players add @s atrium_condition_timer 1
# Condition expires when count reaches 0
#
# AI Disabled (Mobs Only)
execute if entity @s[tag=atrium_ai_disabled,scores={atrium_condition_timer=0..}] run function atrium:entities/enable_ai