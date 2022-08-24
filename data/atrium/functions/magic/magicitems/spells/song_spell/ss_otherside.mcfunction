# Each disc does a different thing within a 15-block range
#
# Song: Otherside | Duration: 3:15 | First half of the song: 50% chance of Absorption I (per run). Second half: Fire Resistance to all entities. | Particles: Green + Light Blue
execute at @e[tag=song_spell_otherside,scores={charge=0..119}] if predicate atrium:percentage_chances/0.50_p run effect give @e[distance=..15,gamemode=!spectator] minecraft:absorption 2 0 false
execute at @e[tag=song_spell_otherside,scores={charge=120..195}] run effect give @e[distance=..15,gamemode=!spectator] minecraft:fire_resistance 2 0 false
execute at @e[tag=song_spell_otherside] run particle minecraft:note ~ ~1 ~ 0 0 0 0.1 0 normal
execute at @e[tag=song_spell_otherside] run particle minecraft:note ~ ~1 ~ 7 0 0 0.1 0 normal
execute at @e[tag=song_spell_otherside,scores={charge=190..}] run particle minecraft:flame ~ ~0.15 ~ ~ ~ ~ 0 10 normal
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_otherside] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_otherside,scores={charge=195..}] run function atrium:magic/magicitems/spells/song_spell/revert_song_disc_to_normal
execute as @e[tag=song_spell_otherside,scores={charge=195..}] run tag @s remove song_spell_otherside
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_otherside] run schedule function atrium:magic/magicitems/spells/song_spell/ss_otherside 1s