# only triggers when command block has confirmed that the player can afford it
execute at @s run particle minecraft:firework ~ ~1.75 ~ 0 0 0 0.1 50
tellraw @s {"text":"Your reputation gained during events has attracted a fuzzy friend.","italic":true,"color":"blue"}
loot give @s loot atrium_events:rewards/plushies/random_plushie_master
