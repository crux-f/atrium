# Tag shield holder with gaze_enchant, then tag the target of their attack with taunted
tag @s add gaze_enchant
execute at @a[tag=gaze_enchant] anchored eyes unless entity @e[distance=..6,tag=taunted] positioned ^ ^ ^2.5 run tag @e[sort=nearest,tag=!gaze_enchant,distance=..6] add taunted
# draw the taunted creature's gaze until 250 ticks has passed
execute as @e[tag=taunted,nbt={OnGround:1b}] at @s run tp @s ~ ~ ~ facing entity @a[limit=1,sort=nearest,tag=gaze_enchant,distance=..6]
scoreboard players add @e[tag=taunted] taunt_timer 1
tag @e[scores={taunt_timer=250..}] remove taunted
scoreboard players set @e[tag=!taunted] taunt_timer 0
# Remove tag when nobody is holding the item anymore
execute if entity @a[tag=gaze_enchant,nbt=!{Inventory:[{Slot:-106b,tag:{gaze_enchant:1b}}]}] run tag @a remove gaze_enchant
# revoke advancement to trigger again
advancement revoke @a[tag=!gaze_ability] only atrium:triggers/occult_enchantments/gaze
# keep running as long as someone is taunted
execute if entity @a[tag=taunted] run schedule function atrium:triggers/occult_enchantments/gaze 1t
