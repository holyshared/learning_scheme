#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l))))
))

(define subset?
  (lambda (l1 l2)
    (cond
      ((null? l1) #t)
      ((member? (car l1) l2) (subset? (cdr l1) l2))
      (else #f))
))

(define eqset?
  (lambda (l1 l2)
    (and (subset? l1 l2) (subset? l2 l1))
))

(eqset? '("a" "b") '("b" "a"))
(eqset? '("a" "b") '("b" "a" "c"))
