# Runs once a second for each player in The Abyss.
#
# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/within_abyss
#
# Give players Darkness if they have Night Vision
execute if entity @s[predicate=atrium:effects/amplifier/if_night_vision_1,tag=!atrium_darkness_immune] run effect give @s minecraft:darkness 3 0 true