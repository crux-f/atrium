# Run by triggers/entities/infernium_assassin_teleport after the assassin has already teleported behind their target
#
# Particles + SFX
particle large_smoke ~ ~1.75 ~ 0.5 1 0.5 0.1 20 normal
playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1.25 0.1
#
# Switch to melee loadout
item replace entity @s weapon.mainhand with minecraft:netherite_sword[minecraft:custom_model_data={strings:["atrium_dagger"]},minecraft:lore=['{"text":" "}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 4 Attack Damage","color":"dark_green","italic":false}','{"text":" 2.2 Attack Speed","color":"dark_green","italic":false}'],minecraft:attribute_modifiers=[{amount:4,id:"atrium:netherite_dagger_attack_damage",operation:"add_value",slot:"mainhand",type:"attack_damage"},{amount:-1.8d,id:"atrium:netherite_dagger_attack_speed",operation:"add_value",slot:"mainhand",type:"attack_speed"}],minecraft:item_name='{"text":"Netherite Dagger","italic":false}',minecraft:custom_data={atrium_dagger:1b,atrium_netherite_dagger:1b}]
item replace entity @s weapon.offhand with minecraft:air
# Remove tp tag
tag @s remove atrium_teleport_ready