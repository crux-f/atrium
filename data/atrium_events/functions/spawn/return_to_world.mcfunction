# Only triggers if someone makes it back to the spawn after completing the sequence (e.g. dying without a bed) or in Admin Shop
execute if entity @s[advancements={atrium:air_start=true}] run function atrium_events:spawn/tp_air_start
execute if entity @s[advancements={atrium:earth_start=true}] run function atrium_events:spawn/tp_earth_start
execute if entity @s[advancements={atrium:fire_start=true}] run function atrium_events:spawn/tp_fire_start
execute if entity @s[advancements={atrium:water_start=true}] run function atrium_events:spawn/tp_water_start