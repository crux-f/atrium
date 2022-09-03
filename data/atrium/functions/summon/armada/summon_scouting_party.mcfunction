# Summon 1 Scout Leader and 2 other Scouts.
execute at @s run function atrium:summon/armada/single/summon_armada_scout_leader
execute at @s run function atrium:summon/armada/single/summon_armada_scout
execute at @s run function atrium:summon/armada/single/summon_armada_scout
# FX
execute at @s run function atrium:summon/fx/summon_poof
#
# leader set
execute as @e[tag=scouting_party_leader] run data merge entity @s {PatrolLeader:1b,Patrolling:1b}