;  src/01-basics/01-hechos.clp

; Introducir un hecho
(assert (color tomate rojo))

; Introducir varios hechos en una misma función
(assert 
    (color tomate rojo)
    (color lechuga verde)
    (color manzana amarilla)
)

; Mostrar todos los hechos 
(facts)

; Eliminar hechos
(retract 1) ; elimina el primer hecho
(retract color tomate rojo) ; elimina el hecho en específico

; Los hechos aceptan diferentes tipos de datos
(assert (color tomate rojo)) ; string
(assert (color tomate 1)) ; integer
(assert (color tomate 1.5)) ; float
(assert perro) ; symbol, el primer campo de un hecho siempre es un símbolo

; Fijar el estado de un hecho
(deffacts hechosIniciales
    (color luz rojo)
    (longitud carretera 220)
)