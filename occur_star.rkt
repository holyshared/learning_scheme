#lang racket

(define occur*
  (lambda (v l)
    (cond
      ((null? l) 0)
      ((pair? (car l)) (occur* v (car l)))
      ((eq? v (car l)) (add1 (occur* v (cdr l))))
      (else (occur* v (cdr l))))
))

(occur* "a" '("a" "b" "c"))
(occur* "a" '("a" '("a" "b" '("a" "b")) "c"))
