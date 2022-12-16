# Particles + Sound effect
execute at @s run particle minecraft:falling_dust minecraft:sand ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
execute at @s run playsound atrium:favor.taraqsol neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s taraqsol_favor 1
execute unless entity @s[scores={taraqsol_favor=31..}] run scoreboard players add @s taraqsol_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={taraqsol_favor=1..9}] run effect give @s minecraft:speed 600 0
execute if entity @s[scores={taraqsol_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"yellow"},{"text":"You can feel the beauty of the land, the many sights you have yet to see. They call to you.","italic":true,"color":"yellow"},{"text":" \u06e9","color":"yellow"}]
execute if entity @s[scores={taraqsol_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={taraqsol_favor=10..19}] run effect give @s minecraft:speed 1200 0
execute if entity @s[scores={taraqsol_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"yellow"},{"text":"You pick up the pace. Rest can wait.","italic":true,"color":"yellow"},{"text":" \u06e9","color":"yellow"}]
execute if entity @s[scores={taraqsol_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={taraqsol_favor=20..29}] run effect give @s minecraft:speed 2400 0
execute if entity @s[scores={taraqsol_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"yellow"},{"text":"The shrine inspires you. Unleash your potential, it seems to say.","italic":true,"color":"yellow"},{"text":" \u06e9","color":"yellow"}]
execute if entity @s[scores={taraqsol_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={taraqsol_favor=30}] run effect give @s minecraft:speed 2400 0
execute if entity @s[scores={taraqsol_favor=30}] run effect give @s minecraft:dolphins_grace 2400 0
execute if entity @s[scores={taraqsol_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"yellow"},{"text":"The lands hold many wonders, and the seas the same. You can go anywhere. Be anything.","italic":true,"color":"yellow"},{"text":" \u06e9","color":"yellow"}]
execute if entity @s[scores={taraqsol_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={taraqsol_favor=10}] run advancement grant @s only atrium:belief/taraqsol_10
execute if entity @s[scores={taraqsol_favor=20}] run advancement grant @s only atrium:belief/taraqsol_20
execute if entity @s[scores={taraqsol_favor=30}] run advancement grant @s only atrium:belief/taraqsol_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Taraq-Sol is now [","color":"gray"},{"score":{"name":"@s","objective":"taraqsol_favor"},"bold":true,"color":"yellow"},{"text":"])","color":"gray"}]