(defrule regla_1
	(declare (CF 0.8))
	(A1)
	(A2)
=>
	(assert (C1))
)

(defrule regla_2
	(declare (CF 0.7))
	(or	(A2)
		(A3)
	)
=>
	(assert (C3))
)

(defrule regla_3
	(declare (CF 0.9))
	(H1)
=>
	(assert (A1))
)

(defrule regla_4
	(declare (CF 1))
	(C1)
=>
	(assert (D))
)

(defrule regla_5
	(declare (CF 0.2))
	(H2)
=>
	(assert (A2))
)

(defrule regla_6
	(declare (CF 0.9))
	(H1)
=>
	(assert (C1))
)

(defrule regla_7
	(declare (CF 0.1))
	(H3)
	(H4)
=>
	(assert (A3))
)

(defrule regla_8
	(declare (CF 0.5))
	(or	(A1)
		(A2)
	)
=>
	(assert (C2))
)

(defrule regla_2
	(declare (CF 0.1))
	(or	(C2)
		(C3)
	)
=>
	(assert (D))
)
