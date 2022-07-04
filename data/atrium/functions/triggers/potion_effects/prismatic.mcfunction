# Triggered by other functions to grant the player the custom Prismatic effect. While effected, the player has "Invisibility" and emits rainbow particles while light >7, and has "Night Vision" while light <8.
# Both effects last 30 minutes (ish).
#
# Add tag for timer
tag @s[tag=!prismatic_effect] add prismatic_effect
#
# Run the timer
schedule function atrium:triggers/potion_effects/prismatic_timer 3s
#
# Grant the effects for 5 seconds (refreshes when the timer re-runs this command)
execute at @s if predicate atrium:light/if_light_7_or_less run effect give @s minecraft:night_vision 15 0 true
execute at @s if predicate atrium:light/if_light_8_or_more run effect give @s minecraft:invisibility 15 0 true
#
# Particles!
execute at @s anchored eyes if predicate atrium:light/if_light_8_or_more run particle dust -100 -100 -100 2 ^ ^ ^ 0.5 0.5 0.5 0.1 8 normal
