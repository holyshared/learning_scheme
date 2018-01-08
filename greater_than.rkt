#lang racket

(define greater_than
  (lambda (x y)
    (cond
      ((and (zero? x) (zero? y)) #t)
      ((zero? x) #f)
      ((zero? y) #t)
      (else (greater_than (sub1 x) (sub1 y)))
)))

(greater_than 10 1)
(greater_than 1 1)
(greater_than 1 2)
