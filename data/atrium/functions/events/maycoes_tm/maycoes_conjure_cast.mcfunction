# particles and sound
execute at @e[tag=conjure_point] run particle minecraft:flash ~ ~ ~ 6 6 6 1 40 normal
execute at @e[tag=conjure_point] run particle minecraft:dust -10 -10 -10 3 ~ ~ ~ 6 6 6 1 40 normal
execute at @e[tag=conjure_point] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..100] ~ ~ ~ 1 0.8 0.3 
# Summon 1x Armada Viator Slayer
execute at @e[tag=conjure_point] run summon vindicator ~ ~ ~ {DeathLootTable:"atrium:viator_slayer",Health:60f,CustomName:'{"text":"Armada Viator Slayer","color":"dark_purple","italic":false}',HandItems:[{id:"minecraft:netherite_axe",Count:1b,tag:{display:{Name:'{"text":"Viator\'s End","color":"light_purple","italic":false}',Lore:['{"text":"Viator Slayer III","color":"gray","italic":false}']},RepairCost:999,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ActiveEffects:[{Id:10b,Amplifier:0b,Duration:999999,ShowParticles:1b}],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.follow_range,Base:100},{Name:generic.knockback_resistance,Base:1},{Name:generic.attack_damage,Base:12},{Name:generic.armor,Base:16},{Name:generic.armor_toughness,Base:4}]}
# particles!
particle minecraft:poof ~ ~ ~ 1 1 1 0.3 80 normal
# Chance to summon each group of ads
execute if predicate atrium:35_percent at @e[tag=conjure_point] run function atrium:events/vanguard_crew
execute if predicate atrium:10_percent at @e[tag=conjure_point] run function atrium:events/dreadnought
execute if predicate atrium:10_percent at @e[tag=conjure_point] run function atrium:events/templar
execute if predicate atrium:10_percent at @e[tag=conjure_point] run function atrium:events/enchanted_creeper
# Remove conjure_point tag
tag @e remove conjure_point
# Tag Maycoes with fourth_spell
tag @e[tag=maycoes] add fourth_spell
# Resume moving
function atrium:events/maycoes_tm/maycoes_resume_move
