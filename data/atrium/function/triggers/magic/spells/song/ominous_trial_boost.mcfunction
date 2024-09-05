# Run from ss_precipice
#
# Give 3 random non-player entities nearby Oozing for 15 seconds
execute as @e[type=!minecraft:player,limit=3,sort=random,distance=..15] run tag @s add atrium_song_boost_oozing
#
execute at @e[distance=..15,tag=atrium_song_boost_oozing] run particle minecraft:note ~ ~1.25 ~ 0.5 0 0 0.1 0 normal
effect give @e[distance=..15,tag=atrium_song_boost_oozing] minecraft:oozing 15 0
#
# Remove tag afterwards
tag @e[distance=..15,type=!minecraft:player] remove atrium_song_boost_oozing
#
# Decor particles on disc
particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.25 10 normal