# Run from triggers/potions/drink_any_potion.
#
# As this is scheduled, I need to specify that it only works on someone who has the tag AND just finished drinking a potion. So...
execute as @a[tag=atrium_extend_next_potion,predicate=atrium:effects/finished_drinking_potion] at @s run function atrium:triggers/magic/spells/extend_duration_success
execute as @a[tag=atrium_extend_next_potion,tag=atrium_extend_next_powerful_potion,predicate=atrium:effects/finished_drinking_powerful_potion] at @s run function atrium:triggers/magic/spells/extend_duration_powerful