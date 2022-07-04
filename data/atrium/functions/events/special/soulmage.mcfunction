execute at @e[tag=soulmage] if entity @p[gamemode=survival,distance=20..100] run function atrium:events/special/soulmage_rise
execute at @e[tag=soulmage] if entity @p[gamemode=survival,distance=..20] run function atrium:events/special/soulmage_unleash
execute if entity @e[tag=soulmage] run schedule function atrium:events/special/soulmage 20s
