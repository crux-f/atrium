# Depending on the propagandist's level, spread negative rumors about all online players.
#
# If they don't have a score, set it to 0.
execute unless entity @s[scores={charge=1..}] run scoreboard players set @s charge 0
#
# If their score is 0-2, generate a negative rumor of 30 about every player.
execute if entity @s[scores={charge=0..2}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:40,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @e[tag=hidden_propagandist,scores={charge=0..2},limit=1] Gossips[0].Target set from entity @s UUID
#
# If their score is 3-6, generate a negative rumor of 40 about every player.
execute if entity @s[scores={charge=3..6}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:50,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @e[tag=hidden_propagandist,scores={charge=3..6},limit=1] Gossips[0].Target set from entity @s UUID
execute at @s[tag=hidden_propagandist,scores={charge=3..6}] if predicate atrium:percentage_chances/0.10_p run function atrium:summon/armada/single/summon_hidden_sleeper_agent
execute at @s[tag=hidden_propagandist,scores={charge=7..12}] if predicate atrium:percentage_chances/0.05_p run function atrium:summon/armada/single/summon_hidden_propagandist
#
# If their score is 7-12, generate a negative rumor of 50 about every player.
execute if entity @s[scores={charge=7..12}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:60,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @e[tag=hidden_propagandist,scores={charge=7..12},limit=1] Gossips[0].Target set from entity @s UUID
execute at @s[tag=hidden_propagandist,scores={charge=7..12}] if predicate atrium:percentage_chances/0.15_p run function atrium:summon/armada/single/summon_hidden_sleeper_agent
execute at @s[tag=hidden_propagandist,scores={charge=7..12}] if predicate atrium:percentage_chances/0.07_p run function atrium:summon/armada/single/summon_hidden_propagandist
execute at @s[tag=hidden_propagandist,scores={charge=7..12}] if predicate atrium:percentage_chances/0.10_p run function atrium:summon/armada/single/summon_hidden_assassin
#
# If their score is 13-24, generate a negative rumor of 60 about every player.
execute if entity @s[scores={charge=13..24}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:70,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @e[tag=hidden_propagandist,scores={charge=13..24},limit=1] Gossips[0].Target set from entity @s UUID
execute at @s[tag=hidden_propagandist,scores={charge=13..24}] if predicate atrium:percentage_chances/0.20_p run function atrium:summon/armada/single/summon_hidden_sleeper_agent
execute at @s[tag=hidden_propagandist,scores={charge=13..24}] if predicate atrium:percentage_chances/0.10_p run function atrium:summon/armada/single/summon_hidden_propagandist
execute at @s[tag=hidden_propagandist,scores={charge=13..24}] if predicate atrium:percentage_chances/0.10_p run function atrium:summon/armada/single/summon_hidden_saboteur
#
# If their score is 25.., generate a negative rumor of 90 about every player.
execute if entity @s[scores={charge=25..}] run data merge entity @s {Gossips:[{Type:"minor_negative",Value:90,Target:[I;110787060,1156138790,-1514210135,238594805]}]}
execute as @a run data modify entity @e[tag=hidden_propagandist,scores={charge=25..},limit=1] Gossips[0].Target set from entity @s UUID
execute at @s[tag=hidden_propagandist,scores={charge=25..}] if predicate atrium:percentage_chances/0.20_p run function atrium:summon/armada/single/summon_hidden_sleeper_agent
execute at @s[tag=hidden_propagandist,scores={charge=25..}] if predicate atrium:percentage_chances/0.30_p run function atrium:summon/armada/single/summon_hidden_secret_police
# Add 1 to the charge level of the agent
scoreboard players add @s charge 1
