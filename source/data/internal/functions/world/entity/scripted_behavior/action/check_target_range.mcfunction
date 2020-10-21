#Store as a temporary reference
scoreboard players operation #temp target_id = @s target_id
#Tag the player whose 'player_id' is matching the executor's (the creature's) 'target_id'
execute as @a[tag=collision.line_of_sight_target,distance=0..31.999] if score @s player_id = #temp target_id run tag @s add creature.find_target_by_id
execute as @e[type=#internal:areat_trigger,tag=ENTITY_FLAG_SPELL_TARGET] if score @s owner_id = #temp target_id run tag @s add creature.find_target_by_id

execute store success score @s[tag=TARGET_AGGRO] has_target if entity @a[tag=creature.find_target_by_id,distance=0..31.199,limit=1]
execute store success score @s[tag=TARGET_DISTANCE_MELEE] has_target if entity @a[tag=creature.find_target_by_id,distance=0..1.199,limit=1]
execute store success score @s[tag=TARGET_PLAYER_RANDOM] has_target if entity @a[tag=collision.line_of_sight_target,sort=random,distance=0..31.999,limit=1]
execute store success score @s[tag=TARGET_POSITION] has_target if entity @e[type=#internal:area_trigger,tag=creature.find_target_by_id,distance=0..31.999,limit=1]

#execute unless score @s[tag=SMARTCAST_DYNAMIC_TARGET] has_target matches 1 run function internal:world/entity/scripted_behavior/action/switch_target
scoreboard players reset #temp target_id