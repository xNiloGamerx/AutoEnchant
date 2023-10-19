tellraw @p ["",{"text":"System","bold":true,"color":"yellow"}," | ",{"text":"Datapack reloaded!","color":"red"}," | ",{"text":"Reload again?","italic":true,"color":"gold","clickEvent":{"action":"run_command","value":"/reload"},"hoverEvent":{"action":"show_text","contents":[{"text":"Reload the pack again","color":"green"}]}}]

scoreboard objectives add autoen_enchantment_level dummy

scoreboard objectives add autoen_increase_level dummy
scoreboard players set amount autoen_increase_level 5

scoreboard objectives add autoen_current_level dummy

scoreboard objectives add autoen_enchant_timer dummy

scoreboard objectives add autoen_tutorial trigger

scoreboard objectives add autoen_tutorial_time dummy