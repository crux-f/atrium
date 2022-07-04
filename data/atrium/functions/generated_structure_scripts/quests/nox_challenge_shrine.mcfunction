playsound minecraft:block.grass.break master @a[distance=..50] ~ ~ ~ 1 0.25 0.1
playsound minecraft:entity.wither.shoot master @a[distance=..50] ~ ~ ~ 0.25 0.25 0.1
execute at @p[distance=..5,gamemode=!spectator] run particle minecraft:smoke ~ ~1.5 ~ 0 0 0 1 25 force
execute as @e[limit=1,distance=..20,tag=player_teleport] at @s run tp @s ~ ~ ~ facing entity @e[limit=1,distance=..20,tag=challenger_spawn]
tp @p[distance=..5,gamemode=!spectator] @e[distance=..20,limit=1,tag=player_teleport]
execute at @e[limit=1,distance=..20,tag=player_teleport] run effect give @a[distance=..5,gamemode=!spectator] minecraft:blindness 120 0
execute at @e[limit=1,distance=..20,tag=challenger_spawn] run particle minecraft:smoke ~ ~1.5 ~ 0 0 0 1 25 force
execute at @e[limit=1,distance=..20,tag=challenger_spawn] run summon skeleton ~ ~ ~ {PersistenceRequired:1b,Health:30f,Tags:["terror"],CustomName:'{"text":"Ruined Warrior","color":"yellow","italic":false}',HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'{"text":"Eroded Ulfberht","italic":false}'},Damage:0.5,eroded_ulfberht:1b,Enchantments:[{id:"minecraft:sharpness",lvl:2s}]}},{}],HandDropChances:[1.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{display:{Name:'{"text":"Charred Chainmail","italic":false}'},Damage:0.8,charred_chainmail:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:thorns",lvl:1s}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Charred Skull","color":"yellow","italic":false}'},charred_skull:1b,SkullOwner:{Id:[I;-1779982112,303645166,-1773381133,604194688],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2UxZTFlODJiZjQzNzhhN2IxMzkyMjliNTYxYzhmMDExOWJmNTY1NTEyODAxNGQzYzU0MzlkODk4MzAzZjFiMCJ9fX0="}]}}}}],ArmorDropChances:[0.085F,0.085F,1.000F,0.500F],Attributes:[{Name:generic.max_health,Base:30}]}
setblock ~ ~ ~ minecraft:dirt
kill @e[distance=..20,tag=challenger_spawn]
kill @e[distance=..20,tag=player_teleport]
