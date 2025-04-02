# Particles + Sound effect
particle minecraft:glow ~ ~ ~ 0.1 0.25 0.1 0.1 15 normal
playsound atrium:favor.nameless neutral @a[distance=..10] ~ ~ ~ 1 1 0.1
# Add Favor for this god
scoreboard players add @s nameless_favor 1
execute unless entity @s[scores={nameless_favor=31..}] run scoreboard players add @s nameless_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_ancient
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={nameless_favor=1..9}] run effect give @s minecraft:conduit_power 300 0
execute if entity @s[scores={nameless_favor=1..9}] run effect give @s minecraft:darkness 300 0
execute if entity @s[scores={nameless_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_blue"},{"text":"You stop breathing. It doesn't matter.","italic":true,"color":"dark_blue"},{"text":" \u06e9","color":"dark_blue"}]
execute if entity @s[scores={nameless_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={nameless_favor=10..19}] run effect give @s minecraft:conduit_power 450 0
execute if entity @s[scores={nameless_favor=10..19}] run effect give @s minecraft:darkness 450 0
execute if entity @s[scores={nameless_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_blue"},{"text":"Everything feels slow. You're having trouble thinking.","italic":true,"color":"dark_blue"},{"text":" \u06e9","color":"dark_blue"}]
execute if entity @s[scores={nameless_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={nameless_favor=20..29}] run effect give @s minecraft:conduit_power 900 0
execute if entity @s[scores={nameless_favor=20..29}] run effect give @s minecraft:darkness 900 0
execute if entity @s[scores={nameless_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_blue"},{"text":"You feel numb.","italic":true,"color":"dark_blue"},{"text":" \u06e9","color":"dark_blue"}]
execute if entity @s[scores={nameless_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={nameless_favor=30}] run effect give @s minecraft:conduit_power 1700 0
execute if entity @s[scores={nameless_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"dark_blue"},{"text":"As if you could imagine doing anything else.","italic":true,"color":"dark_blue"},{"text":" \u06e9","color":"dark_blue"}]
execute if entity @s[scores={nameless_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={nameless_favor=10}] run advancement grant @s only atrium:belief/nameless_10
execute if entity @s[scores={nameless_favor=30}] run advancement grant @s only atrium:belief/nameless_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with The Nameless is now [","color":"gray"},{"score":{"name":"@s","objective":"nameless_favor"},"bold":true,"color":"dark_blue"},{"text":"])","color":"gray"}]