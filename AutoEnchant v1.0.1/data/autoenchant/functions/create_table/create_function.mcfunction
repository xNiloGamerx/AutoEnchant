# Spawn marker
execute at @s align xyz positioned ~0.5 ~ ~0.5 run summon marker ~ ~ ~ {Glowing:1b,Tags:["autoen_data", "autoen_spawned"]}

# Kill book after marker spawn
kill @s

# TP marker up if it was spawned false
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] if data entity @s Tags at @s unless block ~ ~-0.3 ~ enchanting_table run tp @s ~ ~0.8 ~

# Set the Enchantment from book to marker data
data modify entity @e[type=marker, tag=autoen_data, tag=autoen_spawned, limit=1, sort=nearest] data.Enchantments set from entity @s Item.tag.StoredEnchantments

# Summon interaction for player interaction
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] at @s run summon interaction ~ ~-1 ~ {width:1.1f,height:1f,response:1b,Tags:["autoen_interaction"]}

# Run decoration function
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] run function autoenchant:create_table/create_decoration

# Make creation sound
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] run playsound minecraft:block.beacon.activate ambient @a[distance=..5] ~ ~ ~ 0.4 2

# Add used Tag to marker
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] run tag @s add autoen_used_marker

# Remove spawed Tag
execute as @e[type=marker, tag=autoen_data, tag=autoen_spawned] run tag @s remove autoen_spawned