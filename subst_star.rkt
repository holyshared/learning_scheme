#lang racket

(define subst*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((pair? (car l)) (cons (subst* new old (car l)) (subst* new old (cdr l))))
      ((eq? (car l) old) (cons new (subst* new old (cdr l))))
      (else (cons (car l) (subst* new old (cdr l))))
    )
))

(subst* "*" "a" '("d" "b" "a"))
(subst* "*" "a" '("a" "b" '("d" "e" '("x" "a" "z") "a") "c"))
