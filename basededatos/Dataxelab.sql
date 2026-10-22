CREATE DATABASE Dataxelab;
GO

USE Dataxelab;
GO

CREATE TABLE datos_ventas_directquery (
    FechaHora DATETIME2,
    SolicitudesVentas INT,
    ConexionesCanceladas INT,
    ReclamosTotales INT,
    Reclamos24H INT,
    Canton VARCHAR(50),
    CausaReclamo VARCHAR(100),
    Vendedor VARCHAR(50),
    CanalVenta VARCHAR(50),
    EstadoSolicitud VARCHAR(50),
    MotivoCancelacion VARCHAR(100),
    CausaCancelacion VARCHAR(100),
    SolicitudesVE INT,
    OrdenesInstPendientes INT,
    ConexionesNuevasXCanton INT
);
GO