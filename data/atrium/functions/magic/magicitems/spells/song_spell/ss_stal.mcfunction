# Each disc does a different thing within a 15-block range
#
# Song: Stal | Duration: 2:32 | Slow Falling to all entities | Particles: Dark Blue
execute at @e[tag=song_spell_stal] run effect give @e[distance=..15,gamemode=!spectator] minecraft:slow_falling 2 0 false
execute at @e[tag=song_spell_stal] run particle minecraft:note ~ ~1 ~ 6 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_stal] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_stal,scores={charge=152..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_stal,scores={charge=152..}] run tag @s remove song_spell_stal
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_stal] run schedule function atrium:magic/magicitems/spells/song_spell/ss_stal 1s