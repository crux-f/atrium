# Tag the nearest giant with slam_setup (already in position from previous function)
tag @e[sort=nearest,limit=1,distance=..40,tag=atrium_giant_body] add summon_setup
#
# Warning sound
playsound minecraft:entity.zoglin.attack hostile @a[distance=..50] ~ ~ ~ 1.2 0.5 0.4
#
# Schedule the actual attack to happen in 1 seconds
schedule function atrium:triggers/special_abilities/giant/g_summon_zombie 1s
#
# Reset nearest living player's threat score to 0.
scoreboard players set @p[distance=..40,gamemode=!spectator] giant_threat 0
