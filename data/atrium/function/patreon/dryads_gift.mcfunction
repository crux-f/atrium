# July 2022 - Dryad's Gift
# All players in forested biomes get night vision at night.
execute if predicate atrium:time_check/is_night as @a at @s if biome ~ ~ ~ #minecraft:is_forest run effect give @s minecraft:night_vision 25 0 true
# Schedule function to run again in 10 seconds.
schedule function atrium:patreon/dryads_gift 10s