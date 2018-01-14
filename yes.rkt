#lang racket

(define yes
  (lambda (x v)
    (cond ((zero? x) '())
          ((print v) (yes (sub1 x) v))
    )))

(yes 1 "print 1.times")
(yes 2 "print 2.times")
(yes 3 "print 3.times")
