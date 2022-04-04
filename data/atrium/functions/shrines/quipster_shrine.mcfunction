# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={quipster_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}}] quipster_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}},nbt=!{SelectedItem:{id:'minecraft:totem_of_undying'}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:diamond'}},gamemode=!spectator,distance=..5] add resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:sneeze ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={quipster_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:luck 600 0
execute unless entity @p[tag=pray,scores={quipster_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"green"},{"text":"The blessing the shrine grants you feels almost like a playful jab.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute unless entity @p[tag=pray,scores={quipster_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={quipster_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:luck 1200 0
execute if entity @p[tag=pray,scores={quipster_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"green"},{"text":"They? seem to flit about at the edges of your imagination, occasionally throwing in a joke or two.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @p[tag=pray,scores={quipster_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={quipster_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:luck 2400 0
execute if entity @p[tag=pray,scores={quipster_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"green"},{"text":"You seem to find things you're looking for more easily, you speak in jest more readily. It's hard to tell if it's a blessing, or if their? lifestyle is just infectious.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @p[tag=pray,scores={quipster_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={quipster_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:luck 2400 0
execute if entity @p[tag=pray,scores={quipster_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:hero_of_the_village 2400 1
execute if entity @p[tag=pray,scores={quipster_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"green"},{"text":"Whether it's magic or merely good company, your words seem to carry a subtle weight to them.","italic":true,"color":"green"},{"text":" \u06e9","color":"green"}]
execute if entity @p[tag=pray,scores={quipster_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={quipster_favor=10}] run advancement grant @p only atrium:belief/quipster_10
execute if entity @p[tag=pray,scores={quipster_favor=20}] run advancement grant @p only atrium:belief/quipster_20
execute if entity @p[tag=pray,scores={quipster_favor=30}] run advancement grant @p only atrium:belief/quipster_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# NEW: Religion Noises!!!
playsound minecraft:atrium.favor.quipster master @a[distance=..8] ~ ~ ~ 1 1 0.1
