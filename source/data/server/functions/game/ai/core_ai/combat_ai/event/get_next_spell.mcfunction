tag @s add SMART_EVENT_LOAD_SPELL
scoreboard players add @s spell_id 1
execute if score @s spell_id >= @s spell_scripts run scoreboard players set @s spell_id 0

#Maximum amount of castable spells is 12
tag @s[tag=SPELL_0] remove SPELL_0
tag @s[tag=SPELL_1] remove SPELL_1
tag @s[tag=SPELL_2] remove SPELL_2
tag @s[tag=SPELL_3] remove SPELL_3
tag @s[tag=SPELL_4] remove SPELL_4
tag @s[tag=SPELL_5] remove SPELL_5
tag @s[tag=SPELL_6] remove SPELL_6
tag @s[tag=SPELL_7] remove SPELL_7
tag @s[tag=SPELL_8] remove SPELL_8
tag @s[tag=SPELL_9] remove SPELL_9
tag @s[tag=SPELL_10] remove SPELL_10
tag @s[tag=SPELL_11] remove SPELL_11

tag @s[scores={spell_id=0}] add SPELL_0
tag @s[scores={spell_id=1}] add SPELL_1
tag @s[scores={spell_id=2}] add SPELL_2
tag @s[scores={spell_id=3}] add SPELL_3
tag @s[scores={spell_id=4}] add SPELL_4
tag @s[scores={spell_id=5}] add SPELL_5
tag @s[scores={spell_id=6}] add SPELL_6
tag @s[scores={spell_id=7}] add SPELL_7
tag @s[scores={spell_id=8}] add SPELL_8
tag @s[scores={spell_id=9}] add SPELL_9
tag @s[scores={spell_id=10}] add SPELL_10
tag @s[scores={spell_id=11}] add SPELL_11