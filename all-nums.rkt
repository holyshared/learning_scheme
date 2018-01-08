#lang racket

(define all_nums
  (lambda (lat)
    (cond
      ((null? lat) (quote ()))
      ((number? (car lat)) (cons (car lat) (all_nums (cdr lat)) ))
      (else (all_nums (cdr lat)))
)))

(all_nums '(1 "a" 2 "b" 3 "c"))
(all_nums '(1 2 3 "a" "b" "c"))
(all_nums '("a" "b" "c" 1 2 3))
