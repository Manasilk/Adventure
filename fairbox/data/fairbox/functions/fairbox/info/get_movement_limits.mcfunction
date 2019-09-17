#These fields control the distance barrier applied to players for movement
# on the horizontal and vertical planes
#Restore default walking/running values
scoreboard players set @s[scores={_FB._T.Update=5}] _FB._LimitH 25
scoreboard players set @s[scores={_FB._T.Update=5}] _FB._LimitV 25
#SPELL_AURA
scoreboard players set @s[tag=!SPELL_AURA_RIDING,scores={_FB._LimitH=..24}] _FB._LimitH 25
scoreboard players set @s[tag=!SPELL_AURA_RIDING,scores={_FB._LimitV=..24}] _FB._LimitV 25
scoreboard players set @s[tag=SPELL_AURA_RIDING,scores={_FB._LimitH=..59}] _FB._LimitH 60
scoreboard players set @s[tag=SPELL_AURA_RIDING,scores={_FB._LimitV=..49}] _FB._LimitV 50

scoreboard players set @s[tag=SPELL_AURA_SPEED,scores={_FB._LimitH=..19}] _FB._LimitH 20
#SPELL_EFFECT
scoreboard players set @s[tag=SPELL_EFFECT_SLIMEBLOCK,scores={_FB._LimitH=..99}] _FB._LimitH 100
scoreboard players set @s[tag=SPELL_EFFECT_SLIMEBLOCK,scores={_FB._LimitV=..99}] _FB._LimitV 100

scoreboard players set @s[tag=SPELL_EFFECT_FLYING,scores={_FB._LimitH=..169}] _FB._LimitH 170
scoreboard players set @s[tag=SPELL_EFFECT_FLYING,scores={_FB._LimitV=..197}] _FB._LimitV 198
#KNOCKBACK_BY_ENTITY
execute if entity @e[type=minecraft:ravager,distance=0..8.100] run scoreboard players set @s _FB._LimitH 35

#These functions are used to register teleportaion effects that warden should not count as cheating
execute if entity @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=SPELL_AURA_TELEPORT] run function fairbox:fairbox/events/set_flag_ignore_player
execute if entity @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=SPELL_EFFECT_ENDER_PEARL] run function fairbox:fairbox/events/set_flag_ignore_player
execute if entity @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=SPELL_EFFECT_CHORUS_FRUIT] run function fairbox:fairbox/events/set_flag_ignore_player
execute if entity @s[tag=!FB_FLAG_PLAYER_IGNORE,tag=rbac.commands] run function fairbox:fairbox/events/set_flag_ignore_player