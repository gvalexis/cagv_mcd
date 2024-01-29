# Tarea 1

## Base de datos a usar 
### [The Ultimate UFC Archive (1993-2023)](https://www.kaggle.com/datasets/orcldsapp11557722/the-ultimate-ufc-archive-1993-2023)

La base de datos que utilizare yo es UFC-Fight historical data from 1993 to 2021, fueron extraidos de la paguina web kaggle la cual nos comenta que estos datos son una lista de todas las peleas de UFC en la historia de la organización. Cada fila contiene información sobre ambos peleadores, detalles de la pelea y el ganador.Estab base de datos contiene 4 tablas

* events: Detalles clave de cada evento de UFC, como título, fecha, ubicación y estado de cancelación.
    - event_id: alfanumerico 
    - title: alfanumerico
    - date: fecha
    - location: alfanumerico
    - canceled: boleano
* fighters: Descubre los perfiles biográficos y estadísticos de cada peleador. Revela sus victorias, derrotas, técnicas entre otras

    - fighter_id: alfanumerico
    - name:	alfanumerico
    - birthdate: fecha	
    - aka: alfanumerico	
    - class_weight:	alfanumerico
    - wins:	entero
    - losses: entero	
    - draws: entero	
    - country: alfanumerico 	
    - city:	alfanumerico
    - weight (lbs):	entero
    - sex:	alfanumerico
    - height (cm): decimal

* fights: esta tabla xplora los resultados de las peleas, los participantes, los detalles de cada asalto y las formas de victoria.
    - fight_id: alfanumerico
    - event_id: alfanumerico	
    - left_fighter_id: alfanumerico	
    - left_fighter_name: alfanumerico	
    - right_fighter_id: alfanumerico	
    - right_fighter_name: alfanumerico	
    - winner: alfanumerico	
    - winner_name: alfanumerico	
    - is_main_event: boleano
    - match: entero   
    - round: entero	
    - time: hora	
    - method: alfanumerico	
    - weight_class: alfanumerico	
    - referee_id: alfanumerico	
    - referee_name: alfanumerico
* referees: Esta tabla contiene la infromacion de los referees de la UFC
    - referee_id: Alfanumerico	
    - name: Alfanumerico	
    - birthdate: Fecha	
    - aka: Alfanumerico
    - n_fights: entero	
    - ko_tko: entero	
    - submission: entero	
    - decision: entero	
    - draws: entero	
    - no_contests: entero	
    - disqualifications: entero	
    - country: alfanumerico	
    - city: alfanumerico


## SGDB
### SQL Server management 

Microsoft nos describe a SQL server management como un entorno integrado para administrar cualquier infraestructura de SQL, desde SQL Server a Azure SQL Database. SSMS proporciona herramientas para configurar, supervisar y administrar instancias de SQL Server y bases de datos. Use SSMS para implementar, supervisar y actualizar los componentes de nivel de datos que usan las aplicaciones, además de compilar consultas y scripts.

SQL Server Management se compone de:

* Explorador de objetos: Este componente proporciona una vista jerárquica de todos los objetos de una instancia de SQL Server, como bases de datos, tablas, vistas, procedimientos almacenados y funciones.
* Editor de consulta: Este componente permite escribir, editar y ejecutar consultas SQL.
* Visor de resultados: Este componente muestra los resultados de las consultas ejecutadas.
* Herramientas de diseño: Estas herramientas permiten diseñar bases de datos, tablas y otras estructuras de datos.


