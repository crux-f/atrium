stopsound @a[tag=atrium_ambient_music_halted] record
execute as @a[tag=atrium_ambient_music_halted] at @s run playsound atrium:music.events.oblivion_sect record @s ~ ~ ~ 0.4 1 0.4
# having to do this in tickets bc the song ends weird
schedule function atrium_events:music/loop/oblivion_sect 216s
