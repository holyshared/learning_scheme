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

(define first
  (lambda (pair)
    (car pair)
))

(define second
  (lambda (pair)
    (car (cdr pair))
))

(define build
  (lambda (k v)
    (cons k (cons v '()))
))


(define revrel
  (lambda (rel)
    (cond
      ((null? rel) '())
      (else (cons (build (second (car rel)) (first (car rel))) (revrel (cdr rel))))
      )
))

(revrel '(("a" 1) ("b" 2) ("c" 3)))
