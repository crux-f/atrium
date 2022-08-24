# Each disc does a different thing within a 15-block range
#
# Song: 11 | Duration: 1:11 | 25% chance of Wither I to all entities | Particles: Indigo
execute at @e[tag=song_spell_11] if predicate atrium:percentage_chances/0.25_p run effect give @e[distance=..15,gamemode=!spectator] minecraft:wither 2 0 false
execute at @e[tag=song_spell_11] run particle minecraft:note ~ ~1 ~ 5 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_11] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_11,scores={charge=71..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_11,scores={charge=71..}] run tag @s remove song_spell_11
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_11] run schedule function atrium:magic/magicitems/spells/song_spell/ss_11 1s