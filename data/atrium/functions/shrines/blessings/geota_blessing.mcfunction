# Particles + Sound effect
execute at @s run particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 30 force
execute at @s run playsound atrium:favor.geota neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s geota_favor 1
execute unless entity @s[scores={geota_favor=31..}] run scoreboard players add @s geota_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={geota_favor=1..9}] run effect give @s minecraft:haste 600 0
execute if entity @s[scores={geota_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"This shrine has an unwavering aura. You feel emboldened.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @s[scores={geota_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={geota_favor=10..19}] run effect give @s minecraft:haste 1200 0
execute if entity @s[scores={geota_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"You're ready. Whatever lies below, you know you'll find it.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @s[scores={geota_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={geota_favor=20..29}] run effect give @s minecraft:haste 2400 0
execute if entity @s[scores={geota_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"She is proud of you, you're sure of it. The earth hides so much beauty, and only you can uncover it.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @s[scores={geota_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={geota_favor=30}] run effect give @s minecraft:haste 2400 0
execute if entity @s[scores={geota_favor=30}] run effect give @s minecraft:jump_boost 2400 0
execute if entity @s[scores={geota_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_green"},{"text":"You are unstoppable. Earth gives way before you out of respect.","italic":true,"color":"dark_green"},{"text":" \u06e9","color":"dark_green"}]
execute if entity @s[scores={geota_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={geota_favor=10}] run advancement grant @s only atrium:belief/geota_10
execute if entity @s[scores={geota_favor=20}] run advancement grant @s only atrium:belief/geota_20
execute if entity @s[scores={geota_favor=30}] run advancement grant @s only atrium:belief/geota_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Geota is now [","color":"gray"},{"score":{"name":"@s","objective":"geota_favor"},"bold":true,"color":"dark_green"},{"text":"])","color":"gray"}]