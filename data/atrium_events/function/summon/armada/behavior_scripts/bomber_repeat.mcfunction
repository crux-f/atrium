# Repeat every 3 seconds.
execute if entity @a[tag=event] run schedule function atrium_events:summon/armada/behavior_scripts/bomber_repeat 3s
# If there is a valid target below and you have one, drop the bomb.
execute as @e[type=minecraft:phantom,tag=atrium_armada_bomber,tag=atrium_has_bomb] at @s positioned ~ ~-15 ~ if entity @a[distance=..6,gamemode=survival] run function atrium_events:summon/armada/behavior_scripts/bomber_drop_bomb
# If you don't have a bomb, start creating a new one.
execute as @e[type=minecraft:phantom,tag=atrium_armada_bomber,tag=!atrium_has_bomb] run scoreboard players add @s charge 1
# Once you've charged all the way up, create a new bomb.
execute as @e[type=minecraft:phantom,tag=atrium_armada_bomber,tag=!atrium_has_bomb] if score @s charge matches 10.. at @s run function atrium_events:summon/armada/behavior_scripts/bomber_create_bomb