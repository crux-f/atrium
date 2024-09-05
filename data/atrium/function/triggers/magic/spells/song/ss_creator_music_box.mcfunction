# Each disc does a different thing within a 15-block range
#
# Song: Creator (Music Box) | Duration: 1:13 | Regeneration I to all entities | Particles: Gold (darkish orange)
execute at @e[tag=song_spell_creator_music_box] run effect give @e[distance=..15,gamemode=!spectator] minecraft:regeneration 3 0 false
execute at @e[tag=song_spell_creator_music_box] run particle minecraft:note ~ ~1 ~ 1.1 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_creator_music_box] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_creator_music_box,scores={charge=73..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_creator_music_box,scores={charge=73..}] run tag @s remove song_spell_creator_music_box
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_creator_music_box] run schedule function atrium:triggers/magic/spells/song/ss_creator_music_box 1s