#lang racket

(define insert_at
  (lambda (l at v)
    (cond
      ((null? l) l)
      ((zero? at) (cons v l))
      (else (cons (car l) (insert_at (cdr l) (sub1 at) v)))
)))

(insert_at '("a" "b" "c") 0 "*")
(insert_at '("a" "b" "c") 1 "*")
(insert_at '("a" "b" "c") 2 "*")
(insert_at '("a" "b" "c") 3 "*")
