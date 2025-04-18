(deffacts hechosIniciales
    (rectangulo A 9 6)
    (rectangulo B 7 5)
    (rectangulo C 6 9)
    (rectangulo D 2 5)
)

; Regla para inicializar suma total de las areas
(defrule inicializarSuma
    (not (sumatotal ?))
    =>
    (assert (sumatotal 0))    
)

; Regla para hallar el area de cada rectangulo
(defrule calcularArea
    (rectangulo ?n ?b ?h)
    => 
    (assert(area ?n (* ?b ?h)))
)

; Regla cuyo resultado sea la suma de todas las areas de los rectangulos
(defrule sumarAreas
    ?s <- (sumatotal ?valor)
    ?a <- (area ?n ?area)
    => 
    (retract ?s)
    (retract ?a)
    (assert (sumatotal (+ ?valor ?area)))

)