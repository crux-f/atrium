# STOP the 2 second repeat script
schedule clear atrium:events/maycoes_tm/maycoes_repeat_2s
# If Maycoes exists, schedule this function to run again in 25 seconds.
execute if entity @e[tag=maycoes] run schedule function atrium:events/maycoes_tm/maycoes_repeat_25s 25s
# Teleport Maycoes to the center point
execute at @e[tag=maycoes] run particle minecraft:flash ~ ~1.5 ~ 0 0 0 1 5
execute at @e[tag=maycoes] run playsound minecraft:entity.enderman.teleport master @a[distance=..50] ~ ~ ~ 1 1.4 0.3
tp @e[tag=maycoes_marker] @e[tag=maycoes_center,limit=1]
# Start the arrow forcefield
function atrium:events/maycoes_tm/maycoes_forcefield
# Remove Maycoes' bow
data merge entity @e[tag=maycoes,limit=1] {HandItems:[{id:"minecraft:air",Count:1b},{}]}
# Begin charging the spell
function atrium:events/maycoes_tm/maycoes_charge
