tag @s add ENTITY_FLAG_IN_COMBAT
execute if entity @s[nbt={SelectedItem:{tag:{spell_proc:1b}}}] run function server:game/spells/check_proc_handler
scoreboard players set @s _h.has_victim 1
advancement revoke @s only server:internal/combat/player.get_victim