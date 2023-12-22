# Particles + Sound effect
execute at @s run particle minecraft:sneeze ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
execute at @s run playsound atrium:favor.quipster neutral @a[distance=..8] ~ ~ ~ 0.75 1 0.1
# Add Favor for this god
scoreboard players add @s quipster_favor 1
execute unless entity @s[scores={quipster_favor=31..}] run scoreboard players add @s quipster_favor 1
# Favor Reduction script
function atrium:shrines/favor_reduction_main
#
# Text, ability, and cost for favor 1-9
execute if entity @s[scores={quipster_favor=1..9}] run effect give @s minecraft:luck 600 0
execute if entity @s[scores={quipster_favor=1}] run tellraw @s ["",{"text":"\u06e9 ","color":"green"},{"text":"The blessing the shrine grants you feels almost like a playful jab.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @s[scores={quipster_favor=1..9}] run xp add @s -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @s[scores={quipster_favor=10..19}] run effect give @s minecraft:luck 1200 0
execute if entity @s[scores={quipster_favor=10}] run tellraw @s ["",{"text":"\u06e9 ","color":"green"},{"text":"They? seem to flit about at the edges of your imagination, occasionally throwing in a joke or two.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @s[scores={quipster_favor=10..19}] run xp add @s -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @s[scores={quipster_favor=20..29}] run effect give @s minecraft:luck 2400 0
execute if entity @s[scores={quipster_favor=20}] run tellraw @s ["",{"text":"\u06e9 ","color":"green"},{"text":"You seem to find things you're looking for more easily, you speak in jest more readily. It's hard to tell if it's a blessing, or if their? lifestyle is just infectious.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @s[scores={quipster_favor=20..29}] run xp add @s -3 levels
# Text, ability and cost for favor 30
execute if entity @s[scores={quipster_favor=30}] run effect give @s minecraft:luck 2400 0
execute if entity @s[scores={quipster_favor=30}] run effect give @s minecraft:hero_of_the_village 600 0
execute if entity @s[scores={quipster_favor=30}] run tellraw @s ["",{"text":"\u06e9 ","color":"green"},{"text":"Whether it's magic or merely good company, your words seem to carry a subtle weight to them.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @s[scores={quipster_favor=30}] run xp add @s -5 levels
# Advancement progression
execute if entity @s[scores={quipster_favor=10}] run advancement grant @s only atrium:belief/quipster_10
execute if entity @s[scores={quipster_favor=20}] run advancement grant @s only atrium:belief/quipster_20
execute if entity @s[scores={quipster_favor=30}] run advancement grant @s only atrium:belief/quipster_30
#
# Tell the player their current Favor.
tellraw @s [{"text":"(Your Favor with The Quipster is now [","color":"gray"},{"score":{"name":"@s","objective":"quipster_favor"},"bold":true,"color":"green"},{"text":"])","color":"gray"}]