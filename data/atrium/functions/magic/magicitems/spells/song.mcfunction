# Spell cleanup
execute as @s run function atrium:magic/magicitems/spell_cast_complete
#
# Summon the disc used to cast the spell as a glowing magical disc that can't be picked up for the duration of the song.
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_5"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3560,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_5"],Item:{id:"minecraft:disc_fragment_5",Count:9b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_11"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:1420,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_11"],Item:{id:"minecraft:music_disc_11",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_13"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3540,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_13"],Item:{id:"minecraft:music_disc_13",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_blocks"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:6860,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_blocks"],Item:{id:"minecraft:music_disc_blocks",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_cat"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3720,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_cat"],Item:{id:"minecraft:music_disc_cat",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_chirp"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3740,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_chirp"],Item:{id:"minecraft:music_disc_chirp",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_far"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3840,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_far"],Item:{id:"minecraft:music_disc_far",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_mall"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3960,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_mall"],Item:{id:"minecraft:music_disc_mall",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_mellohi"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:1960,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_mellohi"],Item:{id:"minecraft:music_disc_mellohi",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_otherside"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3900,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_otherside"],Item:{id:"minecraft:music_disc_otherside",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_pigstep"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:2960,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_pigstep"],Item:{id:"minecraft:music_disc_pigstep",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_stal"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3040,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_stal"],Item:{id:"minecraft:music_disc_stal",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_strad"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:3780,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_strad"],Item:{id:"minecraft:music_disc_strad",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_wait"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:4680,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_wait"],Item:{id:"minecraft:music_disc_wait",Count:1b}}
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_ward"}}] run summon item ~ ~ ~ {NoGravity:1b,Glowing:1b,Age:-10000,Health:25,PickupDelay:5000,Motion:[0.0,0.1,0.0],Tags:["floating_disc","song_spell_ward"],Item:{id:"minecraft:music_disc_ward",Count:1b}}
#
# If the disc was 5, play the item breaking sound.
execute at @s[nbt={SelectedItem:{id:"minecraft:music_disc_5"}}] run playsound minecraft:item.shield.break player @a[distance=..15] ~ ~ ~ 1 2 0.1
#
# If the disc was Strad, give a funny meme advancement
execute if entity @s[nbt={SelectedItem:{id:"minecraft:music_disc_strad"}}] run advancement grant @s only atrium:magic/curse_of_strad
#
# Remove 1 Music Disc (casting component cost) from your off hand (luckily discs do not stack so this is fine)
item replace entity @s weapon.mainhand with air
#
# Start the Song
execute at @e[tag=song_spell_5] run playsound minecraft:music_disc.5 player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_11] run playsound minecraft:music_disc.11 player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_13] run playsound minecraft:music_disc.13 player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_blocks] run playsound minecraft:music_disc.blocks player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_cat] run playsound minecraft:music_disc.cat player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_chirp] run playsound minecraft:music_disc.chirp player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_far] run playsound minecraft:music_disc.far player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_mall] run playsound minecraft:music_disc.mall player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_mellohi] run playsound minecraft:music_disc.mellohi player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_otherside] run playsound minecraft:music_disc.otherside player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_pigstep] run playsound minecraft:music_disc.pigstep player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_stal] run playsound minecraft:music_disc.stal player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_strad] run playsound minecraft:music_disc.strad player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_wait] run playsound minecraft:music_disc.wait player @a[distance=..15] ~ ~ ~ 1 1 0.1
execute at @e[tag=song_spell_ward] run playsound minecraft:music_disc.ward player @a[distance=..15] ~ ~ ~ 1 1 0.1
#
# Start the repeat script (one for each song)
execute if entity @e[tag=song_spell_5] run function atrium:magic/magicitems/spells/song_spell/ss_5
execute if entity @e[tag=song_spell_11] run function atrium:magic/magicitems/spells/song_spell/ss_11
execute if entity @e[tag=song_spell_13] run function atrium:magic/magicitems/spells/song_spell/ss_13
execute if entity @e[tag=song_spell_blocks] run function atrium:magic/magicitems/spells/song_spell/ss_blocks
execute if entity @e[tag=song_spell_cat] run function atrium:magic/magicitems/spells/song_spell/ss_cat
execute if entity @e[tag=song_spell_chirp] run function atrium:magic/magicitems/spells/song_spell/ss_chirp
execute if entity @e[tag=song_spell_far] run function atrium:magic/magicitems/spells/song_spell/ss_far
execute if entity @e[tag=song_spell_mall] run function atrium:magic/magicitems/spells/song_spell/ss_mall
execute if entity @e[tag=song_spell_mellohi] run function atrium:magic/magicitems/spells/song_spell/ss_mellohi
execute if entity @e[tag=song_spell_otherside] run function atrium:magic/magicitems/spells/song_spell/ss_otherside
execute if entity @e[tag=song_spell_pigstep] run function atrium:magic/magicitems/spells/song_spell/ss_pigstep
execute if entity @e[tag=song_spell_stal] run function atrium:magic/magicitems/spells/song_spell/ss_stal
execute if entity @e[tag=song_spell_strad] run function atrium:magic/magicitems/spells/song_spell/ss_strad
execute if entity @e[tag=song_spell_wait] run function atrium:magic/magicitems/spells/song_spell/ss_wait
execute if entity @e[tag=song_spell_ward] run function atrium:magic/magicitems/spells/song_spell/ss_ward
#
# Other fx
function atrium:magic/magicitems/spells/song_spell/disc_cushion_fx