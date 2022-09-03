# Activate Hijacked Golem
#
# Tag an golem if a player is nearby
execute at @s[tag=hidden_saboteur,scores={charge=7..12}] run tag @e[limit=1,distance=..70,sort=random,type=minecraft:iron_golem] add hijacked_golem
#
# Join team aramada
execute as @e[limit=1,distance=..70,sort=random,tag=hijacked_golem] run team join armada
#
# Apply relevant particles to golem (illusioner stuff maybe?)
# 
