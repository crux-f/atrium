stopsound @a[tag=event] record
execute at @a[tag=event] run playsound minecraft:atrium.maycoesbattle record @p ~ ~ ~ 0.3 1 0.3
execute at @a[tag=event] run tag @p add maycoesbattle
schedule function atrium:music/loops/maycoesbattle 198s
