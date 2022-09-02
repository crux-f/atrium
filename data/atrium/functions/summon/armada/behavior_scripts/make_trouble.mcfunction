# Depending on the sabotour's level, spread negative rumors about all online players.
#
# If they don't have a score, set it to 0.
execute unless entity @s[scores={charge=1..}] run scoreboard players set @s charge 0
#
# If their score is 0-6, they have a 25% chance of rewiring a local iron golem during the meeting.
execute if entity @s[scores={charge=0..6}] if predicate atrium:percentage_chances/0.25_p run function atrium:summon/armada/behavior_scripts/rewire_golem
#
# If their score is 7-12, they have a 15% chance of permenantly hijacking a local iron golem.
execute at @s[tag=hidden_sabotour,scores={charge=7..12}] if predicate atrium:percentage_chances/0.15_p run function atrium:summon/armada/behavior_scripts/hijack_golem
#
# If their score is 13+, they have a 10% chance of promoting a Sleeper Agent to a Secret Police.
execute if entity @s[scores={charge=13..}] if predicate atrium:percentage_chances/0.10_p run function atrium:summon/armada/behavior_scripts/promote_sleeper_agent
#
# Add 1 to the charge level of the agent
scoreboard players add @s charge 1