tag @s add ENTITY_FLAG_IN_COMBAT
#execute if entity @s[nbt={SelectedItem:{tag:{spell_proc:1b}}}] run function internal:world/spells/check_proc_handler
scoreboard players set @s has_victim 1
advancement revoke @s only internal:world/combat/player.get_victim