#  Análisis de Datos en tiempo Real

---

## Objetivo

Desarrollar un dashboard de monitoreo en tiempo real utilizando Python, SQL Server y Power BI mediante DirectQuery, con el objetivo de visualizar de forma continua indicadores relacionados con solicitudes de ventas, reclamos, cancelaciones y operaciones.

El proyecto simula un escenario empresarial en el que los datos son generados continuamente y almacenados en SQL Server. Power BI consulta directamente la base de datos mediante DirectQuery, permitiendo que los cambios realizados en los datos se reflejen dinámicamente en el dashboard.

---

##  Dataset

La base de datos fue creada en SQL Server. Se crea la tabla datos_ventas_directquery, esta  tabla contiene información operacional y comercial generada continuamente. Las Variables principales son:

* FechaHora
* SolicitudesVentas
* ConexionesCanceladas
* ReclamosTotales
* Reclamos24H
* Canton
* CausaReclamo
* Vendedor
* CanalVenta
* EstadoSolicitud
* MotivoCancelacion
* CausaCancelacion
* SolicitudesVE
* OrdenesInstPendientes
* ConexionesNuevasXCanton

Datos simulados:

Los registros son generados mediante Python y enviados a SQL Server aproximadamente cada 5 segundos.

El escenario contempla:

* 3 cantones: Quito, Cuenca y Loja.
* 3 vendedores: Juan, Maria y Pedro.
* 3 canales de venta: WhatsApp, Página web y Call center.
* Diferentes estados de solicitud.
* Diferentes causas y motivos de reclamos.
* Diferentes motivos y causas de cancelación.

La generación continua permite simular un flujo de datos operacional para analizar el comportamiento del negocio en tiempo casi real.

---

##  Analysis

El análisis se desarrolló mediante un dashboard interactivo dividido en cuatro áreas principales.

1. Monitor en Tiempo Real

Permite visualizar los principales indicadores operativos:

* Solicitudes de ventas.
* Conexiones canceladas.
* Reclamos totales.
* Reclamos de las últimas 24 horas.
* Solicitudes VE.
* Órdenes de instalación pendientes.
* Conexiones nuevas.

También permite analizar la evolución temporal y segmentar la información por:

* Cantón.
* Vendedor.
* Canal de venta.
* Estado de solicitud.

2. Análisis Comercial

Permite analizar:

* Solicitudes por vendedor.
* Solicitudes por canal.
* Estado de las solicitudes.
* Solicitudes por cantón.
* Solicitudes VE.
* Conexiones nuevas.
* Cantidad de vendedores activos.

3. Análisis de Reclamos

Se analizaron:

* Reclamos totales.
* Reclamos de las últimas 24 horas.
* Evolución temporal de los reclamos.
* Principales causas de reclamo.
* Reclamos por cantón.
* Reclamos por vendedor.

4. Análisis Operacional

Se analizaron:

* Conexiones canceladas.
* Órdenes de instalación pendientes.
* Solicitudes VE.
* Conexiones nuevas.
* Motivos de cancelación.
* Causas de cancelación.
* Cancelaciones por cantón.
* Evolución temporal de las cancelaciones.

---

##  Modelos Utilizados

 

###     Modelo de monitoreo en tiempo real

Se desarrolló un modelo de Business Intelligence y monitoreo operacional en tiempo real.

La arquitectura utilizada es: Python → SQL Server → Power BI DirectQuery → Dashboard

Python genera continuamente nuevos registros y los inserta en SQL Server. Power BI utiliza DirectQuery para consultar directamente la base de datos, permitiendo visualizar los cambios en el dashboard sin necesidad de importar nuevamente todo el dataset.



---

## Results

* El dashboard permite monitorear continuamente la actividad comercial y operacional a partir de los datos generados.

* Uno de los principales resultados del proyecto fue comprobar el funcionamiento de una arquitectura de análisis en tiempo casi real donde Python genera nuevos registros → SQL Server los almacena → Power BI los consulta mediante DirectQuery → las visualizaciones se actualizan dinámicamente.


* La actualización dinámica permite observar cómo cambian los principales indicadores a medida que se generan nuevos registros.

---

##  Insights Clave

* El uso de DirectQuery permite consultar directamente los datos almacenados en SQL Server sin depender de una carga estática del dataset.
* La generación continua de registros permite simular un escenario de monitoreo operacional en tiempo real.
* El dashboard permite analizar las solicitudes desde diferentes dimensiones: tiempo, cantón, vendedor, canal y estado.
* Los reclamos pueden analizarse según su evolución temporal, causa, cantón y vendedor.
* Las cancelaciones pueden analizarse a partir de sus motivos y causas.
* La combinación de indicadores, gráficos y filtros permite realizar un seguimiento interactivo de la operación.
* La arquitectura desarrollada demuestra la integración entre generación de datos, almacenamiento, consulta y visualización.

---

##  Conclusión

 El proyecto demuestra la implementación de un sistema de Business Intelligence orientado al monitoreo en tiempo real, integrando Python, SQL Server y Power BI.

 La utilización de DirectQuery permite conectar el dashboard directamente con la base de datos y visualizar los cambios generados continuamente.


Además, representa un escenario práctico similar al que puede encontrarse en áreas comerciales, operaciones y atención al cliente donde es necesario monitorear indicadores de manera continua.



---

##  Future work

* Incorporar una fuente de datos real en lugar de datos simulados.
* Implementar alertas para detectar incrementos importantes en reclamos o cancelaciones.
* Incorporar indicadores de variación respecto al período anterior.
* Agregar métricas de rendimiento por vendedor y canal.
* Incorporar análisis de tendencias.
* Implementar un sistema de almacenamiento histórico más robusto.
* Integrar APIs o fuentes externas de datos.
* Incorporar streaming mediante tecnologías especializadas para escenarios de tiempo real a mayor escala.
* Implementar controles de calidad y validación de datos.
* Agregar indicadores de última actualización y cantidad de registros recibidos.



##  Technologies

* Python
* PyODBC
* Pandas
* SQL Server
* Power BI
* DirectQuery
* DAX
* Power Query

---
