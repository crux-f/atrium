execute unless entity @p[distance=..5,scores={chorus_favor=30}] run function atrium:shrines/shrine_quest/shrinequest_deny
setblock ~ ~2 ~ minecraft:end_portal_frame
setblock ~ ~2 ~1 minecraft:air
setblock ~ ~2 ~1 minecraft:end_stone
execute unless entity @p[distance=..5,scores={chorus_favor=30}] run particle minecraft:smoke ~ ~2 ~ 0.1 1 0.1 30
execute unless entity @p[distance=..5,scores={chorus_favor=30}] run summon minecraft:item ~ ~3 ~ {Item:{id:"minecraft:ender_eye",Count:1b}}
execute if entity @p[distance=..5,scores={chorus_favor=30}] run particle minecraft:reverse_portal ~ ~2 ~ 0.1 0.5 0.1 0.1 40 force
execute if entity @p[distance=..5,scores={chorus_favor=30}] run playsound minecraft:entity.ender_eye.death master @a[distance=..10] ~ ~ ~ 1 0.5 1
execute if entity @p[distance=..5,scores={chorus_favor=30}] unless entity @p[tag=chorus_q] run schedule function atrium:shrines/shrine_quest/chorus_quest2 5s
execute if entity @p[distance=..5,scores={chorus_favor=30}] unless entity @p[tag=chorus_q] run give @p ender_eye{display:{Name:'{"text":"Eye of Chorus","color":"light_purple","italic":false}'},choruseye:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]} 1
