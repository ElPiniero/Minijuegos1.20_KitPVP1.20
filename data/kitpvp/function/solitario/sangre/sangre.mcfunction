summon item_display ~ ~1 ~ {Tags:["Sangre","nuevo"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.1f,0f],scale:[.6f,.6f,.6f]},item:{id:"minecraft:player_head",count:1b,components:{"minecraft:profile":{id:[I;548689313,360662868,-1841692132,12141077],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWU2ODkzMzdjZDY2YWQyOWE2MzJhNGNiMDVlZWE0MmVjOGExNDA2YzJkMTAyODQ0NzlkYTA2OTZhOWIyYjlhMSJ9fX0="}]}}}}

data merge storage supervivencia-z {Sangre:{x:0d,y:0d,z:0d}}
scoreboard players set #operacion Conteo -1
execute store result score #motion-sangre Conteo run random value 200..665
execute if predicate kitpvp:50 run scoreboard players operation #motion-sangre Conteo *= #operacion Conteo
execute store result storage supervivencia-z Sangre.x double 0.001 run scoreboard players get #motion-sangre Conteo
execute store result score #motion-sangre Conteo run random value 200..465
execute store result storage supervivencia-z Sangre.y double 0.001 run scoreboard players get #motion-sangre Conteo
execute store result score #motion-sangre Conteo run random value 200..665
execute if predicate kitpvp:50 run scoreboard players operation #motion-sangre Conteo *= #operacion Conteo
execute store result storage supervivencia-z Sangre.z double 0.001 run scoreboard players get #motion-sangre Conteo
function kitpvp:solitario/sangre/item with storage supervivencia-z Sangre

function kitpvp:solitario/sangre/textura
data get entity @n[type=item,tag=Sangre,tag=nuevo] Motion
ride @n[type=item_display,tag=Sangre,tag=nuevo] mount @n[type=item,tag=Sangre,tag=nuevo]
tag @n[type=item_display,tag=Sangre,tag=nuevo] remove nuevo
tag @n[type=item,tag=Sangre,tag=nuevo] remove nuevo

playsound entity.salmon.hurt master @a ~ ~ ~ .7 0
playsound block.honey_block.break master @a ~ ~ ~ .7 0.7