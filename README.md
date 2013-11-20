Sistemas y Tecnologías Web
==========================
David Hernández Bethencourt

Práctica 7: TicTacToe usando DataMapper
---------------------------------------
La práctica consiste en añadir una base de datos a la aplicación [TicTacToe](https://github.com/crguezl/tictactoe-1), de manera que se lleve la cuenta de los usuarios registrados, las partidas jugadas, ganadas y perdidas.
Para ello emplearemos DataMapper en Sinatra y mejoraremos las hojas de estilo empleando [SAAS](http://sass-lang.com/).
Finalmente, desplegaremos la aplicación mediante [Heroku](http://www.heroku.com/).

Sinatra
-------
> Sinatra es un framework para aplicaciones web de software libre y código abierto, y lenguaje específico del dominio escrita en Ruby. Es una alternativa a otros frameworks para aplicaciones web como Ruby on Rails, Merb, Nitro, Camping y Rango. Sinatra depende de Rack interfaz de servidor web.
Diseñado y desarrollado por Blake Mizerany, Sinatra es pequeño y flexible. Sinatra no sigue el típico patrón modelo vista controlador que se ve en otros frameworks, como Ruby on Rails. En su lugar, Sinatra se enfoca en la "rápida creación de aplicaciones web en Ruby con el mínimo esfuerzo."
Algunas destacadas compañías que usan Sinatra son BBC, Engine Yard, Heroku, GitHub, and Songbird. Heroku provee la mayor parte del apoyo para el desarrollo de Sinatra.
Mizerany y Adam Wiggins de Heroku introdujeron y hablaron sobre Sinatra en RubyConf 2008.

Fuente: [Sinatra - Wikipedia](http://es.wikipedia.org/wiki/Sinatra_\(software\))

DataMapper
----------
> DataMapper is an Object Relational Mapper written in Ruby. The goal is to create an ORM which is fast, thread-safe and feature rich.

Fuente: [DataMapper.org](http://datamapper.org/)

SASS
----
> Sass (Syntactically Awesome Stylesheets) es un lenguaje de hoja de estilos inicialmente diseñado por Hampton Catlin y desarrollado por Nathan Weizenbaum. Después de sus versiones iniciales, Nathan Weizenbaum y Chris Eppstein han contiuado extendiendo Sass con SassScript, un lenguaje de script simple, usado en los ficheros Sass.
Sass es un metalenguaje de Hojas de Estilo en Cascada (CSS). Es un lenguaje de script que es interpretado a CSS. SassScript es el lenguaje de script en si mismo. Sass consiste en dos sintaxis. La sintaxis original, llamada "the indented syntax (la sintaxis indentada)" que usa una sintaxis similar al Haml. Este usa la indentación para separar bloques de codigo y el caracter nueva línea para separar reglas. La sintaxis mas nueva, SCSS usa el formato de bloques como CSS. Este usa llaves para denotar bloques de código y punto y coma (;) para separar las líneas dentro de un bloque. La sintaxis indentada y los ficheros SCSS tienen las extensiones .sass y .scss respectivamente.

Fuente: [SAAS - Wikipedia](http://es.wikipedia.org/wiki/Sass_\(lenguaje_de_hojas_de_estilo\))

Instrucciones
-------------
**Para ejecutar localmente**

1. Clona este repositorio para disponer del código:

        $ git clone git@github.com:DavidHerBet/SYTW-pr7-SinatraDataMapper.git

2. Instala las gemas correspondientes para que todo funcione correctamente:

        $ bundle install

3. Ejecuta el programa de forma manual o mediante Rake:

        $ rackup
        $ rake

5. Abre el navegador y ve al puerto 9292 para ver la aplicación:

        $ http://localhost:9292/

6. Visualiza los estilos y juega al tres en raya. Si te creas un usuario, se guardarán los datos de tus partidas. Para ello deberás registrarte yendo al enlace "Signup" y automáticamente se te creará la cuenta y se logueará.

7. Consulta los datos de las partidas de otros jugadores yendo al enlace "Login".

**Para ver la aplicación desplegada**
1. Abre el navegador y accede a [DMSinatra en Heroku](http://david-herbet-dmsinatra.herokuapp.com/):

        http://david-herbet-dmsinatra.herokuapp.com/

2. Comprueba que todo funciona correctamente

---
Universidad de La Laguna  
Escuela Técnica Superior de Ingeniería Informática
