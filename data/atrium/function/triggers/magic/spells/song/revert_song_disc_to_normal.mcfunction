# If the song has ended, turn the item back to normal.
data remove entity @s Glowing
data remove entity @s NoGravity
schedule clear atrium:triggers/magic/spells/song/disc_cushion_fx
# Remove caster tag if they didn't cast successfully
execute as @a[tag=atrium_song_caster,distance=..30] run tag @s remove atrium_song_caster