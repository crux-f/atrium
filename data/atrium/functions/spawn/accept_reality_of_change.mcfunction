# Grant associated memory
execute positioned ~ ~ ~5 if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] run advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] only atrium:air_memory
execute positioned ~ ~ ~5 if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] run advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] only atrium:earth_memory
execute positioned ~ ~ ~5 if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] run advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] only atrium:fire_memory
execute positioned ~ ~ ~5 if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] run advancement grant @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] only atrium:water_memory
# tag players with 'changed'
execute positioned ~ ~ ~5 as @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true,atrium:air_memory=true}] run tag @s add changed
execute positioned ~ ~ ~5 as @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true,atrium:earth_memory=true}] run tag @s add changed
execute positioned ~ ~ ~5 as @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true,atrium:fire_memory=true}] run tag @s add changed
execute positioned ~ ~ ~5 as @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true,atrium:water_memory=true}] run tag @s add changed
# Revoke old start
execute if entity @p[tag=changed] run advancement revoke @p[tag=air_transition] only atrium:air_start
execute if entity @p[tag=changed] run advancement revoke @p[tag=earth_transition] only atrium:earth_start
execute if entity @p[tag=changed] run advancement revoke @p[tag=fire_transition] only atrium:fire_start
execute if entity @p[tag=changed] run advancement revoke @p[tag=water_transition] only atrium:water_start
# teleport to Randomization Tube(tm)
execute in atrium:between_worlds run tp @a[tag=changed] 36734.5 231 -3235.5
