#lang racket

(define no_num
  (lambda (lat)
    (cond 
    ((null? lat) '())
    ((number? (car lat)) (no_num (cdr lat)))
    (else (cons (car lat) (no_num (cdr lat)))))


))

(no_num '(1 "a" 2 "b" 3 "c"))
(no_num '(1 2 3 "a" "b" "c"))
(no_num '("a" "b" "c" 1 2 3))
