#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l)))
      )
    ))

(define subset?
  (lambda (l1 l2)
    (cond
      ((null? l1) #t)
      ((member? (car l1) l2) (subset? (cdr l1) l2))
      (else #f) 
      )
    ))

(subset? '("a") '("a"))
(subset? '("a" "b") '("a"))
