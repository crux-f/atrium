# Tag the nearest giant with slam_setup (already in position from previous function)
tag @e[sort=nearest,limit=1,distance=..7,tag=atrium_giant_body] add slam_setup
#
# Warning sound
playsound minecraft:entity.zoglin.angry hostile @a[distance=..25] ~ ~ ~ 1.5 0.5 0.3
#
# Schedule the actual attack to happen in 1 seconds
schedule function atrium:triggers/special_abilities/giant/g_slam_attack 1s
#
# Reset nearest living player's threat score to 0.
scoreboard players set @p[distance=..7,gamemode=!spectator] giant_threat 0
