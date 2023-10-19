execute if entity @e[type=armor_stand,tag=autoen_tutorial_spectator,tag=autoen_run_tutorial] run scoreboard players add time autoen_tutorial_time 1

execute unless entity @e[type=armor_stand,tag=autoen_tutorial_spectator,tag=autoen_run_tutorial] run scoreboard players set time autoen_tutorial_time 0