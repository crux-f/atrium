# Triggers when a spider with the deep_spider tag hits a player
#
# Gives each evoker with the tag within 50 blocks instant health 1
effect give @s[predicate=atrium:effects/if_poison_1] minecraft:poison 7 1 true
#
# Particles!
execute at @s[predicate=atrium:effects/if_poison_1] run particle dust_color_transition 0.051 0.149 0.027 1 0.376 0.800 0.125 ~ ~1.25 ~ 0.5 0.5 0.5 0.5 50 normal
#
# Sound
execute at @s[predicate=atrium:effects/if_poison_1] run playsound minecraft:entity.turtle.egg_crack master @a[distance=..5] ~ ~ ~ 1 0.1 0.1
#
# Revoke advancement to allow for re-trigger
advancement revoke @s only atrium:triggers/special_abilities/intensify_poison
