# Particles + Sound effect
execute at @s run particle minecraft:warped_spore ~ ~1.5 ~ 0.1 0.5 0.1 0.1 15 normal
execute at @s run playsound atrium:favor.xenos neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s xenos_favor 1
execute unless entity @s[scores={xenos_favor=31..}] run scoreboard players add @s xenos_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_ancient
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={xenos_favor=1..9}] run effect give @s minecraft:haste 300 1
execute if entity @s[scores={xenos_favor=1..9}] run effect give @s minecraft:slowness 300 0
execute if entity @s[scores={xenos_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"#FFBADF"},{"text":"Your prayer is answered, but... It feels like an afterthought.","italic":true,"color":"#FFBADF"},{"text":" \u06e9","color":"#FFBADF"}]
execute if entity @s[scores={xenos_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={xenos_favor=10..19}] run effect give @s minecraft:haste 450 1
execute if entity @s[scores={xenos_favor=10..19}] run effect give @s minecraft:slowness 450 0
execute if entity @s[scores={xenos_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"#FFBADF"},{"text":"The mind that answers you is too big to comprehend. You step back, dizzy.","italic":true,"color":"#FFBADF"},{"text":" \u06e9","color":"#FFBADF"}]
execute if entity @s[scores={xenos_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={xenos_favor=20..29}] run effect give @s minecraft:haste 900 1
execute if entity @s[scores={xenos_favor=20..29}] run effect give @s minecraft:slowness 900 0
execute if entity @s[scores={xenos_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"#FFBADF"},{"text":"You can't even tell if she's paying attention.","italic":true,"color":"#FFBADF"},{"text":" \u06e9","color":"#FFBADF"}]
execute if entity @s[scores={xenos_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={xenos_favor=30}] run effect give @s minecraft:haste 1700 1
execute if entity @s[scores={xenos_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"#FFBADF"},{"text":"You have almost drawn their attention. Almost.","italic":true,"color":"#FFBADF"},{"text":" \u06e9","color":"#FFBADF"}]
execute if entity @s[scores={xenos_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={xenos_favor=10}] run advancement grant @s only atrium:belief/xenos_10
execute if entity @s[scores={xenos_favor=20}] run advancement grant @s only atrium:belief/xenos_20
execute if entity @s[scores={xenos_favor=30}] run advancement grant @s only atrium:belief/xenos_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Xenos is now [","color":"gray"},{"score":{"name":"@s","objective":"xenos_favor"},"bold":true,"color":"#FFBADF"},{"text":"])","color":"gray"}]