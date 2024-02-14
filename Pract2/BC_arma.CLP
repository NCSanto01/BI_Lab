(defrule regla_1
	(gatillo bloqueado)
=>
	(assert (seguro puesto))
)

(defrule regla_2
	(seguro puesto)
=>
	(assert (quitar seguro))
)

(defrule regla_3
	(arma no_percute)
=>
	(assert (arma no_cargada))
)

(defrule regla_4
	(arma percute)
	(arma no_dispara)
=>
	(assert (problema arma))
)

(defrule regla_5
	(problema arma)
	(bala picada)
=>
	(assert (cambiar bala))
)

(defrule regla_6
	(problema arma)
	(bala no_picada)
=>
	(assert (cambiar percutor))
)

(defrule regla_7
	(problema arma)
	(bala encasquillada)
		
=>
	(assert (problema cargador))
)

(defrule regla_8
	(problema arma)
	(no hay_bala)
		
=>
	(assert (arma no_cargada))
)
