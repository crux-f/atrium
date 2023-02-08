# Run by a command block in the Admin Shop for people with no home set
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:air_start=true}] in minecraft:overworld run tp @s -11370.5 183 -10886.5
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:earth_start=true}] in minecraft:overworld run tp @s -11507.5 151 -11094.5
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:fire_start=true}] in minecraft:overworld run tp @s -11548.5 152 -10892.5
execute as @p[distance=..3,gamemode=!spectator] if entity @s[advancements={atrium:water_start=true}] in minecraft:overworld run tp @s -11366.5 165 -11064.5
