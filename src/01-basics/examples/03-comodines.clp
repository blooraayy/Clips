; src/01-basics/03-comodines.clp

; Caracter '?': sirve para que represente cualquier valor dentro de un patron
(deffacts huespedes
    (huesped Tom Hardy)
    (huesped Tom Hiddleston)
    (huesped Benedict Cumberbatch)
    (huesped Tom Cruise)
)

(defrule existeTom
    (huesped Tom ?apellido)
    =>
    (printout t "Existe algun huesped llamado Tom" crlf)
)