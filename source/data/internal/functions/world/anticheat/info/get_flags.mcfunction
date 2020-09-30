#Reset all objective score prior to updating
scoreboard players set @s _ac.flags 0
#ANTICHEAT_FLAG_PLAYER_IGNORE        = 1,
#ANTICHEAT_FLAG_PLAYER_FLYING        = 2,
#ANTICHEAT_FLAG_PLAYER_TELEPORT      = 4
scoreboard players add @s[tag=ANTICHEAT_FLAG_PLAYER_IGNORE] _ac.flags 1
scoreboard players add @s[tag=ANTICHEAT_FLAG_PLAYER_FLYING] _ac.flags 2
scoreboard players add @s[tag=ANTICHEAT_FLAG_PLAYER_TELEPORT] _ac.flags 4