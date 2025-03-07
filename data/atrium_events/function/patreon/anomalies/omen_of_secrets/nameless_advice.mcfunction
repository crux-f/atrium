# Home + On A Journey
execute if entity @s[scores={from_home=1..,going_journey=1..}] run tellraw @s {"text":"I would advise forgetting where you came from. Your travels will never end. You can't go home.","color":"dark_blue"}
# Far From Here + On A Journey
execute if entity @s[scores={from_far=1..,going_journey=1..}] run tellraw @s {"text":"...And if you never find a destination? When does the journey end?","color":"dark_blue"}
# Nowhere + On A Journey
execute if entity @s[scores={from_nowhere=1..,going_journey=1..}] run tellraw @s {"text":"When your journey ends, nobody will remember you.","color":"dark_blue"}
# Another World + On A Journey
execute if entity @s[scores={from_elsewhere=1..,going_journey=1..}] run tellraw @s {"text":"This world does not belong to you. Journey elsewhere.","color":"dark_blue"}
# Home + Not Sure
execute if entity @s[scores={from_home=1..,going_somewhere=1..}] run tellraw @s {"text":"Leave your home behind. Let your uncertainty guide you.","color":"dark_blue"}
# Far From Here + Not Sure
execute if entity @s[scores={from_far=1..,going_somewhere=1..}] run tellraw @s {"text":"Are you lost? Stay that way.","color":"dark_blue"}
# Nowhere + Not Sure
execute if entity @s[scores={from_nowhere=1..,going_somewhere=1..}] run tellraw @s {"text":"You are already on the right path. Stay true to that which you cannot know.","color":"dark_blue"}
# Another World + Not Sure
execute if entity @s[scores={from_elsewhere=1..,going_somewhere=1..}] run tellraw @s {"text":"Burn the book. It cannot be trusted. Burn the book.","color":"dark_blue"}
# Home + Anywhere I Like
execute if entity @s[scores={from_home=1..,going_anywhere=1..}] run tellraw @s {"text":"I have nothing to say to you.","color":"dark_blue"}
# Far From Here + Anywhere I Like
execute if entity @s[scores={from_far=1..,going_anywhere=1..}] run tellraw @s {"text":"You remind me of someone... Be careful where you go from here.","color":"dark_blue"}
# Nowhere + Anywhere I Like
execute if entity @s[scores={from_nowhere=1..,going_anywhere=1..}] run tellraw @s {"text":"What gives you the right to your secrets?","color":"dark_blue"}
# Another World + Anywhere I Like
execute if entity @s[scores={from_elsewhere=1..,going_anywhere=1..}] run tellraw @s {"text":"Travelers... you crawl into our world like termites.","color":"dark_blue"}
# Home + Home
execute if entity @s[scores={from_home=1..,going_home=1..}] run tellraw @s {"text":"Oh, you poor thing. You're still trying to find your way back. As if they would take you.","color":"dark_blue"}
# Far From Here + Home
execute if entity @s[scores={from_far=1..,going_home=1..}] run tellraw @s {"text":"Forget all you know, and I can set you free.","color":"dark_blue"}
# Nowhere + Home
execute if entity @s[scores={from_nowhere=1..,going_home=1..}] run tellraw @s {"text":"There are many you don't find home. Are you one of them?","color":"dark_blue"}
# Another World + Home
execute if entity @s[scores={from_elsewhere=1..,going_home=1..}] run tellraw @s {"text":"You are an interesting contradition. I can respect that. Forget me, and forget this world.","color":"dark_blue"}
#
#
# Set it so they can't do it again
scoreboard players set @s nameless_anomaly 1