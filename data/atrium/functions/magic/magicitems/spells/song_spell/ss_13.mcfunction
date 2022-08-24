# Each disc does a different thing within a 15-block range
#
# Song: 13 | Duration: 2:57 | Weakness I to all entities; 25% chance of Mining Fatigue I to all entities (per run) | Particles: Gold (darkish orange)
execute at @e[tag=song_spell_13] run effect give @e[distance=..15,gamemode=!spectator] minecraft:weakness 2 0 false
execute at @e[tag=song_spell_13] if predicate atrium:percentage_chances/0.25_p run effect give @e[distance=..15,gamemode=!spectator] minecraft:mining_fatigue 2 0 false
execute at @e[tag=song_spell_13] run particle minecraft:note ~ ~1 ~ 1.1 0 0 0.1 0 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_13] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_13,scores={charge=177..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_13,scores={charge=177..}] run tag @s remove song_spell_13
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_13] run schedule function atrium:magic/magicitems/spells/song_spell/ss_13 1s