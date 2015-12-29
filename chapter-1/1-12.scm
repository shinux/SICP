(define (pascal-rec x y)
  (if (or (< y 2) (= x 0) (= x y))
    1
    (+ (pascal-rec (- x 1) (- y 1))
       (pascal-rec x (- y 1)))))

(pascal-rec 2 4)
(pascal-rec 2 5)

