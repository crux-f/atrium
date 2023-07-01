# Summon 1 Armada Crusader, 3 Armada Looters and 1 Armada Necromancer
# (Looters are always trying to hide)
#
execute at @s run function atrium_events:summon/armada/single/summon_armada_necromancer_looting
execute at @s run function atrium_events:summon/armada/single/summon_armada_looter_leader
execute at @s run function atrium_events:summon/armada/single/summon_armada_looter
execute at @s run function atrium_events:summon/armada/single/summon_armada_looter
# FX
execute at @s run function atrium:summon/summon_poof
#
# leader set
execute as @e[tag=atrium_looting_party_leader] run data merge entity @s {PatrolLeader:1b,Patrolling:1b}