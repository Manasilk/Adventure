#Reset all objective score prior to updating
scoreboard players set @s _FB.Flags 0
#FB_FLAG_PLAYER_IGNORE        = 1,
#FB_FLAG_PLAYER_FLYING        = 2,
#FB_FLAG_PLAYER_TELEPORT      = 4
scoreboard players add @s[tag=FB_FLAG_PLAYER_IGNORE] _FB.Flags 1
scoreboard players add @s[tag=FB_FLAG_PLAYER_FLYING] _FB.Flags 2
scoreboard players add @s[tag=FB_FLAG_PLAYER_TELEPORT] _FB.Flags 4