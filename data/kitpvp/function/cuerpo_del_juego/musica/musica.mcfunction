execute as @a[tag=!survival-ejecutandose] if score @s Musica matches 1 at @s run playsound music.creative master @s ~ ~ ~ .7 0 1
execute as @a[tag=survival-ejecutandose] unless data storage supervivencia-zombis {Horda:"5"} unless data storage supervivencia-zombis {Horda:"Completado"} if score @s Musica matches 1 at @s run playsound music.nether.soul_sand_valley master @s ~ ~ ~ 1 0 1
execute as @a[tag=survival-ejecutandose] if data storage supervivencia-zombis {Horda:"5"} if score @s Musica matches 1 at @s run playsound music_disc.13 master @s ~ ~ ~ 9999999999999999999999 0 1
execute as @a[tag=survival-ejecutandose] if data storage supervivencia-zombis {Horda:"Completado"} if score @s Musica matches 1 at @s run playsound music_disc.far master @s ~ ~ ~ 9999999999999999999999 0 1
execute as @a if score @s Musica matches 1..659 run scoreboard players add @s Musica 1
execute as @a if score @s Musica matches 660.. run scoreboard players set @s Musica 1
schedule function kitpvp:cuerpo_del_juego/musica/musica 1s