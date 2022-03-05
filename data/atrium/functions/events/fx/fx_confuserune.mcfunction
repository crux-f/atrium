execute at @e[tag=confuserune] run particle dust 3 3 3 1 ^1 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=confuserune] run particle dust 3 3 3 1 ^-1 ^ ^ 0 0 0 0 1 normal
execute at @e[tag=confuserune] run particle dust 3 3 3 1 ^ ^ ^1 0 0 0 0 1 normal
execute at @e[tag=confuserune] run particle dust 3 3 3 1 ^ ^ ^-1 0 0 0 0 1 normal
execute at @e[tag=confuserune] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 1 normal
execute at @e[tag=confuserune] run tp @e[tag=confuserune] ~ ~ ~ ~-2 ~0
execute if entity @e[tag=confuserune] run schedule function atrium:events/fx/fx_confuserune 1t
