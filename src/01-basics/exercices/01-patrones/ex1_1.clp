; Hechos iniciales
(deffacts frutas
    (fruta pera calorias 23)
    (fruta manzana calorias 45)
    (fruta fresa calorias 60)
    (fruta platano calorias 18)
    (fruta ciruela calorias 30)
)

; Regla para mostrar por pantalla las frutas con sus calorias
(defrule mostrarCalorias
    ?f <- (fruta ?nombre calorias ?calorias)
    =>
    (printout t "La fruta llamada " ?nombre " tiene " ?calorias " calorias." crlf)
)