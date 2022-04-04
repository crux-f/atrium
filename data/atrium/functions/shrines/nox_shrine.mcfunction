# Grant shrine advancement
advancement grant @p[distance=..10] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={nox_favor=30..}] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}}] nox_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:'minecraft:diamond'}},nbt=!{SelectedItem:{id:'minecraft:totem_of_undying'}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:diamond'}},gamemode=!spectator,distance=..5] add resurrector
tag @p[nbt={SelectedItem:{id:'minecraft:totem_of_undying'}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:large_smoke ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={nox_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:resistance 600 0
execute unless entity @p[tag=pray,scores={nox_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"red"},{"text":"The atmosphere here is suffused with a cold, calculating aura.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute unless entity @p[tag=pray,scores={nox_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={nox_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:resistance 1200 0
execute if entity @p[tag=pray,scores={nox_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"red"},{"text":"You keep coming back. She offers you power you can't refuse.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @p[tag=pray,scores={nox_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={nox_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:resistance 2400 0
execute if entity @p[tag=pray,scores={nox_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"red"},{"text":"You can feel her, just behind you. But you never see her.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @p[tag=pray,scores={nox_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={nox_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:resistance 2400 0
execute if entity @p[tag=pray,scores={nox_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:invisibility 2400 0
execute if entity @p[tag=pray,scores={nox_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"red"},{"text":"The shadows cling to you, and won't let go.","italic":true,"color":"red"},{"text":" \u06e9","color":"red"}]
execute if entity @p[tag=pray,scores={nox_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={nox_favor=10}] run advancement grant @p only atrium:belief/nox_10
execute if entity @p[tag=pray,scores={nox_favor=20}] run advancement grant @p only atrium:belief/nox_20
execute if entity @p[tag=pray,scores={nox_favor=30}] run advancement grant @p only atrium:belief/nox_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# NEW: Religion Noises!!!
playsound minecraft:atrium.favor.nox master @a[distance=..8] ~ ~ ~ 1 1 0.1
