# Duration: 10 minutes
#
# Reapply effect if tagged person still isnt wearing armor
effect give @a[tag=natural_armor1,predicate=atrium:if_no_armor,scores={natural_armor=..59}] minecraft:resistance 11 2
# Add 1 to duration counter for each tagged player who isnt wearing armor
scoreboard players add @a[tag=natural_armor1,predicate=atrium:if_no_armor,scores={natural_armor=..59}] natural_armor 1
# IF all tagged players are not wearing armor AND the duration counter is less than 60, run again in 10 seconds.
execute if entity @a[tag=natural_armor1,predicate=atrium:if_no_armor,scores={natural_armor=..59}] run schedule function atrium:magic/magicitems/spells/natural_armor1_repeat 10s
# Remove tag when counter reaches 60
tag @a[tag=natural_armor1,scores={natural_armor=60..}] remove natural_armor1
