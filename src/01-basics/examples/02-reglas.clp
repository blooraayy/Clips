; src/01-basics/02-reglas.clp

; Reglas: si cumplen ciertas condiciones, se ejecutan ciertos comandos
; Esta formada por un separador '=>', donde a la izquierda estan las condiciones y a la derecha las accionesa ejecutar si se cumplen las condiciones
; Las reglas se definen con 'defrule' y se ejecutan con 'run'

(deffacts hechosIniciales
    (color luz roja)
    (color luz verde)
)

(defrule comprobarPaso
    (color luz verde)
    =>
    (assert (puedePasar si)) ; si se cumple la condicion, se añadirá este hecho
    (printout t "Puede pasar" crlf) ; imprime el mensaje en la consola
)

; Prioridad en las reglas
(defrule comprobarPaso2
    (declare (salience 1)) ; prioridad 1, se ejecuta primero
    (color luz roja)
    =>
    (assert (puedePasar no))
    (printout t "No puede pasar" crlf) ; imprime el mensaje en la consola
)