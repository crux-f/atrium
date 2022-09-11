stopsound @a[tag=inquisitor] record
execute at @a[tag=inquisitor] if entity @e[tag=armada_revealed,distance=..70] run playsound minecraft:atrium.inquisitor record @a[distance=..12] ~ ~ ~ 0.4 1 0.4
execute as @a[tag=inquisitor] at @s unless entity @e[tag=armada_revealed,distance=..70] run tag @s remove inquisitor
# having to do this in tickets bc the song ends weird
execute if entity @a[tag=inquisitor] run schedule function atrium:music/loops/inquisitor 550t
execute unless entity @a[tag=inquisitor] run schedule clear atrium:music/stop_vanilla_music
