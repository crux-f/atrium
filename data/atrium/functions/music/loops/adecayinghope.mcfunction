stopsound @a[tag=event] record
execute at @a[tag=event] run playsound minecraft:atrium.adecayinghope record @p ~ ~ ~ 0.3 1 0.3
execute at @a[tag=event] run tag @p add adecayinghope
schedule function atrium:music/loops/adecayinghope 193s
