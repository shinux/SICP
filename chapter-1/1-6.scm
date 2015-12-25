; new if

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

;(new-if (= 2 3) 0 5)

;(new-if (= 1 1) 0 5)

#| old version |#
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;    guess
;    (sqrt-iter (improve guess x)
;               x)))

#| new version |#

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.09)

; Aborting!: maximum recursion depth exceeded
; 使用 cond 形式的 new-if 会陷入无限层的递归调用，因为cond 的两个过程 then clause 和 else-clause 会被立刻求值，而 else-clause 则是一个递归过程
; 而使用 if 特殊形式，则先判断条件，正确直接返回，而无视 else 中的递归
