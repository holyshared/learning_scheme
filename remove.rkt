#lang racket

(define remove
  (lambda (v lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) v) (cdr lat))
      (else (cons (car lat) (remove v (cdr lat))))
      )
    ))

(define removeAll(lambda (v lat)
  (cond
    ((null? lat) '())
    ((eq? (car lat) v) (removeAll v (cdr lat)))
    (else (cons (car lat) (removeAll v (cdr lat))))
    )
))

(remove "a" '("a" "b" "c"))
(remove "b" '("a" "b" "c"))
(remove "c" '("a" "b" "c"))

(removeAll "a" '("a" "b" "c" "a"))
(removeAll "b" '("a" "b" "c" "a"))
