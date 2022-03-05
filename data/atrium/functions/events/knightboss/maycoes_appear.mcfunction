execute at @e[tag=blackknight,limit=1] run summon illusioner ~ ~3 ~-5 {Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,Team:"maycoes",PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Maycoes, Armada Mastermind","color":"#A20AD9"}',Attributes:[{Name:generic.knockback_resistance,Base:99}]}
function atrium:events/knightboss/maycoes_forcefield
execute at @e[team=maycoes] run summon firework_rocket ~ ~1.5 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;5645711,6828287],FadeColors:[I;11823615]}]}}}}
execute at @e[team=maycoes] run summon lightning_bolt ~ ~ ~
playsound minecraft:atrium.enough record @a[tag=event] ~ ~ ~ 0.8 1 0.8
schedule function atrium:events/knightboss/maycoes_cs1 2s
