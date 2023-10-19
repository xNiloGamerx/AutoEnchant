scoreboard players enable @a autoen_tutorial

# Error message
execute as @a[scores={autoen_tutorial=1}] at @s if entity @e[type=armor_stand,tag=autoen_tutorial_spectator] run tellraw @s {"text":"There is already a tutorial running!","color":"gold"}

# Run spawn function
execute as @a[scores={autoen_tutorial=1}] at @s unless entity @e[type=armor_stand,tag=autoen_tutorial_spectator] run function autoenchant:tutorial/spawn_tutorial

# Reset scoreboard of players
execute as @a[scores={autoen_tutorial=1}] at @s run scoreboard players set @s autoen_tutorial 0