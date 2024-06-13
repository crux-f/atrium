# Triggered by the trigger_on_eye_contact function
#
# advancement is already revoked by previous script
effect give @s minecraft:nausea 5 0 true
# Throw up water
execute anchored eyes positioned ^ ^-0.25 ^0.35 run particle minecraft:rain ~ ~ ~ 0.1 0.1 0.1 0.25 2
playsound minecraft:block.slime_block.step master @s ~ ~ ~ 0.05 2 0.01