# Revoke to allow re-trigger
advancement revoke @s only atrium:spawn/usher/right_click_usher
#
execute unless entity @s[scores={usher_intro=100..}] run function atrium:spawn/usher/conversation_1
#
# execute if entity @s[scores={usher_intro=101}] run function atrium:spawn/usher/extra_dialogue_1
# execute if entity @s[scores={usher_intro=102}] run function atrium:spawn/usher/extra_dialogue_1
# execute if entity @s[scores={usher_intro=103}] run function atrium:spawn/usher/extra_dialogue_1
# execute if entity @s[scores={usher_intro=104}] run function atrium:spawn/usher/extra_dialogue_1
# execute if entity @s[scores={usher_intro=105..}] run function atrium:spawn/usher/extra_dialogue_1