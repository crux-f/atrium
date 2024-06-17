execute unless entity @s[scores={atrium_reputation=64..}] run function atrium_events:server_signs/admin_shop/not_enough_reputation
execute if entity @s[scores={atrium_reputation=64..}] run function atrium_events:rewards/random_essence_jar
execute if entity @s[scores={atrium_reputation=64..}] run scoreboard players remove @s atrium_reputation 64