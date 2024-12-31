# Revoke to allow re-trigger
advancement revoke @s only atrium:triggers/items/food/give_allay_crescent_cookie
#
# Give nearest Allay that is holding a Crescent Cookie the Glowing effect for 5 minutes
execute at @s as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={HandItems:[{components:{"minecraft:custom_data":{atrium_crescent_cookie:1b}}}]}] run effect give @s minecraft:glowing 300 0
# Play happy Allay sounds
execute at @s as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={HandItems:[{components:{"minecraft:custom_data":{atrium_crescent_cookie:1b}}}]}] at @s run playsound minecraft:entity.allay.item_thrown neutral @a[distance=..15] ~ ~ ~ 1.25 1 0.1
execute at @s as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={HandItems:[{components:{"minecraft:custom_data":{atrium_crescent_cookie:1b}}}]}] at @s run playsound minecraft:entity.generic.eat neutral @a[distance=..15] ~ ~ ~ 0.75 1.75 0.05
# display eating particles
execute at @s as @e[type=minecraft:allay,sort=nearest,limit=1,nbt={HandItems:[{components:{"minecraft:custom_data":{atrium_crescent_cookie:1b}}}]}] at @s run particle minecraft:item{item:{id:"minecraft:cookie",components:{"minecraft:custom_model_data":{strings:["atrium_crescent_cookie"]}}}} ~ ~ ~ 0.25 0.25 0.25 0 5 normal
#
# Schedule cookie removal
schedule function atrium:triggers/items/food/allay_eats_crescent_cookie 30t