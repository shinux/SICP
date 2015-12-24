(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))


; 比较参数b 和 0 的大小，如果 b> 0 返回 + 否则返回 -
; 然后根据上述的符号 返回 a 与 b  的和或差
