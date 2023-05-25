Actividad 5.1 XML I
Realiza las siguientes actividades sobre XML y DTSs.
1) (1 punto) Genera un documento XML de ejemplo que sea válido con respecto al
siguiente DTD.
<!ELEMENT mensaje (email|carta)>
<!ELEMENT email (cabecera,asunto?, texto+) >
<!ATTLIST email respuesta(si|no)"no">
<!ELEMENT carta (encabezado,texto)>
<!ATTLIST carta respuesta(si|no)"no">
<!ELEMENT cabecera (emisor,receptor*,fecha?)>
<!ELEMENT asunto (#PCDATA)>
<!ELEMENT texto (#PCDATA|saludo)*>
<!ELEMENT encabezado (emisor,receptor*,fecha)>
<!ELEMENT emisor (#PCDATA)>
<!ELEMENT receptor (#PCDATA)>
<!ELEMENT fecha (#PCDATA)>
<!ELEMENT saludo (#PCDATA)>














2) (1 punto) Dado el siguiente fragmento XML, que representa la información relativa
a los partidos jugados en una temporada en el torneo de rugby de las seis naciones,
genera el DTD que mejor lo valide.
<?xml version="l.O"?>
<temporada año="2000">
<jornada numero="l">
    <partido numero="l">
        <fecha>2000-02-02</fecha>
        <estadio espectadores="49000">Lansdowne Road</estadio>
        <local>Irlanda</local>
        <visitante>Inglaterra</visitante>
        <resultado 10cal="17" visitante="6" />
    </partido>
    <partido numero="2">
        <fecha>2000-02-03</fecha>
        <estadio>El parque de los príncipes</estadio>
        <local>Francia</local>
        <visitante>Gales</visitante>
        <aplazado />
    </partido>
    ...
        </jornada>
    <jornada numero="2">
    ...
    </jornada>
</temporada>
Dónde los ... significa qué puede haber más información de los elementos correctos.
Se cumplen las siguientes condiciones:
A. Una jornada tiene 3 partidos.
B. Una temporada tiene 5 jornadas.
C. Si un partido se juega, aparece la etiqueta <resultado>, con los puntos del
equipo local y del visitante, así como el atributo espectadores del elemento
<estadio>, que representa el público asistente; y si se suspende, aparece
<aplazado> y no aparece espectadores.
D. Los países que juegan son siempre los mismos: Inglaterra, Francia, Irlanda,
Escocia, Gales e Italia.


















3) (1 punto) Dado el siguiente documento XML, donde se almacenan datos
relacionados de una librería con libros de informática, crea el documento OTO
asociado.
XML:
<?xml version= "1.0" encoding= "utf-8"?>
<librería>
    <libro>
        <título>Lenguaje de marcas</título>
        <autor>Autor2</autor>
        <autor>Autorl</autor>
        <ISBN></ISBN>
        <páginas>158</páginas>
<precio>15</precio>
    </libro>
    <libro>
        <título>XML</título>
        <autor>Autorl</autor>
        <ISBN>94-567-345-6</ISBN>
        <páginas>278</páginas>
        <precio>30</precio>
    </libro>
</librería>










4) (2 puntos) Se quiere guardar en fonnato XML la información relativa a tickets de
compra, según las siguientes especificaciones:
● Datos del ticket
    ○ Código del ticket, en un atributo requerido de tipo id
    ○ Fecha y hora
    ○ Precio total:
        ■ Precio sin IVA total
        ■ Cantidad IVA
        ■ PVP total
        ■ La moneda se guarda como atributo de tipo token
     o Forma de pago: puede ser en efectivo o con tarjeta
        ■ Si es con tarjeta:
        ● Tipo de tarjeta, en un atributo
        ● 12 asteriscos y los cuatro últimos dígitos de la tarjeta,
            en un atributo
        ● Nombre del cliente

● Datos del comercio
    ○ Nombre
    ○ Dirección completa
    ○ CIF
    ○ Teléfono
● Datos de la compra:
    ○ Líneas de compra:
        ■ Nombre del artículo
        ■ Cantidad
        ■ Precio unitario (sin IVA)
        ■ IVA
        ■ PVP

Escribe un documento XML con datos de ejemplo que se ajuste a las
especificaciones dadas. Crea el DTD que valide las especificaciones dadas.











5) (2,5 puntos) Realiza un DTD que valide la información de la empresa de
transporte. Realiza un XML con varios datos de ejemplo que sea válido.
Empresa de transporte.
Quieres informatizar la gestión de una empresa de transporte que distribuye
paquetes por toda España. Los encargados de llevar los paquetes son los

camioneros,
    identificación, 
    nombre, 
    número de teléfono, 
    dirección, 
    salario y
    ciudad en la que viven se deben mantener.

De los paquetes transportados, es interesante conocer el 
    código del paquete, 
    la descripción, 
    el destinatario y 
    la dirección del destinatario. 

Un camionero distribuye muchos paquetes y un paquete solo puede ser distribuido por un camionero.

De las provincias a las que llegan los paquetes, 
es interesante mantener el 
    código de provincia y 
    el nombre. 

Un paquete solo puede llegar a una provincia. Sin embargo, una provincia puede recibir varios paquetes.

De los camiones que llevan los camioneros, es interesante conocer 
la matrícula, 
el modelo, 
el tipo y 
la potencia.
 
Un camionero puede conducir diferentes camiones endiferentes fechas y un camión puede ser conducido por varios camioneros.






6) (2,5 puntos) Realiza un DTD que valide la información de la empresa de
transporte. Realiza un XML con varios datos de ejemplo que sea válido.
Concesionario de automóviles.
Los clientes acuden a un concesionario de automóviles para comprar coches. 
De cada coche, es interesante conocer la matrícula, el modelo, la marca y el color.
Un cliente puede comprar varios coches en el concesionario. 
Cuando un cliente compra un coche, se hace un archivo en el concesionario con la siguiente información:
    identificación, 
    nombre, 
    apellido, 
    dirección 
    número de teléfono.
Los coches que vende el concesionario pueden ser nuevos o usados (de segundamano). 

De los coches nuevos, es interesante saber el número de unidades que hay en el concesionario. 

De los coches usados, es interesante conocer el número de kilómetros que han recorrido.

El concesionario también tiene un taller donde los mecánicos reparan los coches que los clientes conducen. 
Un mecánico repara varios coches durante el día y un coche puede ser reparado por varios mecánicos. 
Los mecánicos tienen una identificación, nombre, apellido, fecha de contratación y salario. 
También se desea guardar la fecha en que se reparó cada vehículo y el número de horas que se tardó en arreglar cada coche.

Finalmente entrega un zip con una carpeta y sus archivos correspondientes por cada apartado. 
La carpeta debe tener de nombre el número del apartado.
No entregar este archivo zip según se solicita equivale a no entregar la actividad y tendrá una nota de cero. 
Si no hay una carpeta con el número del apartado y dentro los archivos de la solución de la sección, 
equivaldrá a un cero en la actividad. Cualquier carpeta con un nombre
diferente al número del apartado o archivos que no estén en la carpeta correcta serán
ignorados como solución.
Prestad mucha atención a no hacer las actividades en grupo o a usar chatGPT, si el código
facilitado es similar se entenderá que habéis copiado y se producirá una nota de cero en la
actividad y en la actitud de la evaluación.