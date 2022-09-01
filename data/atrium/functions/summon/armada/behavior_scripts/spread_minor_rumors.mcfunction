# Depending on the propagandist's level, spread negative rumors about all online players.
#
# If they don't have a score, set it to 0.
execute unless entity @s[scores={charge=1..}] run scoreboard players set @s charge 0
#
# If their score is 0-2, generate a negative rumor of 25 about every player.
execute if entity @s[scores={charge=0..2}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:25,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @s[tag=hidden_propagandist,scores={charge=0..2}] Gossips[0].Target set from entity @s UUID
#
# If their score is 3-6, generate a negative rumor of 30 about every player.
execute if entity @s[scores={charge=3..6}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:30,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @s[tag=hidden_propagandist,scores={charge=3..6}] Gossips[0].Target set from entity @s UUID
#
# If their score is 7-12, generate a negative rumor of 40 about every player.
execute if entity @s[scores={charge=7..12}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:40,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @s[tag=hidden_propagandist,scores={charge=7..12}] Gossips[0].Target set from entity @s UUID
#
# If their score is 13-24, generate a negative rumor of 50 about every player.
execute if entity @s[scores={charge=13..24}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:50,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @s[tag=hidden_propagandist,scores={charge=13..24}] Gossips[0].Target set from entity @s UUID
#
# If their score is 25.., generate a negative rumor of 60 about every player.
execute if entity @s[scores={charge=25..}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:60,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @s[tag=hidden_propagandist,scores={charge=25..}] Gossips[0].Target set from entity @s UUID
# Add 1 to the charge level of the agent
scoreboard players add @s charge 1