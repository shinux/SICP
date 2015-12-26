

(load "../basic/sqrt.scm")

(define (good-enough? old-guess new-guess)
  (> 0.001
     (/ (abs (- new-guess old-guess))
        old-guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    (improve guess x)
    (sqrt-iter (improve guess x)
               x)))

(sqrt 0.00009) ;;;Value: 9.486833049684392e-3
(sqrt 1e13)


; 对于较小和较大的数字，都返回了错误的结果
; 1 ]=> (sqrt 0.0009)
; Value: .04030062264654547
; 数字过小时，较容易满足误差值，所以返回了错误的结果
; 数字过大时，由于小数精度的问题，永远满足不了误差值，导致程序一直循环
; 修改办法将 good-enough? 函数（过程）改为每次与上次结果比较误差
