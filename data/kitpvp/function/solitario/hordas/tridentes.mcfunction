execute if data storage supervivencia-zombis {Horda:"2"} run damage @s 12 trident by @e[type=drowned,limit=1]
execute if data storage supervivencia-zombis {Horda:"3"} run damage @s 14 trident by @e[type=drowned,limit=1]
execute if data storage supervivencia-zombis {Horda:"4"} run damage @s 20 trident by @e[type=drowned,limit=1]
execute if data storage supervivencia-zombis {Horda:"5"} run damage @s 34 trident by @e[type=drowned,limit=1]
execute if entity @e[type=trident,tag=tridente_jefe,distance=..2.3,tag=!yaempalo] if data storage supervivencia-zombis {Horda:"2"} run damage @s 24 trident by @e[type=drowned,limit=1]
execute if entity @e[type=trident,tag=tridente_jefe,distance=..2.3,tag=!yaempalo] if data storage supervivencia-zombis {Horda:"3"} run damage @s 28 trident by @e[type=drowned,limit=1]
execute if entity @e[type=trident,tag=tridente_jefe,distance=..2.3,tag=!yaempalo] if data storage supervivencia-zombis {Horda:"4"} run damage @s 32 trident by @e[type=drowned,limit=1]
execute if entity @e[type=trident,tag=tridente_jefe,distance=..2.3,tag=!yaempalo] if data storage supervivencia-zombis {Horda:"5"} run damage @s 48 trident by @e[type=drowned,limit=1]
tag @e[type=trident,distance=..2.3,tag=!yaempalo] add yaempalo