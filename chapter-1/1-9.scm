
(define (add1 a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

(define (add2 a b)
  (if (= a 0)
    b
    (add2 (dec a) (inc b))))

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))


(add1 3 4)
(add2 3 4)

; 第一个不是递归的，只是在计算是，将第一个参数减一，然后与第二个参数相加，最后再加一得出结果
; 第二个是线性递归的
; 不断减小 a 的值，同时增加 b 的值，同事在 a 完全等于 0 时 返回 b
; (add2 3 4)
; 3 4
; 2 5
; 1 6
; 0 7 => 直接返回 7
