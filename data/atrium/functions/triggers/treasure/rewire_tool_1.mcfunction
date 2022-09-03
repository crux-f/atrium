# Rewire one Haywire Golems
#
# Give player temp tag
tag @s add rewire_temp
#
# Pacify Haywire Golem
execute at @s run data modify entity @e[limit=1,distance=..5,tag=haywire_golem] NoAI set value 1b
execute at @s run data remove entity @e[limit=1,distance=..5,tag=haywire_golem] AngryAt
execute at @s run data modify entity @e[limit=1,distance=..5,tag=haywire_golem] AngerTime set value 0
#
# Set follow range to 0
execute at @s run attribute @e[limit=1,distance=..5,tag=haywire_golem] generic.follow_range base set 0
#
# Schedule part 2
schedule function atrium:triggers/treasure/rewire_tool_2 10t

#test
say rewiring golem 1...