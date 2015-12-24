#|
cond:
(cond (<p1> <e1>)
      (<p2> <e2>)
      ...
      (<pn> <en>)
      (else <px>))
if:
(if <predicate> <consequent> <alternative>)
|#


(define (abs1 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs2 x)
  (if (< x 0)
    (- x)
    x))

(abs1 1)
(abs1 -5)

(abs2 1)
(abs2 -5)
