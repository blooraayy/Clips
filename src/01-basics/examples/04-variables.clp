; src/01-basics/04-variables.clp

; Imprimir una variable en la salida por consola
(deffacts huespedes
    (huesped Tom Hardy)
    (huesped Tom Hiddleston)
    (huesped Benedict Cumberbatch)
    (huesped Tom Cruise)
)

(defrule existeTom
    (huesped Tom ?apellido)
    =>
    (printout t "Existe algun huesped llamado Tom, y se apellida " ?apellido crlf)
)

; Eliminar o modificar hechos
(defrule eliminarHuesped
    ?huesped <- (huesped Tom Cruise) ; '<-' almacena el valor en la variable ?huesped
    => 
    (retract ?huesped)
    (printout t "Se ha eliminado el huesped Tom Cruise" crlf)
)