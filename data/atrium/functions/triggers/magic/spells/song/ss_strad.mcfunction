# Each disc does a different thing within a 15-block range
#
# Song: Strad | Duration: 3:09 | All entities get Weakness I. | Particles: Off-Green??? It's a white disc what do you want from me
execute at @e[tag=song_spell_strad] run effect give @e[distance=..15,gamemode=!spectator] minecraft:weakness 2 0 false
execute at @e[tag=song_spell_strad] run particle minecraft:note ~ ~1 ~ 0.5 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_strad] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_strad,scores={charge=189..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_strad,scores={charge=189..}] run tag @s remove song_spell_strad
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_strad] run schedule function atrium:triggers/magic/spells/song/ss_strad 1s