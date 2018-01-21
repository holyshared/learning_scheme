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

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l)) (firsts (cdr l))))
      )
    ))

(define fun?
  (lambda (rel)
    (set? (firsts rel))
))

; (firsts '(("a" 1) ("b" 2)))
(fun? '(("a" 1) ("b" 2)))
(fun? '(("a" 1) ("a" 2)))
