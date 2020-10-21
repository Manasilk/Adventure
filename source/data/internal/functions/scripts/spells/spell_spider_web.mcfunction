scoreboard players operation #temp target_id = @s target_id
execute as @a[distance=0..0.5] if score @s player_id = #temp target_id run tag @s add area_trigger.spell_target

#TARGET
tag @a[tag=area_trigger.spell_target,distance=0..0.499,limit=1] add SPELL_EFFECT_SPIDER_WEB

#EFFECTS

#DELETE
execute if entity @a[tag=area_trigger.spell_target,distance=0..0.499] run kill @s

tag @a[tag=creature.find_target_by_id,distance=0..0.5] remove area_trigger.spell_target
scoreboard players reset #temp target_id