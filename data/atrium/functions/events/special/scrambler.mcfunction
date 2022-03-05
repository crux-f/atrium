execute at @e[tag=scrambler] run execute if entity @p[distance=..20,gamemode=survival] run function atrium:events/special/scrambler_switch1
execute at @e[tag=scrambler] run execute if entity @p[distance=20..70,gamemode=survival] run function atrium:events/special/scrambler_confusion1
kill @e[tag=witchsigil,limit=1,sort=random]
execute if entity @e[tag=scrambler] at @e[tag=scrambler] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["witchsigil"]}
function atrium:events/fx/fx_witchsigil
execute if entity @e[tag=scrambler] run schedule function atrium:events/special/scrambler 15s

