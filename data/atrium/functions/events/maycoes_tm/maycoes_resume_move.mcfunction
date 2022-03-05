# return Maycoes' bow to his hands
data merge entity @e[tag=maycoes,limit=1] {HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Mirage","color":"gold","italic":false}'},RepairCost:999,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:punch",lvl:3s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F]}
# disable the forcefield
schedule clear atrium:events/maycoes_tm/maycoes_forcefield
# reset the charge counter
scoreboard players set @e[tag=maycoes] maycoes 0
# return him to his teleporting and reacting behavior
function atrium:events/maycoes_tm/maycoes_repeat_2s

