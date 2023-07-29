# Generates in the Sanctum "Eyehouse" turret. Teleports the player to one of the nearby teleport points that generate naturally in certain rooms.
tp @p[gamemode=!spectator,distance=..5] @e[limit=1,sort=random,tag=atrium_sanctum_tp,distance=5..80]
execute at @p[gamemode=!spectator,distance=..5] run function atrium:structures/sanctum/fx/lich_tp