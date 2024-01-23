# Each disc does a different thing within a 15-block range
#
# SPECIAL Song: 5 | Duration: 2:58 | Darkness to all players (even in spectator mode...); Wardens get Strength I. | Particles: Sculk
execute at @e[tag=song_spell_5] run effect give @a[distance=..15] minecraft:darkness 5 0 true
execute at @e[tag=song_spell_5] run effect give @e[distance=..15,type=minecraft:warden] minecraft:strength 5 0 false
execute at @e[tag=song_spell_5] run particle minecraft:sculk_charge_pop ~ ~0.5 ~ 0 0 0 0 10
execute at @e[tag=song_spell_5,scores={charge=150..155}] run particle minecraft:sonic_boom ~ ~0.5 ~ 0 0 0 0 10
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_5] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_5,scores={charge=178..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_5,scores={charge=178..}] run tag @s remove song_spell_5
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_5] run schedule function atrium:triggers/magic/spells/song/ss_5 1s