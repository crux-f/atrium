# Occult Altar Reset:
#
# Remove items from all three Occult Altar blocks (droppers)
data remove block ~-1 ~ ~-5 Items
data remove block ~ ~ ~-5 Items
data remove block ~1 ~ ~-5 Items
# Particles!
particle dust_color_transition 0.016 0.059 0.016 1 0.639 0.000 0.000 ~ ~1 ~-5 0.5 0.5 1 1 25 normal
# Sound!
playsound minecraft:entity.evoker.cast_spell block @a[distance=..15] ~ ~ ~-5 0.5 0.75 0.1
# achievement!
execute positioned ~ ~ ~-7 run advancement grant @p[distance=..5,gamemode=!spectator] only atrium:magic/lost_in_translation
