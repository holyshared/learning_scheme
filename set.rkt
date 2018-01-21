#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l)))
      )
    ))

(define set?
  (lambda (v)
    (cond
      ((null? v) #t)
      ((not (pair? v)) #f)
      ((member? (car v) (cdr v)) #f)
      (else (set? (cdr v)))
      )
    ))

(set? '(1 1 2)) ; #f
(set? '(1 2 3)) ; #t
(set? '("a" "b" "c")) ; #t
