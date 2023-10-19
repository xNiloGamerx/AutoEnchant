tag @s add autoen_player_running_tutorial

execute positioned ~ ~100 ~ align y run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invisible:1b,Invulnerable:1b,Rotation:[-180f],NoBasePlate:1b,Tags:["autoen_tutorial_spectator"]}

execute positioned ~ ~100 ~ run summon armor_stand ~-1.8 ~1 ~-3 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["autoen_tutorial_player_model"],Pose:{RightArm:[297f,0f,0f]},Rotation:[-90F],HandItems:[{id:"minecraft:enchanted_book",Count:1b,tag:{StoredEnchantments:[{id:"minecraft:sharpness",lvl:5s}]}},{id:"minecraft:netherite_sword",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:524543}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:524543}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:524543}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"XxNiloGamerxX"}}]}

execute as @e[type=armor_stand,tag=autoen_tutorial_player_model] at @s run setblock ~3 ~ ~ enchanting_table



execute as @e[type=armor_stand,tag=autoen_tutorial_spectator] at @s run tag @s add autoen_run_tutorial