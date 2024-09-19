#give @p snow_golem_spawn_egg{CanPlaceOn:["#kitpvp:colocables"],EntityTag:{id:"snow_golem",Pumpkin:0,DeathLootTable:"kitpvp:entities/zombi",Health:100,PersistenceRequired:1b,Silent:1b,Tags:["Torreta"],active_effects:[{id:"invisibility",duration:-1,amplifier:0,show_particles:0b}],Attributes:[{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.max_health",Base:100d}]},display:{Name:'[{"text":"Torreta","italic":false,"color":"red"}]'}} 1
function kitpvp:kits/ine-soldado
team join Supervivientes @s
execute as @s[tag=!activado] run summon interaction ~ ~ ~ {height:.5f,width:1f,Tags:["Cerebro_Torreta"]}
execute as @s[tag=!activado] run summon item_display ~ ~1.75 ~ {item:{id:"minecraft:observer",count:1b},Tags:["Cabeza_Torreta"],teleport_duration:1}
execute as @s[tag=!activado] run summon item_display ~ ~.8 ~ {item:{id:"minecraft:stone_brick_wall",count:1b},Tags:["Cuerpo_Torreta"],teleport_duration:1}
execute as @s[tag=!activado] run summon item_display ~ ~.5 ~ {item:{id:"minecraft:deepslate_tile_slab",count:1b},Tags:["Pies_Torreta"],teleport_duration:1}
execute as @s[tag=!activado] positioned ~ ~1.75 ~ store result score @e[tag=Cabeza_Torreta,limit=1,sort=nearest,distance=...9] INESoldado run scoreboard players get @s INESoldado
execute as @s[tag=!activado] positioned ~ ~.8 ~ store result score @e[tag=Cuerpo_Torreta,limit=1,sort=nearest,distance=...9] INESoldado run scoreboard players get @s INESoldado
execute as @s[tag=!activado] positioned ~ ~.5 ~ store result score @e[tag=Pies_Torreta,limit=1,sort=nearest,distance=...9] INESoldado run scoreboard players get @s INESoldado
execute as @s[tag=!activado] store result score @e[tag=Cerebro_Torreta,limit=1,sort=nearest,distance=...9] INESoldado run scoreboard players get @s INESoldado
execute as @s[tag=!activado] run ride @s mount @e[tag=Cerebro_Torreta,limit=1,sort=nearest,distance=...9]
execute as @s[tag=!activado] positioned ~ ~1.75 ~ anchored eyes rotated as @s if score @e[tag=Cabeza_Torreta,limit=1,sort=nearest,distance=...9] INESoldado = @s INESoldado run tp @e[tag=Cabeza_Torreta,limit=1,sort=nearest,distance=...9] ~ ~ ~ ~ ~
execute as @s[tag=!activado] positioned ~ ~.8 ~ if score @e[tag=Cuerpo_Torreta,limit=1,sort=nearest,distance=...9] INESoldado = @s INESoldado run tp @e[tag=Cuerpo_Torreta,limit=1,sort=nearest,distance=...9] ~ ~ ~ ~ ~
execute as @s[tag=!activado] positioned ~ ~.5 ~ rotated ~ 0 if score @e[tag=Pies_Torreta,limit=1,sort=nearest,distance=...9] INESoldado = @s INESoldado run tp @e[tag=Pies_Torreta,limit=1,sort=nearest,distance=...9] ~ ~ ~ ~ ~
execute as @s[tag=!activado] run playsound item.trident.return master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 0
execute as @s[tag=!activado] run playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 0
execute as @s[tag=!activado] run playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 1
execute as @s[tag=!activado] run playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
execute as @s[tag=!activado] run tag @s add activado