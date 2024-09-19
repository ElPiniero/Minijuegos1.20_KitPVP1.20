execute anchored feet rotated as @s unless block ^ ^ ^1 #kitpvp:no_trepables anchored feet rotated as @s unless block ^ ^1.68 ^1 #kitpvp:no_trepables run tag @s add trepando 
execute as @s[tag=trepando] run tp @s ~ ~.3 ~
execute as @s[tag=trepando] anchored feet rotated as @s unless block ^ ^1.3 ^1 #kitpvp:no_trepables anchored feet rotated as @s if block ^ ^1.68 ^1 #kitpvp:no_trepables run tp @s ^ ^ ^.2
execute as @s[tag=trepando] anchored feet rotated as @s if block ^ ^ ^1 #kitpvp:no_trepables anchored feet rotated as @s if block ^ ^1.68 ^1 #kitpvp:no_trepables run tag @s remove trepando
execute as @s[tag=trepando,nbt={HurtTime:10s}] run tag @s remove trepando