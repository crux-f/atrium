# Triggered by extend_next_potion
#
#
#
# Particle (singular)
execute anchored eyes run particle minecraft:end_rod ^ ^ ^0.5 0 0 0 0 1
# SFX
playsound minecraft:block.brewing_stand.brew player @a[distance=..5] ~ ~ ~ 0.5 2 0.1
#
# God, this sucks.
# Doubles the duration of the potion they just drank.
#
# Fire Resistance (8:00)
execute if predicate atrium:effects/duration/if_fire_resistance_long run effect give @s minecraft:fire_resistance 960 0 false
# Fire Resistance (3:00)
execute if predicate atrium:effects/duration/if_fire_resistance_short run effect give @s minecraft:fire_resistance 360 0 false
# Invisibility (8:00)
execute if predicate atrium:effects/duration/if_invisibility_long run effect give @s minecraft:invisibility 960 0 false
# Invisibility (3:00)
execute if predicate atrium:effects/duration/if_invisibility_short run effect give @s minecraft:invisibility 360 0 false
# Jump Boost (8:00)
execute if predicate atrium:effects/duration/if_jump_boost_long run effect give @s minecraft:jump_boost 960 0 false
# Jump Boost (3:00)
execute if predicate atrium:effects/duration/if_jump_boost_short run effect give @s minecraft:jump_boost 360 0 false
# Jump Boost II (1:30)
execute if predicate atrium:effects/duration/if_jump_boost_strong if predicate atrium:effects/amplifier/if_jump_boost_2 run effect give @s minecraft:jump_boost 180 1 false
# Luck (5:00)
execute if predicate atrium:effects/duration/if_luck run effect give @s minecraft:luck 600 0 false
# Night Vision (8:00)
execute if predicate atrium:effects/duration/if_night_vision_long run effect give @s minecraft:night_vision 960 0 false
# Night Vision (3:00)
execute if predicate atrium:effects/duration/if_night_vision_short run effect give @s minecraft:night_vision 360 0 false
# Poison (1:30)
execute if predicate atrium:effects/duration/if_poison_long run effect give @s minecraft:poison 180 0 false
# Poison (0:45)
execute if predicate atrium:effects/duration/if_poison_short run effect give @s minecraft:poison 90 0 false
# Poison II (0:21.6) - why point 6
execute if predicate atrium:effects/duration/if_poison_strong if predicate atrium:effects/amplifier/if_poison_2 run effect give @s minecraft:poison 43 1 false
# Regeneration (1:30)
execute if predicate atrium:effects/duration/if_regeneration_long run effect give @s minecraft:regeneration 180 0 false
# Regeneration (0:45)
execute if predicate atrium:effects/duration/if_regeneration_short run effect give @s minecraft:regeneration 90 0 false
# Regeneration II (0:22.5) - why point 5
execute if predicate atrium:effects/duration/if_regeneration_strong if predicate atrium:effects/amplifier/if_regeneration_2 run effect give @s minecraft:regeneration 44 1 false
# Slow Falling (4:00)
execute if predicate atrium:effects/duration/if_slow_falling_long run effect give @s minecraft:slow_falling 480 0 false
# Slow Falling (1:30)
execute if predicate atrium:effects/duration/if_slow_falling_short run effect give @s minecraft:slow_falling 180 0 false
# Slowness (4:00)
execute if predicate atrium:effects/duration/if_slowness_long run effect give @s minecraft:slowness 480 0 false
# Slowness (1:30)
execute if predicate atrium:effects/duration/if_slowness_short run effect give @s minecraft:slowness 180 0 false
# Slowness IV (0:20) - why does it scale this way
execute if predicate atrium:effects/duration/if_slowness_strong if predicate atrium:effects/amplifier/if_slowness_4 run effect give @s minecraft:slowness 40 3 false
# Speed (8:00)
execute if predicate atrium:effects/duration/if_speed_long run effect give @s minecraft:speed 960 0 false
# Speed (3:00)
execute if predicate atrium:effects/duration/if_speed_short run effect give @s minecraft:speed 360 0 false
# Speed II (1:30)
execute if predicate atrium:effects/duration/if_speed_strong if predicate atrium:effects/amplifier/if_speed_2 run effect give @s minecraft:speed 180 1 false
# Strength (8:00)
execute if predicate atrium:effects/duration/if_strength_long run effect give @s minecraft:strength 960 0 false
# Strength (3:00)
execute if predicate atrium:effects/duration/if_strength_short run effect give @s minecraft:strength 360 0 false
# Strength II (1:30)
execute if predicate atrium:effects/duration/if_strength_strong if predicate atrium:effects/amplifier/if_strength_2 run effect give @s minecraft:strength 180 1 false
# Turtle Master (0:40)
execute if predicate atrium:effects/duration/if_turtle_effects_long run effect give @s minecraft:resistance 80 2 false
execute if predicate atrium:effects/duration/if_turtle_effects_long run effect give @s minecraft:slowness 80 3 false
# Turtle Master (0:20)
execute if predicate atrium:effects/duration/if_turtle_effects_short run effect give @s minecraft:resistance 40 2 false
execute if predicate atrium:effects/duration/if_turtle_effects_short run effect give @s minecraft:slowness 40 3 false
# Turtle Master II (0:20)
execute if predicate atrium:effects/duration/if_turtle_effects_short if predicate atrium:effects/amplifier/if_resistance_4 run effect give @s minecraft:resistance 40 3 false
execute if predicate atrium:effects/duration/if_turtle_effects_short if predicate atrium:effects/amplifier/if_slowness_6 run effect give @s minecraft:slowness 40 5 false
# Water Breathing (8:00)
execute if predicate atrium:effects/duration/if_water_breathing_long run effect give @s minecraft:water_breathing 960 0 false
# Water Breathing (3:00)
execute if predicate atrium:effects/duration/if_water_breathing_short run effect give @s minecraft:water_breathing 360 0 false
# Weakness (4:00)
execute if predicate atrium:effects/duration/if_weakness_long run effect give @s minecraft:weakness 480 0 false
# Weakness (1:30)
execute if predicate atrium:effects/duration/if_weakness_short run effect give @s minecraft:weakness 180 0 false
#
# Remove tag at the end
tag @s remove atrium_extend_next_potion
