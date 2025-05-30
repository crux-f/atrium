# Summon 1 Sect Drivel
# Essentially cannon fodder. Sometimes have gear, always pick up someone else's gear when it falls.
summon minecraft:drowned ~ ~ ~ {ArmorDropChances: [0.25f, 0.25f, 0.25f, 0.25f], attributes: [{base: 60, id: "generic.follow_range"}], CanPickUpLoot: 1b, CustomName: {text:"Sect Drivel","color":"gray","italic":false}, HandDropChances: [0.25f, 0.085f], PersistenceRequired: 1b, Tags: ["atrium_sect_drivel"]}
#
# Sometimes have gear
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.head with minecraft:iron_helmet[minecraft:damage=140]
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.chest with minecraft:iron_chestplate[minecraft:damage=210]
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.legs with minecraft:iron_leggings[minecraft:damage=190]
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.25_p run item replace entity @s armor.feet with minecraft:iron_boots[minecraft:damage=160,minecraft:custom_data={tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:2s}]}}]
execute as @e[tag=atrium_sect_drivel,distance=..1] if predicate atrium:percentage_chances/0.50_p run item replace entity @s weapon.mainhand with minecraft:iron_sword[minecraft:custom_model_data=333086,minecraft:attribute_modifiers=[{amount:2,id:"atrium:ruined_blade_attack_damage",operation:"add_value",slot:"mainhand",type:"generic.attack_damage"}],minecraft:damage=230,minecraft:item_name={text:"Ruined Blade","italic":false},minecraft:custom_data={atrium_ruined_blade:1b}]