execute at @e[tag=blackknight] run summon firework_rocket ~ ~ ~ {Glowing:1b,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;0,3866624],FadeColors:[I;4332398]},{Type:2,Colors:[I;5054307],FadeColors:[I;220001]}]}}}}
execute at @e[team=maycoes] run playsound minecraft:atrium.maycoes_witherspell master @a[distance=..80] ~ ~ ~ 1
schedule function atrium:events/knightboss/maycoes_leave 6s
schedule function atrium:events/knightboss/spawn_witherboss 5s
