# Runs once a second for each player in The Abyss.
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/within_abyss
#
# Give players Darkness if they have Night Vision
execute if entity @s[predicate=atrium:effects/amplifier/if_night_vision_1,tag=!atrium_darkness_immune] run effect give @s minecraft:darkness 3 0 true
execute if entity @s[predicate=atrium:entity/is_in_palace] if entity @e[tag=atrium_eye_of_the_nameless,distance=..100] run effect give @s minecraft:mining_fatigue 2 5 false