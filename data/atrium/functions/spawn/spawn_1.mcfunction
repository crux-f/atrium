# If you've never spawned before AND are from the previous server, revoke achievements from previous server.
execute if entity @p[distance=..3,gamemode=!spectator,advancements={atrium:atrium_root=true}] run function atrium:spawn/advancement_revoke
#
# PATREON: If you've never spawned before, give you a random FLOTSAM item.
# execute if entity @p[distance=..3,gamemode=!spectator,advancements={atrium:water_start=false,atrium:earth_start=false,atrium:fire_start=false,atrium:air_start=false}] run loot give @p[distance=..3,gamemode=!spectator] loot atrium:gift_of_flotsam
# If you've made it here, take you into the spawn area.
execute as @p[distance=..3,gamemode=!spectator] in atrium:between_worlds run tp 36734.5 200 -3213.5
