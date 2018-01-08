#lang racket

(define zip
  (lambda (a b)
    (cond
      ((or (null? a) (null? b)) '())
      (else (cons (list (car a) (car b)) (zip (cdr a) (cdr b))))
)))

(zip '("a") '("1"))
(zip '("a" "b") '("1" "2"))
(zip '("a") '("1" "2"))
(zip '() '("1" "2"))
