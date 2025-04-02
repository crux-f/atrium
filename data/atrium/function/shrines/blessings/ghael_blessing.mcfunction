# Particles + Sound effect
particle minecraft:flame ~ ~0.1 ~ 0.1 0.25 0.1 0.025 20 force
playsound atrium:favor.ghael block @a[distance=..10] ~ ~ ~ 1 1 0.1
# Add Favor for this god
scoreboard players add @s ghael_favor 1
execute unless entity @s[scores={ghael_favor=31..}] run scoreboard players add @s ghael_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={ghael_favor=1..9}] run effect give @s minecraft:strength 600 0
execute if entity @s[scores={ghael_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"gold"},{"text":"You feel a warmth kindle within you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @s[scores={ghael_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={ghael_favor=10..19}] run effect give @s minecraft:strength 1200 0
execute if entity @s[scores={ghael_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"gold"},{"text":"You feel the sensation of flames curling up around you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @s[scores={ghael_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={ghael_favor=20..29}] run effect give @s minecraft:strength 2400 0
execute if entity @s[scores={ghael_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"gold"},{"text":"You gaze into the flames. The flames gaze into you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @s[scores={ghael_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={ghael_favor=30}] run effect give @s minecraft:strength 2400 0
execute if entity @s[scores={ghael_favor=30}] run effect give @s minecraft:fire_resistance 2400 0
execute if entity @s[scores={ghael_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"gold"},{"text":"The flames before you burn within you.","italic":true,"color":"gold"},{"text":" \u06e9","color":"gold"}]
execute if entity @s[scores={ghael_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={ghael_favor=10}] run advancement grant @s only atrium:belief/ghael_10
execute if entity @s[scores={ghael_favor=30}] run advancement grant @s only atrium:belief/ghael_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with Ghael is now [","color":"gray"},{"score":{"name":"@s","objective":"ghael_favor"},"bold":true,"color":"gold"},{"text":"])","color":"gray"}]