# Bounty level should start at 1, leaving 0 in just in case
#
# IF Bounty Level 0-5, summon 4 Pillagers
summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
#
# IF Bounty Level 0-3, four more have a 25% chance of spawning each
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
#
# IF Bounty Level 0-3, two Vindicators have a 25% chance of spawning each
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=0..3},predicate=atrium:percentage_chances/0.25_p] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
#
# IF Bounty Level 3 and up, three more have a 50% chance of spawning each
execute if entity @e[scores={illager_bounty_level=3..},predicate=atrium:percentage_chances/0.50_p] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=3..},predicate=atrium:percentage_chances/0.50_p] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=3..},predicate=atrium:percentage_chances/0.50_p] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
#
# IF Bounty Level 4 and up, there is a 50% chance that all Pillagers in the hunting party have enchanted weapons
execute if entity @e[scores={illager_bounty_level=4..},predicate=atrium:percentage_chances/0.50_p] run item modify entity @e[distance=..20,type=minecraft:pillager] weapon.mainhand atrium:random_events/random_crossbow_enchantment
#
# IF Bounty Level 4 and up, one Ravager has a 50% chance of spawning
execute if entity @e[scores={illager_bounty_level=4..},predicate=atrium:percentage_chances/0.50_p] run summon ravager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"]}
#
# IF Bounty Level 5 and up, there is a 50% chance that all Vindicators in the hunting party have enchanted weapons
execute if entity @e[scores={illager_bounty_level=5..},predicate=atrium:percentage_chances/0.50_p] run item modify entity @e[distance=..20,type=minecraft:vindicator] weapon.mainhand atrium:random_events/random_axe_combat_enchantment
#
# IF Bounty Level 6 and up, one Evoker has a 50% chance of spawning
execute if entity @e[scores={illager_bounty_level=6..},predicate=atrium:percentage_chances/0.50_p] run summon evoker ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"]}
#
# IF Bounty Level 6 and up, two Witches have a 25% chance of spawning each
execute if entity @e[scores={illager_bounty_level=6..},predicate=atrium:percentage_chances/0.25_p] run summon witch ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"]}
execute if entity @e[scores={illager_bounty_level=6..},predicate=atrium:percentage_chances/0.25_p] run summon witch ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"]}
#
# IF Bounty Level 10 and up, there's 4 more Pillagers and all Pillagers in the hunting party definitely have enchanted weapons
execute if entity @e[scores={illager_bounty_level=10..}] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=10..}] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=10..}] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=10..}] run summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=10..}] run item modify entity @e[distance=..20,type=minecraft:pillager] weapon.mainhand atrium:random_events/random_crossbow_enchantment
#
# IF Bounty Level 12 and up, there's 2 more Vindicators with Diamond Axes, and a 50% chance of a second Evoker
execute if entity @e[scores={illager_bounty_level=12..}] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
execute if entity @e[scores={illager_bounty_level=12..}] run summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"],HandItems:[{id:"minecraft:iron_axe",Count:1b},{}],HandDropChances:[0.085F,0.085F]}
#
execute if entity @e[scores={illager_bounty_level=12..},predicate=atrium:percentage_chances/0.50_p] run summon evoker ~ ~ ~ {PersistenceRequired:1b,Tags:["hunting"]}
#
# IF Bounty Level 15 and up, all Hunters get +8 base Armor.
execute if entity @e[scores={illager_bounty_level=15..}] as @e[distance=..20,type=#minecraft:raiders] run attribute @s minecraft:generic.armor base set 8
#
#
#
#
#
# Regardless of how many Hunters spawn, one of them gets the Scent.
data merge entity @e[limit=1,distance=..20,type=#minecraft:raiders,sort=random] {PatrolLeader:1b,Tags:["scent","hunting"],ArmorItems:[{},{},{},{id:"minecraft:white_banner",Count:1b,tag:{display:{Name:'{"text":"Ominous Banner","color":"gold"}'},HideFlags:32,BlockEntityTag:{Patterns:[{Color:9,Pattern:"mr"},{Color:8,Pattern:"bs"},{Color:7,Pattern:"cs"},{Color:8,Pattern:"bo"},{Color:15,Pattern:"ms"},{Color:8,Pattern:"hh"},{Color:8,Pattern:"mc"},{Color:15,Pattern:"bo"}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F]}
#
# Remove marker afterwards
kill @e[tag=hunting_party_spawn,distance=..10]
