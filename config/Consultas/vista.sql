SELECT
ordenservicio.orden,
servicio.descripcion as tarea,
DATE_FORMAT(ordenservicio.horaInicio,'%d-%m-%Y %H-%i-%s') as inicio,
DATE_FORMAT(ordenservicio.horaFin,'%d-%m-%Y %H-%i-%s') as fin,
TIME_FORMAT(SEC_TO_TIME(TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)),'%H-%i-%s') as tiempoTranscurrido,
TIME_FORMAT(SEC_TO_TIME((
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
)),'%H-%i-%s') as tiempoPausas,
TIME_FORMAT(
SEC_TO_TIME((TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)-
(
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
))),'%H-%i-%s') as tirmpoReal,
TIME_FORMAT(SEC_TO_TIME(servicio.tiempoEstandar*60),'%H-%i-%s') as tiempoEstandar,

(
FORMAT((
(servicio.tiempoEstandar*60)/ 
(TIMESTAMPDIFF(SECOND,ordenservicio.horaInicio,ordenservicio.horaFin)-
(
SELECT
IFNULL(SUM(TIMESTAMPDIFF(SECOND,pausa.horaInicio,pausa.horaFin)),0)
FROM
pausa
WHERE ordenservicio = ordenservicio.id
)
))*100,2)
) as eficiencia,



ordenservicio.estado,
operador.descripcion as operador
FROM
ordenservicio
INNER JOIN servicio on ordenservicio.servicio = servicio.id
INNER JOIN operador on ordenservicio.operador = operador.id
AND estado = 'POR FACTURAR' 