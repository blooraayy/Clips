(deffacts lista
    (lista a b c d e f g)
)

; Regla para mostrar el primer elemento de la lista
(defrule mostrarPrimero
    (lista ?primero $?resto)
    =>
    (printout t "El primer elemento de la lista es: " ?primero crlf)
)

; Regla para mostrar el ultimo elemento de la lista
(defrule mostrarUltimo
    (lista $?resto ?ultimo)
    =>
    (printout t "El ultimo elemento de la lista es: " ?ultimo crlf)
)

; Regla para intercambiar el primer y ultimo elemento de la lista
(defrule intercambiarPrimeroyUltimo
    (lista ?primero $?resto ?ultimo)
    =>
    (assert(lista ?ultimo $?resto ?primero))
    (printout t "La lista con el primer y ultimo elemento intercambiados es: " ?ultimo " " $?resto " " ?primero crlf)
)