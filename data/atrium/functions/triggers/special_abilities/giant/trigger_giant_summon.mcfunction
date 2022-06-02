# Add 1 to player's giant threat level if there is a giant nearby
execute at @s if entity @e[tag=atrium_giant,distance=..40] run scoreboard players add @s giant_threat 1
#
# NOTE: chances are significantly lower as this function triggers each time any zombie is hit, and activates any time there is a giant within 40 blocks of that event.
#
# If the player's giant threat level is over 8 and there is a giant within 40 blocks, the nearest giant has a 15% chance of summoning a zombie. If the summon triggers, reset player's threat to 0.
execute at @s if entity @s[scores={giant_threat=8..}] at @e[distance=..40,tag=atrium_giant_body] if predicate atrium:percentage_chances/0.15_p run function atrium:triggers/special_abilities/giant/g_summon_setup
#
# If the player's giant threat level is over 12 and there is a giant within 40 blocks, the nearest giant has a 20% chance of throwing something at the player. If the attack triggers, reset player's threat to 0.
execute at @s if entity @s[scores={giant_threat=8..}] at @e[distance=..40,tag=atrium_giant_body] as @s if predicate atrium:percentage_chances/0.20_p run function atrium:triggers/special_abilities/giant/g_throw_setup
#
# Revoke to allow for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/giant/trigger_giant_summon


