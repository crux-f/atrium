# Rewire one Haywire Golem part 1
#
# Give player temp tag.
tag @s add rewire_temp
#
# Set AngerTime low (it will tick to 0).
execute at @s run data modify entity @e[limit=1,distance=..5,tag=haywire_golem] AngerTime set value 2
#
# Set follow range to 0.
execute at @s run attribute @e[limit=1,distance=..5,tag=haywire_golem] generic.follow_range base set 0.0
#
# Schedule part 2 of rewire function.
schedule function atrium:triggers/treasure/rewire_tool_2 50t