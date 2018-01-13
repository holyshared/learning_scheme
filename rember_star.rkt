#lang racket

(define rember*
  (lambda (a l)
    (cond
      ((null? l) '())
      ((pair? (car l)) (cons (rember* a (car l)) (rember* a (cdr l))))
      ((eq? (car l) a) (rember* a (cdr l)))
      (else (cons (car l) (rember* a (cdr l))))
    )
))

(rember* "a" '("a" "b" "c"))
(rember* "a" '("a" "b" '("a" "b" "c") "c"))
(rember* "a" '("a" "b" '("b" "a" "c") "c" '("d" "a")))
