# Runs every 3 seconds; Bounces the caster upwards with Levitation XIII, and lets them drift back downwards before being bounced again.
# Launch caster with Levitation IX for 1 second!
effect give @a[tag=atrium_dance_caster] levitation 1 8 true
# Gives them Slow Falling I for 4 seconds.
effect give @a[tag=atrium_dance_caster] slow_falling 5 0 false
execute at @a[tag=atrium_dance_caster] anchored feet run particle minecraft:cloud ~ ~ ~ 0 0.5 0 0.1 50
execute at @a[tag=atrium_dance_caster] run playsound minecraft:block.snow.step player @a[distance=..10] ~ ~ ~ 1 2 0.1
#
# After the caster has bounced 10 times, end the spell for that person, and stop running this if there are no casters remaining.
scoreboard players add @a[tag=atrium_dance_caster] atrium_dance_spell 1
tag @a[scores={atrium_dance_spell=11..}] remove atrium_dance_caster
scoreboard players set @a[tag=!atrium_dance_caster] atrium_dance_spell 0
#
execute if entity @a[tag=atrium_dance_caster] run schedule function atrium:triggers/magic/spells/dance_repeat 60t