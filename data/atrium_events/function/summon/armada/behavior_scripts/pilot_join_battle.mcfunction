# Run from the disembark scripts
# After everything related to piloting is done, the pilot will join the fight or patrols
tag @s remove atrium_disembarking_airship
data remove entity @s NoAI
data modify entity @s Patrolling set value true
data modify entity @s CanJoinRaid set value true
# For some reason its original health isn't being saved in the structure. not a problem here but definitely something to keep in mind
attribute @s max_health base set 50
data modify entity @s Health set value 50