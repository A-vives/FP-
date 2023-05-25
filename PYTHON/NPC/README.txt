'''
Hacer NPC que hablen entre ellos y realizen acciones autonomas dependiendo de un algoritmo
este dara resultado a una serie de numeros, ellos encadenaran otra accion dependiendo del resultado,
el numero x en x posicion hacen una cosa
que esa cosa dependa de un numero random y tener acciones con unos condicionales
si el NPC tiene mucha hambre se facilitan las acciones que le hacen comer, en un futuro, tienen dinero, si pueden comer comeran, sino, trabajaran para ganar diner y comer
las acciones tienen un tiempo de accion y el resultado de ellas dependera de las habilidades del npc, 
el resultado sera un score, cuanto mas alto mas subira habilidades y repercutira en alguna variable del algoritmo principal
que le conllevaran a hacer otras acciones diferentes que al principio, pero en si, las mismas, 
cada accion tendrá un id unico, dependiendo de la cantidad de acciones será el resultado del algoritmo del principio

Hacer que tengan inventario, bolcillos, los objetos tienen tamaño valor y desgaste
que tengan entretenimiento que harán cuando esten suplidas sus necesidades basicas: comida y bebida. 
algoritmo:numero de accion: resultado de los score de cada acción, para asi modificar el comportamiento del npc
que la seed del npc sea de 16 bits de largo, se coja un numero del 1 al 10 aleatorio que seran la cantidad de posiciones que estas seran aleatorias del 1 al 16, despues se eleve al numero de accion

quests: 
como hago una linea de tiempo dependiendo de los segundos que muestre las acciones de los npc en tiempo real, con el progreso en porcentage dependiendo el tiempo que tarde? 
cuando un npc no hace nada como hago que le baje el hambre y la sed dependiendo del tiempo que haga

algoritmo- matriz- ia-  para generar un numero aleatorio que decida que accion tomara aleatoria siguiendo la rutina, es decir por ahora 
las unicas acciones aleatorias estaran en el tiempo libre, dentro de unas posibilidades
numero de probabilidad dependiendo de la habilidad para realizar una accion con exito o no, esto repercute al algoritmo raiz del npc


Estadisticas
comida
bebida
energia
entretenimiento


Vamos a empezar haciendole una rutina al npc:
un dia de 24h = 24min
1. duerme 8h - 24h = 16
2. desayunar en "casa" 1h - 15h
3. ir a trabajar - 1h - 14h
4. trabajo 4h - 10h
5. comer 1h - 9h
6. trabajo 4h - 5h 
7. ir a casa 1h - 4h
8. "tiempo libre en casa" 3h
1. dormir 8h **volver a paso 1**

acciones:
dormir
comer
trabajar
ir a casa/trabajo
tiempo libre
    leer libro
    ver pelicula
    jugar con el movil


'''