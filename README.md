# Pruebas para Challenge de Falabella

Este repositorio contiene las pruebas automatizadas para el challenge de Falabella

## KARATE

En la siguiente dirección puede encontrar toda la información relacionada con nuestra herramienta de automatización de pruebas.

https://github.com/intuit/karate

---

## Requerimientos

Se deben instalar los siguientes programas:

Java 8 o superior
JDK de Java de la misma versión instalada
Apache Maven 3.6.x
Se recomienda instalar IntelliJ IDEA versión Community como entorno de desarrollo.
Se sugiere instalar Git Bash como consola para líneas de comando
---

## Configuraciones

Se deben realizar y validar las siguientes configuraciones:

Ubique dentro de la carpeta de Apache Maven la carpeta conf y con un editor de texto abra el archivo settings.
Edite el archivo settings en la opción mirrors, agregando la siguiente dirección:

     <mirrors>
       <mirror>
        <id>Local_Repo</id>
          <mirrorOf>*</mirrorOf>
         <name>Local_Repo</name>
         <url>https://repo1.maven.org/maven2/</url>
       </mirror>
     </mirrors>
Ingrese a variables de entorno del sistema y cree las variables **JAVA_HOME** y **M2_HOME** ubicando la ruta
donde se encuentran el archivo JDK de Java y de el de Maven respectivamente.

Agregue ambas variables al Path de las Variables delsistema de la siguente manera: **%M2_HOME%\bin** y **%JAVA_HOME%\bin**.

Verifique desde una consola le versión de Java y Maven respectivamente para validar que la instalación y configuración
quedaron correctamente.

En el IntelliJ IDEA descargue el plugin de **Cucumber for Java**, desde la opción File>Settings>Plugins.

Por último cree una carpeta en C:\ con un nombre corto para su repositorio local.

---
