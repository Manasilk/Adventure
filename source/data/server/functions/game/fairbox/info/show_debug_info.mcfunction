#/scoreboard objectives setdisplay sidebar _FB.Debug
scoreboard players operation DistancePassed _FB.Debug = @s distance
scoreboard players operation DistanceLimit _FB.Debug = @s _FB._LimitDist
scoreboard players operation FallingDistance _FB.Debug = @s _FB._FreeFall

scoreboard players operation FlagsMask _FB.Debug = @s _FB.Flags
scoreboard players operation PearlUsed _FB.Debug = @s _FB._EnderPearl
scoreboard players operation ChorusUsed _FB.Debug = @s _FB._ChorusFruit