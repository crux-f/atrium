execute at @e[team=maycoes] run summon firework_rocket ~ ~1.5 ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;5645711,6828287],FadeColors:[I;11823615]}]}}}}
execute at @e[team=maycoes] run summon lightning_bolt ~ ~ ~
kill @e[tag=m_anchor]
tp @e[team=maycoes] ~ ~-300 ~ 
schedule clear atrium:events/knightboss/maycoes_forcefield

