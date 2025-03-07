advancement revoke @s only atrium_events:patreon/anomalies/trial_of_the_quipster
execute unless score @s atrium_events_trial_of_the_quipster matches 2.. run tellraw @s {"text":"You feel an unnatural craving for cake. Perhaps the gods are testing you..?","italic":true,"color":"gray"}
effect give @s minecraft:hunger 60 0 false
