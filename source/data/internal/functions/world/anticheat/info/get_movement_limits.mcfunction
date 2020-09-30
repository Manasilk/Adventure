#These fields control the distance barrier applied to players for movement
# on the horizontal and vertical planes
#Restore default walking/running values
scoreboard players set @s[scores={anticheat_tick=5}] _ac.h_lim 25
scoreboard players set @s[scores={anticheat_tick=5}] _ac.v_lim 25
#SPELL_AURA
scoreboard players set @s[tag=SPELL_AURA_RIDING_MOUNT,scores={_ac.h_lim=0..29}] _ac.h_lim 30
scoreboard players set @s[tag=SPELL_AURA_RIDING_MOUNT,scores={_ac.v_lim=0..49}] _ac.v_lim 50
scoreboard players set @s[tag=SPELL_AURA_RIDING_BOAT,scores={_ac.h_lim=0..215}] _ac.h_lim 216
scoreboard players set @s[tag=SPELL_AURA_RIDING_BOAT,scores={_ac.v_lim=0..29}] _ac.v_lim 30

scoreboard players set @s[tag=SPELL_AURA_SPEED,scores={_ac.h_lim=0..19}] _ac.h_lim 20
#SPELL_EFFECT
scoreboard players set @s[tag=SPELL_EFFECT_SLIMEBLOCK,scores={_ac.h_lim=0..99}] _ac.h_lim 100
scoreboard players set @s[tag=SPELL_EFFECT_SLIMEBLOCK,scores={_ac.v_lim=0..99}] _ac.v_lim 100

tag @s[tag=SPELL_EFFECT_EXPLOSION,predicate=internal:player/data/on_ground] remove SPELL_EFFECT_EXPLOSION
scoreboard players set @s[tag=SPELL_EFFECT_EXPLOSION,scores={_ac.v_lim=0..199}] _ac.v_lim 200
scoreboard players set @s[tag=SPELL_EFFECT_EXPLOSION,scores={_ac.h_lim=0..199}] _ac.h_lim 200

scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_LESSER,scores={_ac.h_lim=0..64}] _ac.h_lim 65
scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_LESSER,scores={_ac.v_lim=0..64}] _ac.v_lim 65
scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_MEDIUM,scores={_ac.h_lim=0..94}] _ac.h_lim 95
scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_MEDIUM,scores={_ac.v_lim=0..94}] _ac.v_lim 95
scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_GREATER,scores={_ac.h_lim=0..119}] _ac.h_lim 120
scoreboard players set @s[tag=SPELL_EFFECT_RIPTIDE_GREATER,scores={_ac.v_lim=0..151}] _ac.v_lim 152

scoreboard players set @s[tag=SPELL_EFFECT_FLYING,scores={_ac.h_lim=0..169}] _ac.h_lim 170
scoreboard players set @s[tag=SPELL_EFFECT_FLYING,scores={_ac.v_lim=0..197}] _ac.v_lim 198
#KNOCKBACK_BY_ENTITY
execute if entity @e[type=minecraft:ravager,distance=0..8.100] run scoreboard players set @s _ac.h_lim 35

function internal:world/anticheat/info/get_distance_limits

#These functions are used to register teleportaion effects that warden should not count as cheating
execute if entity @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=SPELL_EFFECT_TELEPORT] run function internal:world/anticheat/events/set_flag_ignore_player
execute if entity @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=SPELL_EFFECT_ENDER_PEARL] run function internal:world/anticheat/events/set_flag_ignore_player
execute if entity @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=SPELL_EFFECT_CHORUS_FRUIT] run function internal:world/anticheat/events/set_flag_ignore_player
execute if entity @s[tag=!ANTICHEAT_FLAG_PLAYER_IGNORE,tag=account.commands] run function internal:world/anticheat/events/set_flag_ignore_player