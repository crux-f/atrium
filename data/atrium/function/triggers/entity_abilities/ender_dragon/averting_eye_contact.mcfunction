# Triggered when a player looks at an Averting Eye.
# not to be confused with the item, this is a special entity that spawns in the area of the ender dragon fight.
#
# SFX
playsound minecraft:entity.ender_eye.death player @a[distance=..3] ~ ~ ~ 0.5 2 0.1
# Particles
execute anchored eyes run particle minecraft:reverse_portal ^ ^ ^1 0.1 0.1 0.1 0.01 5 normal
# Instantly redirect the player's gaze to look at the nearest Enderman.
execute anchored eyes run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,type=minecraft:enderman] eyes
#
# Team join for visual effect only 
team join atrium_glow_black @e[tag=atrium_averting_eye]