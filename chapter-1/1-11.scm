(define (f-rec n)
  (cond ((< n 3) n)
        (else (+ (f-rec (- n 1))
                 (* 2 (f-rec (- n 2)))
                 (* 3 (f-rec (- n 3)))))))

(f-rec 3)
(f-rec 4)

(define (f n)
    (f-iter 2 1 0 0 n))

(define (f-iter a b c i n)
  (if (= i n)
    c
    (f-iter (+ a (* 2 b) (* 3 c))
            a
            b
            (+ i 1)
            n)))

(f 3)
