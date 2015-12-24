#|1.3
|#

(define (sum_bigger a b c)
  (cond ((or (< a c b) (< a b c)) (+ b c))
        ((or (< b a c) (< b c a)) (+ a c))
        (else (+ a b))))

(sum_bigger 1 3 5)
(sum_bigger 6 2 9)
