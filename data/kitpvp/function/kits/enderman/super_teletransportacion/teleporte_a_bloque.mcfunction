scoreboard players add @s Alcance-Bala 1
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run scoreboard players set @s Alcance-Bala 120
execute positioned ^ ^1 ^ if score @s Alcance-Bala matches 120.. run tp @s ~ ~ ~
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 120.. run function kitpvp:kits/enderman/super_teletransportacion/teleporte_a_bloque