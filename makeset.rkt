#lang racket

(define member?
  (lambda (v l)
    (cond
      ((null? l) #f)
      ((eq? v (car l)) #t)
      (else (member? v (cdr l)))
      )
    ))

(define makeset
  (lambda (l)
    (cond
      ((null? l) '())
      ((member? (car l) (cdr l)) (makeset (cdr l)))
      (else (cons (car l) (makeset (cdr l))))
      )
    ))

(makeset '("a" "a" "b" "a" "a"))
