# Summon 1 Sect Drivel
# Essentially cannon fodder. Sometimes have gear, always pick up someone else's gear when it falls.
summon minecraft:drowned ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:1b,Tags:["atrium_sect_drivel"],CustomName:'{"text":"Sect Drivel","color":"gray","italic":false}',Attributes:[{Name:"generic.follow_range",Base:60}],ArmorDropChances:[0.25F,0.25F,0.25F,0.25F],HandDropChances:[0.250F,0.085F]}
#
# Sometimes have gear
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.head with minecraft:iron_helmet{Damage:140}
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.chest with minecraft:iron_chestplate{Damage:210}
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.legs with minecraft:iron_leggings{Damage:190}
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.feet with minecraft:iron_boots{Damage:160}
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.50_p run item replace entity @s weapon.mainhand with iron_sword{display:{Name:'{"text":"Ruined Blade","italic":false}'},Damage:230,CustomModelData:333086,atrium_ruined_blade:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;624984712,1200570591,-1448101242,1012217807],Slot:"mainhand"}]}