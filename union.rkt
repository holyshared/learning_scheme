#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l))))
))

(define union
  (lambda (l1 l2)
    (cond
      ((null? l1) l2)
      ((member? (car l1) l2) (union (cdr l1) l2))
      (else (cons (car l1) (union (cdr l1) l2)))
      )
))

(union '("a") '("b"))
(union '("a" "b") '("b" "c"))
