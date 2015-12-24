#| /usr/local/bin/scheme
run file.scm file as a script: scheme <file.scm
complie file.scm: (cf "file.scm") then (load "file.scm")
try to avoid using script mode
compile it
|#


(define (square x) (* x x))

(define (sum-of-square x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-square (+ a 1) (* a 2)))

(square (+ 2 5))

(sum-of-square 4 5)

(f 5)
