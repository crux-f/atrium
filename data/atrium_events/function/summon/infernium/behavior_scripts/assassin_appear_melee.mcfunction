# Run by triggers/entities/infernium_assassin_teleport after the assassin has already teleported behind their target
#
# Particles + SFX
particle large_smoke ~ ~1.75 ~ 0.5 1 0.5 0.1 20 normal
playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1.25 0.1
#
# Switch to melee loadout
item replace entity @s weapon.mainhand with minecraft:netherite_sword{display:{Name:'{"text":"Netherite Dagger","italic":false}',Lore:['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 4 Attack Damage","color":"dark_green","italic":false}','{"text":" 2.2 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,CustomModelData:333141,atrium_dagger:1b,atrium_netherite_dagger:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1590116165,837960468,-1267528834,-1834274199],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.8,Operation:0,UUID:[I;-2141543910,829441012,-1156642295,665869591],Slot:"mainhand"}]}
item replace entity @s weapon.offhand with minecraft:air
# Remove tp tag
tag @s remove atrium_teleport_ready