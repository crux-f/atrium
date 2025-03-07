# jesus christ this is the only way i can do this thing isnt it
execute if entity @a[tag=having_nightmare] run schedule function atrium_events:patreon/anomalies/nightmare_end_of_night_check 1t
# Needs fixing to re-use v v v
# execute as @a[tag=having_nightmare,predicate=atrium:misc_check/just_woke_up] run tellraw @s {"text":"You awake in a cold sweat.","italic":true,"color":"gray"}
# execute as @a[tag=having_nightmare,predicate=atrium:misc_check/just_woke_up] run loot give @s loot atrium:patreon/nightmare_items
# execute as @a[tag=having_nightmare,predicate=atrium:misc_check/just_woke_up] run tag @s remove having_nightmare