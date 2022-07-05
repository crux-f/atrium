# Runs every 3 seconds; Bounces the caster upwards with Levitation XIII, and lets them drift back downwards before being bounced again.
# Launch caster with Levitation IX for 1 second!
effect give @e[tag=dance_caster] levitation 1 8 true
# Gives them Slow Falling I for 4 seconds.
effect give @e[tag=dance_caster] slow_falling 5 0 false
execute at @e[tag=dance_caster] anchored feet run particle minecraft:cloud ~ ~ ~ 0 0.5 0 0.1 50
execute at @e[tag=dance_caster] run playsound minecraft:block.snow.step player @a[distance=..10] ~ ~ ~ 1 2 0.1
#
# After the caster has bounced 10 times, end the spell for that person, and stop running this if there are no casters remaining.
scoreboard players add @a[tag=dance_caster] dance_bounces 1
tag @a[scores={dance_bounces=11..}] remove dance_caster
scoreboard players set @a[tag=!dance_caster] dance_bounces 0
#
execute if entity @a[tag=dance_caster] run schedule function atrium:magic/magicitems/spells/dance_repeat 60t