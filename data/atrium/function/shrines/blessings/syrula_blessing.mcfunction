# Particles + Sound effect
execute at @s run particle minecraft:bubble_pop ~ ~1 ~ 0.1 0.5 0.1 0.01 40 force
execute at @s run playsound atrium:favor.syrula neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s syrula_favor 1
execute unless entity @s[scores={syrula_favor=31..}] run scoreboard players add @s syrula_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={syrula_favor=1..9}] run effect give @s minecraft:water_breathing 600 0
execute if entity @s[scores={syrula_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"blue"},{"text":"Small, glowing gills emerge on your neck. Your heart rate increases slightly.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @s[scores={syrula_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={syrula_favor=10..19}] run effect give @s minecraft:water_breathing 1200 0
execute if entity @s[scores={syrula_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"blue"},{"text":"The shrine smells like seawater. You become acutely aware of the amount of water within you.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @s[scores={syrula_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={syrula_favor=20..29}] run effect give @s minecraft:water_breathing 2400 0
execute if entity @s[scores={syrula_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"blue"},{"text":"The longer you stay ashore, the more you long for a voyage.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @s[scores={syrula_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={syrula_favor=30}] run effect give @s minecraft:water_breathing 2400 0
execute if entity @s[scores={syrula_favor=30}] run effect give @s minecraft:conduit_power 2400 0
execute if entity @s[scores={syrula_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"blue"},{"text":"You can feel the sea. Its majesty, its mysteries. Perhaps it has chosen you.","italic":true,"color":"blue"},{"text":" \u06e9","color":"blue"}]
execute if entity @s[scores={syrula_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={syrula_favor=10}] run advancement grant @s only atrium:belief/syrula_10
execute if entity @s[scores={syrula_favor=30}] run advancement grant @s only atrium:belief/syrula_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Syrula is now [","color":"gray"},{"score":{"name":"@s","objective":"syrula_favor"},"bold":true,"color":"blue"},{"text":"])","color":"gray"}]