# Add 1 to player's giant threat level
scoreboard players add @s giant_threat 1
#
# If the player's giant threat level is over 2 and there is a giant within 7 blocks, the nearest giant has a 25% chance of performing a Slam attack. If the attack triggers, reset player's threat to 0.
execute at @s if entity @s[scores={giant_threat=2..}] at @e[distance=..7,tag=atrium_giant_body] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/special_abilities/giant/g_slam_setup
#
# If the player's giant threat level is over 4 and there is a giant within 7 blocks, the nearest giant has an additional 25% chance of performing a Slam attack. If the attack triggers, reset player's threat to 0.
execute at @s if entity @s[scores={giant_threat=4..}] at @e[distance=..7,tag=atrium_giant_body] if predicate atrium:percentage_chances/0.25_p run function atrium:triggers/special_abilities/giant/g_slam_setup
#
# If the player's giant threat level is over 7 and there is a giant within 40 blocks, the nearest giant has a 50% chance of throwing something at the player. If the attack triggers, reset player's threat to 0.
# execute at @s if entity @s[scores={giant_threat=7..}] at @e[distance=..40,tag=atrium_giant_body] if predicate atrium:percentage_chances/0.50_p run function atrium:triggers/special_abilities/giant/g_throw_setup
#
# If the player's giant threat level is over 10 and there is a giant within 40 blocks, the nearest giant has a 50% chance of doing the other move set. If the attack triggers, reset player's threat to 0.
# execute at @s if entity @s[scores={giant_threat=10..}] at @e[distance=..40,tag=atrium_giant_body] if predicate atrium:percentage_chances/0.50_p run function atrium:triggers/special_abilities/giant/trigger_giant_summon
#
# Revoke to allow for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/giant/trigger_giant_attack


