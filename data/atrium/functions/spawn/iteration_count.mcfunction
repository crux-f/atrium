# If the player hasn't joined at all, set their Iteration to 1.
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:atrium_root=false}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:atrium_root=false}] iteration 1
#
# If the player has started before but was NOT on the first iteration, OR if they were on the first iteration but not the second, set their Iteration to 2.
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:air_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:air_start=true}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:earth_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:earth_start=true}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:fire_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:fire_start=true}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:water_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=false,atrium:water_start=true}] iteration 2
#
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:air_start=false}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:air_start=false}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:earth_start=false}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:earth_start=false}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:fire_start=false}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:fire_start=false}] iteration 2
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:water_start=false}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:water_start=false}] iteration 2
#
# If the player DID start on the old server AND was on the second iteration, set their Iteration to 3.
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:air_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:air_start=true}] iteration 3
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:earth_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:earth_start=true}] iteration 3
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:fire_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:fire_start=true}] iteration 3
execute if entity @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:water_start=true}] run scoreboard players set @p[distance=..10,gamemode=!spectator,advancements={atrium:old_server=true,atrium:water_start=true}] iteration 3
