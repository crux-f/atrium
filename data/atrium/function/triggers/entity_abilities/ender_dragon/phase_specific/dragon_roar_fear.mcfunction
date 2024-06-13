# fear effects + end atrium_dragon_ward_timer
kill @e[tag=atrium_dragon_ward_timer]
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..50] ~ ~ ~ 2 0.5 0.1
# Dark flash to show its fear
effect give @a[distance=..15,gamemode=!spectator] minecraft:darkness 5 0 true
# Weakness 2 for 60 seconds
effect give @a[distance=..15,gamemode=!spectator] minecraft:weakness 120 1 false