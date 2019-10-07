#/scoreboard objectives setdisplay sidebar _FB.Debug
scoreboard players operation PositionX.First _FB.Debug = @s _FB._PosX-0
scoreboard players operation PositionY.First _FB.Debug = @s _FB._PosY-0
scoreboard players operation PositionZ.First _FB.Debug = @s _FB._PosZ-0

scoreboard players operation PositionX.Last _FB.Debug = @s _FB._PosX-1
scoreboard players operation PositionY.Last _FB.Debug = @s _FB._PosY-1
scoreboard players operation PositionZ.Last _FB.Debug = @s _FB._PosZ-1

scoreboard players operation LimitHorizontal _FB.Debug = @s _FB._LimitH
scoreboard players operation LimitVertical _FB.Debug = @s _FB._LimitV
scoreboard players operation FallingDistance _FB.Debug = @s _FB._FreeFall

scoreboard players operation Player._FB.Flags _FB.Debug = @s _FB.Flags
scoreboard players operation Pearl _FB.Debug = @s _FB._EnderPearl
scoreboard players operation Chorus _FB.Debug = @s _FB._ChorusFruit