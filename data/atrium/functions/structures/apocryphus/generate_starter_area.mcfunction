# Create a starter area depending on the biome you find yourself in.
#
execute at @a[tag=atrium_entering_apocryphus] if biome ~ ~ ~ atrium:athenaeum run place jigsaw atrium:dungeons/apocryphus/athenaeum_start atrium:start_point 7 ~ ~1 ~
#
# Adjust player location
execute at @a[tag=atrium_entering_apocryphus] run tp @s ~0.5 ~ ~0.5
# Set player spawn
execute as @a[tag=atrium_entering_apocryphus] run spawnpoint @s ~ ~ ~
# Remove tag
execute as @a[tag=atrium_entering_apocryphus] run tag @s remove atrium_entering_apocryphus