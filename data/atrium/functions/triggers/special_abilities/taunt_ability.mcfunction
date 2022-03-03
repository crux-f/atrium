tag @s add taunted
execute as @a[tag=taunted] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,sort=nearest,tag=taunt_ability,distance=..6]
scoreboard players add @a[tag=taunted] taunt_timer 1
tag @a[scores={taunt_timer=250..}] remove taunted
scoreboard players set @a[tag=!taunted] taunt_timer 0
advancement revoke @a[tag=!taunted] only atrium:triggers/taunt_ability
execute if entity @a[tag=taunted] run schedule function atrium:triggers/taunt_ability 1t
