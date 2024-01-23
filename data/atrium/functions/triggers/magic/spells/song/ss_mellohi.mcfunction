# Each disc does a different thing within a 15-block range
#
# Song: Mellohi | Duration: 1:38 | Slowness to all entities | Particles: Purple
execute at @e[tag=song_spell_mellohi] run effect give @e[distance=..15,gamemode=!spectator] minecraft:slowness 2 0 false
execute at @e[tag=song_spell_mellohi] run particle minecraft:note ~ ~1 ~ 4.3 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_mellohi] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_mellohi,scores={charge=98..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_mellohi,scores={charge=98..}] run tag @s remove song_spell_mellohi
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_mellohi] run schedule function atrium:triggers/magic/spells/song/ss_mellohi 1s