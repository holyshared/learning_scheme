#lang racket

(define check_pair
  (lambda (v)
    (cond ((pair? v) (print "pair!!")) (else (print "not pair")))
  ))

(check_pair "a")
(check_pair 1)
(check_pair '())
(check_pair '("a"))
(check_pair '("a" "b"))
(check_pair '("a" "b" "c"))
