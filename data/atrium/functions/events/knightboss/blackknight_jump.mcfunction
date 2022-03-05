data merge entity @e[type=wither_skeleton,limit=1,tag=blackknight] {Motion:[0.0,3.0,0.0]}
execute at @e[tag=blackknight] run playsound minecraft:block.bone_block.fall master @a[distance=..15] ~ ~ ~ 1 0.1 1
schedule function atrium:events/knightboss/blackknight_land 2s
