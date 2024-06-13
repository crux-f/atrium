# Explosions
execute at @e[tag=atrium_eye_of_the_nameless] run function atrium:entities/mob_spells/eternal_silence_explode
#
# Run again in half a second if there are any markers left without a charge counter
execute at @e[tag=atrium_eye_of_the_nameless] unless entity @e[type=minecraft:marker,nbt={data:{palace_boss_marker:1}},distance=..25,scores={charge=16}] run schedule function atrium:entities/mob_spells/eternal_silence_repeat 10t
#
execute at @e[tag=atrium_eye_of_the_nameless] as @e[type=minecraft:marker,nbt={data:{palace_boss_marker:1}},distance=..25,scores={charge=16..}] run scoreboard players reset @s charge