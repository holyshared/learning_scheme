#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l))))
))

(define intersect
  (lambda (l1 l2)
    (cond
      ((null? l1) '())
      ((member? (car l1) l2)
       (cons (car l1) (intersect (cdr l1) l2)))
      (else (intersect (cdr l1) l2))
      )
))

(intersect '("a") '("a"))
(intersect '("a") '("a" "b"))
