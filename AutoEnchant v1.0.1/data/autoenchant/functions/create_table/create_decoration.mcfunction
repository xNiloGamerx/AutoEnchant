# Summmon itemholder as Armor Stand
execute as @s at @s run summon armor_stand ~0.2 ~-1 ~-0.3 {NoGravity:1b,Invulnerable:1b,Invisible:1b,ShowArms:1b,Pose:{LeftArm:[261f,20f,270f]},Marker:1b,NoBasePlate:1b,Tags:["autoen_item_holder"]}

# Create AutoEnchant Text Display
execute as @s at @s run summon text_display ~ ~1.3 ~ {width:2f,height:1f,billboard:"center",see_through:0b,Tags:["autoen_text_display_title"],text:'[{"text":"Auto","color":"#FFA500"},{"text":"Enchanter","color":"light_purple"}]'}

# Create Enchantment name text display
execute as @s at @s run summon text_display ~ ~1 ~ {billboard:"center",see_through:0b,Tags:["autoen_text_display_enchantment"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,1f,0.1f]},text:'{"nbt":"data.Enchantments[0].id","entity":"@e[type=marker,tag=autoen_data,sort=nearest,limit=1]","color":"aqua"}'}


# Get Enchantment level and store it in scoreboard
execute as @s at @s store result score .temp autoen_enchantment_level run data get entity @s data.Enchantments[0].lvl

# Summon text display with the Enchantment level
execute as @s at @s run summon text_display ~ ~0.7 ~ {billboard:"center",see_through:0b,Tags:["autoen_text_display_enchantment_lvl"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'[{"text":"Level: ","color":"aqua"},{"score":{"name":".temp","objective":"autoen_enchantment_level"},"color":"aqua"}]'}

# Reset .temp scoreboard value
scoreboard players set .temp autoen_enchantment_level 0