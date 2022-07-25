execute as @a[tag=dreaming,nbt={SleepTimer:1s}] at @s in atrium:meridian run tp @s -5.5 230 -8.5
execute at @a[tag=dreaming] run particle minecraft:end_rod ~ ~1.5 ~ 0.35 0.35 0.35 0 3
execute in atrium:meridian run tag @a[x=-5.5,y=230,z=-8.5,distance=..3] remove dreaming
execute in minecraft:overworld if entity @a[tag=dreaming] unless predicate atrium:if_day run schedule function atrium:magic/magicitems/spells/i_myself_a_dream_repeat 1t
execute in minecraft:overworld if predicate atrium:if_day run tag @a remove dreaming
