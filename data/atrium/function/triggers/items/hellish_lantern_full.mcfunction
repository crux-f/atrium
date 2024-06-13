# Replace lantern with full version
clear @s minecraft:carved_pumpkin[minecraft:custom_data={atrium_hellish_lantern:1b,atrium_fireballs:9b}] 1
give @s minecraft:jack_o_lantern[minecraft:lore=['{"text":"The hellfire roars within it!"}','{"text":"The lantern seems satisfied."}','{"text":" "}','[{"text":"Absorbed Ghast Fireballs:","color":"gray","italic":false},{"text":" 10","color":"yellow"}]'],minecraft:enchantments={levels:{"minecraft:power":3}},minecraft:custom_name='{"text":"Hellish Lantern","color":"red","italic":false}',minecraft:custom_data={atrium_fireballs:10b,atrium_hellish_lantern:1b}] 1
#
# SFX
execute at @s run playsound minecraft:entity.evoker_fangs.attack block @a[distance=..15] ~ ~ ~ 0.5 1.25 0.1
execute at @s run playsound minecraft:item.firecharge.use block @a[distance=..15] ~ ~ ~ 0.5 1.5 0.1
execute at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 1 25
