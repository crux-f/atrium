# Run by a command block in the Admin Shop for people with no home set
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:air_start=true}] in minecraft:overworld run tp @s -548.5 218 -2.5 facing -529.5 236 -2.5
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:earth_start=true}] in minecraft:overworld run tp @s 518.5 87 10.5 facing 510.5 94 18.5
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:fire_start=true}] in minecraft:overworld run tp @s -89.5 67 -472 facing -89.5 60 -472
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:water_start=true}] in minecraft:overworld run tp @s 53 60 260 facing 53 62 264
