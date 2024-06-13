# Triggered by extend_next_potion
#
# Particle (singular)
execute anchored eyes run particle minecraft:end_rod ^ ^ ^0.5 0 0 0 0 1
# SFX
playsound minecraft:block.brewing_stand.brew player @a[distance=..5] ~ ~ ~ 0.5 2 0.1
#
# God, this sucks.
# Doubles the duration of the potion they just drank.
#
# Fire Resistance (17:00)
execute if predicate atrium:effects/duration/if_fire_resistance_longer run effect give @s minecraft:fire_resistance 2040 0 false
# Invisibility (17:00)
execute if predicate atrium:effects/duration/if_invisibility_longer run effect give @s minecraft:invisibility 2040 0 false
# Jump Boost (17:00)
execute if predicate atrium:effects/duration/if_jump_boost_longer run effect give @s minecraft:jump_boost 2040 0 false
# Jump Boost III (0:45)
execute if predicate atrium:effects/duration/if_jump_boost_stronger if predicate atrium:effects/amplifier/if_jump_boost_3 run effect give @s minecraft:jump_boost 90 2 false
# Night Vision (17:00)
execute if predicate atrium:effects/duration/if_night_vision_longer run effect give @s minecraft:night_vision 2040 0 false
# Poison (4:00)
execute if predicate atrium:effects/duration/if_poison_longer run effect give @s minecraft:poison 480 0 false
# Poison III (0:22)
execute if predicate atrium:effects/duration/if_poison_stronger if predicate atrium:effects/amplifier/if_poison_3 run effect give @s minecraft:poison 44 2 false
# Regeneration (4:00)
execute if predicate atrium:effects/duration/if_regeneration_longer run effect give @s minecraft:regeneration 480 0 false
# Regeneration III (0:22)
execute if predicate atrium:effects/duration/if_regeneration_stronger if predicate atrium:effects/amplifier/if_regeneration_3 run effect give @s minecraft:regeneration 44 2 false
# Slow Falling (8:00)
execute if predicate atrium:effects/duration/if_slow_falling_longer run effect give @s minecraft:slow_falling 960 0 false
# Speed (17:00)
execute if predicate atrium:effects/duration/if_speed_longer run effect give @s minecraft:speed 2040 0 false
# Speed III (0:45)
execute if predicate atrium:effects/duration/if_speed_stronger if predicate atrium:effects/amplifier/if_speed_3 run effect give @s minecraft:speed 90 2 false
# Strength (17:00)
execute if predicate atrium:effects/duration/if_strength_longer run effect give @s minecraft:strength 2040 0 false
# Strength III (0:45)
execute if predicate atrium:effects/duration/if_strength_stronger if predicate atrium:effects/amplifier/if_strength_3 run effect give @s minecraft:strength 90 2 false
# Water Breathing (17:00)
execute if predicate atrium:effects/duration/if_water_breathing_longer run effect give @s minecraft:water_breathing 2040 0 false
#
# Remove tag at the end
tag @s remove atrium_extend_next_potion
# Remove powerful tag
tag @s remove atrium_extend_next_powerful_potion