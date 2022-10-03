# sfx
execute unless block 34991 121 -4731 redstone_torch positioned 34991 123 -4724 run playsound minecraft:block.end_portal_frame.fill player @a[distance=..5] ~ ~ ~ 1 0.5 0.1
# deny
execute unless block 34991 121 -4731 redstone_torch positioned 34991 123 -4724 run setblock ~ ~ ~ end_portal_frame[eye=false]
execute unless block 34991 121 -4731 redstone_torch positioned 34991 123 -4724 run tellraw @a[distance=..5] {"text":"Didn't seem to do anything. Maybe you need a specific one...?","italic":true,"color":"gray"}