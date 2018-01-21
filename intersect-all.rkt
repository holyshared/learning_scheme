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



(define intersect_all
  (lambda (lset)
    (cond
      ((null? (cdr lset)) (car lset))
      (else (intersect (car lset) (intersect_all (cdr lset))))
      )
    ))

(intersect_all '(("a") ("a")))
(intersect_all '(("a" "b") ("a" "b") ("a") ("a") ("a") ("a")))


;(intersect '("a") '("a"))
;(intersect '("a") '("a" "b"))
