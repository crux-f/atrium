# Runs once every 3 seconds as long as someone still has the effect.
execute if entity @a[tag=prismatic_effect] run schedule function atrium:triggers/potion_effects/prismatic_timer 3s
#
# If a player has a score of 10 or higher, remove their tag.
execute as @a[tag=prismatic_effect,scores={prismatic=600..}] run tag @s remove prismatic_effect
#
# Runs the main function 
execute as @a[tag=prismatic_effect] run function atrium:triggers/potion_effects/prismatic
#
# Ticks each affected player's score up by 1.
scoreboard players add @a[tag=prismatic_effect] prismatic 1
