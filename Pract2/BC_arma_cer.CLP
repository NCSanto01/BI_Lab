(defrule regla_1
	(declare (CF 0.9))
	(gatillo bloqueado)
=>
	(assert (seguro puesto))
)

(defrule regla_2
	(declare (CF 0.1))
	(gatillo bloqueado)
=>
	(assert (problema gatillo))
)

(defrule regla_4
	(declare (CF 1))
	(seguro puesto)
=>
	(assert (quitar seguro))
)

(defrule regla_5
	(declare (CF 0.2))
	(arma no_dispara)
	(arma percute)
=>
	(assert (problema percutor))
)

(defrule regla_6
	(declare (CF 0.1))
	(arma no_dispara)
	(arma percute)
=>
	(assert (problema bala))
)

(defrule regla_7
	(declare (CF 0.7))
	(arma no_dispara)
	(arma percute)
=>
	(assert (arma no_cargada))
)

(defrule regla_8
	(declare (CF 1))
	(arma cargada)
	(arma no_cargada)
=>
	(assert (error humano))
)

(defrule regla_9
	(declare (CF 0.3))
	(arma no_dispara)
	(arma no_percute)
=>
	(assert (gatillo bloqueado))
)

(defrule regla_10
	(declare (CF 0.4))
	(arma no_dispara)
	(arma no_percute)
=>
	(assert (problema percutor))
)

(defrule regla_11
	(declare (CF 0.3))
	(arma no_dispara)
	(arma no_percute)
=>
	(assert (problema cargador))
)

(defrule regla_12
	(declare (CF 1))
	(problema bala)
=>
	(assert (cambiar bala))
)

(defrule regla_13
	(declare (CF 1))
	(problema cargador)
=>
	(assert (cambiar cargador))
)

(defrule regla_14
	(declare (CF 1))
	(or	(problema percutor)
		(problema gatillo)
	)
=>
	(assert (revisar en_armeria))
)