# Check West for mixer item.
execute positioned ~-2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~-2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run scoreboard players add @s cauldron 1
#
# Check North for catalyst item.
# THE THIRD ITEM ALWAYS HAS TO BE ..2 FOR DUMB REASONS DO NOT CHANGE THIS OR I WILL STEAL YOUR SHOES
execute positioned ~ ~2 ~-2 at @e[type=minecraft:item_frame,distance=..2,nbt={Item:{tag:{catalyst_prime:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~ ~2 ~-2 if entity @e[type=minecraft:item_frame,distance=..2,nbt={Item:{tag:{catalyst_prime:1b}}}] run scoreboard players add @s cauldron 1
#
# Check East for special ingredient.
execute positioned ~2 ~2 ~ at @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{sorrowfruit:1b}}}] run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 20 normal
execute positioned ~2 ~2 ~ if entity @e[type=minecraft:item_frame,distance=..1.5,nbt={Item:{tag:{sorrowfruit:1b}}}] run scoreboard players add @s cauldron 1
#
execute if entity @s[scores={cauldron=3..}] at @s run summon item ~ ~2 ~ {NoGravity:1b,Glowing:1b,Motion:[0.0,0.05,0.0],Item:{id:"minecraft:potion",Count:1b,tag:{regen3r:1b,display:{Name:'{"text":"Potion of Regeneration","color":"#FFDBDB","italic":false}'},CustomPotionEffects:[{Id:10b,Amplifier:1b,Duration:900}],Potion:"minecraft:empty",CustomPotionColor:16711927}}}
execute if entity @s[scores={cauldron=3..}] at @s run function atrium:magic/advancedpotions/ap_reset
scoreboard players set @s cauldron 0
