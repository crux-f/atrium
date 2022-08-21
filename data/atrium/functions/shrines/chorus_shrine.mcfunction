# Grant shrine advancement
advancement grant @p[distance=..10,gamemode=!spectator] until atrium:belief/higher_power
# UNLESS the nearest player to the shrine has a score of 30 or higher, add 2 to the player's Favor.
execute unless entity @p[distance=..5,scores={chorus_favor=30..},gamemode=!spectator] run scoreboard players add @p[distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:diamond"}}] chorus_favor 2
# ADD the 'pray' tag to the nearest player NOT in spectator holding a res item
tag @p[gamemode=!spectator,distance=..5,level=1..,nbt=!{SelectedItem:{id:"minecraft:diamond"}},nbt=!{SelectedItem:{id:"minecraft:totem_of_undying"}}] add pray
# Tag the player holding the res item who just clicked on the shrine as the Resurrector
tag @p[nbt={SelectedItem:{id:"minecraft:diamond"}},gamemode=!spectator,distance=..5] add resurrector
tag @p[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}},gamemode=!spectator,distance=..5] add resurrector
# run the favor exchange function
function atrium:shrines/favor_exchange
# UNLESS nearest player has no EXP levels, give em the particles
execute at @p unless entity @p[tag=pray,level=0] run particle minecraft:reverse_portal ~ ~1 ~ 0.1 0.5 0.1 0.1 40 force
# Text, ability, and cost for favor 1-9
execute unless entity @p[tag=pray,scores={chorus_favor=10..}] run effect give @p[tag=pray,level=1..] minecraft:glowing 600 0
execute unless entity @p[tag=pray,scores={chorus_favor=2..}] run tellraw @p[tag=pray,level=1..] ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"Are you really so determined to be seen?","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute unless entity @p[tag=pray,scores={chorus_favor=10..}] run xp add @p[tag=pray,level=1..] -1 levels
# Text, ability, and cost for favor 10-19
execute if entity @p[tag=pray,scores={chorus_favor=10..19}] run effect give @p[tag=pray,level=2..] minecraft:glowing 1200 0
execute if entity @p[tag=pray,scores={chorus_favor=10}] run tellraw @p[tag=pray,level=2..] ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"You feel like you're being watched.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @p[tag=pray,scores={chorus_favor=10..19}] run xp add @p[tag=pray,level=2..] -2 levels
# Text, ability, and cost for favor 20-29
execute if entity @p[tag=pray,scores={chorus_favor=20..29}] run effect give @p[tag=pray,level=3..] minecraft:glowing 2400 0
execute if entity @p[tag=pray,scores={chorus_favor=20}] run tellraw @p[tag=pray,level=3..] ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"A shiver runs down your spine. All eyes are on you.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @p[tag=pray,scores={chorus_favor=20..29}] run xp add @p[tag=pray,level=3..] -3 levels
# Text, ability, and cost for favor 30
execute if entity @p[tag=pray,scores={chorus_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:glowing 2400 0
execute if entity @p[tag=pray,scores={chorus_favor=30}] run effect give @p[tag=pray,level=5..] minecraft:night_vision 2400 0
execute if entity @p[tag=pray,scores={chorus_favor=30}] run tellraw @p[tag=pray,level=5..] ["",{"text":"\u06e9 ","color":"light_purple"},{"text":"They have found you, and you have been blessed with eyes that truly see.","italic":true,"color":"light_purple"},{"text":" \u06e9","color":"light_purple"}]
execute if entity @p[tag=pray,scores={chorus_favor=30}] run xp add @p[tag=pray,level=5..] -5 levels
# Advancement progression
execute if entity @p[tag=pray,scores={chorus_favor=10}] run advancement grant @p only atrium:belief/chorus_10
execute if entity @p[tag=pray,scores={chorus_favor=20}] run advancement grant @p only atrium:belief/chorus_20
execute if entity @p[tag=pray,scores={chorus_favor=30}] run advancement grant @p only atrium:belief/chorus_30
# Remove the pray tag at the end of the prayer.
tag @p[tag=pray] remove pray
# NEW: Religion Noises!!!
playsound minecraft:atrium.favor.chorus master @a[distance=..8] ~ ~ ~ 1 1 0.1
