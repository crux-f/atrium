# If you have an elemental attunement, take you to the alternate choice.
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=true}] in atrium:between_worlds run tp @s 36734.5 230 -3225.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:earth_start=true}] in atrium:between_worlds run tp @s 36734.5 230 -3225.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:fire_start=true}] in atrium:between_worlds run tp @s 36734.5 230 -3225.5
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:water_start=true}] in atrium:between_worlds run tp @s 36734.5 230 -3225.5
#
# Sfx
execute in atrium:between_worlds positioned 36734.5 230 -3225.5 run particle minecraft:flash ~ ~2 ~ 0 0 0 0 5
execute in atrium:between_worlds positioned 36734.5 230 -3225.5 run playsound minecraft:block.end_portal.spawn master @p ~ ~ ~ 1 0.8 0.2
#
# If you don't, take you to the third and final question.
execute as @p[distance=..10,gamemode=!spectator,advancements={atrium:air_start=false,atrium:earth_start=false,atrium:fire_start=false,atrium:water_start=false}] in atrium:between_worlds run tp @s 36734.5 230 -3245.5
