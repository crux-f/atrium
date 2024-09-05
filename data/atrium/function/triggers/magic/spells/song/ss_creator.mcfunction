# Each disc does a different thing within a 15-block range
#
# Song: Creator | Duration: 2:56 | Regeneration I to all entities; 10% chance of Instant Health to all players | Particles: Gold (darkish orange) + Copper Scraping
execute at @e[tag=song_spell_creator] run effect give @e[distance=..15,gamemode=!spectator] minecraft:regeneration 3 0 false
execute at @e[tag=song_spell_creator] if predicate atrium:percentage_chances/0.10_p run effect give @e[distance=..15,type=minecraft:player,gamemode=!spectator] minecraft:instant_health 1 0 false
execute at @e[tag=song_spell_creator] run particle minecraft:note ~ ~1 ~ 1.1 0 0 0.1 0 normal
execute at @e[tag=song_spell_creator] run particle minecraft:scrape ~ ~1 ~ 0.1 0.1 0.1 0.02 5
#
# Add 1 to the 'charge' score of the disc
scoreboard players add @e[tag=song_spell_creator] charge 1
#
# Turn the disc back to a normal item
execute as @e[tag=song_spell_creator,scores={charge=176..}] run function atrium:triggers/magic/spells/song/revert_song_disc_to_normal
execute as @e[tag=song_spell_creator,scores={charge=176..}] run tag @s remove song_spell_creator
#
# If there is still a disc, run again in 1 second.
execute if entity @e[tag=song_spell_creator] run schedule function atrium:triggers/magic/spells/song/ss_creator 1s