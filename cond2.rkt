#lang racket

(define find
  (lambda (x)
    (cond
      ((eq? x 0) 0)
      ((eq? x 1) 1)
      ((eq? x 2) 2)
      (10) ; elseを通らなくなる
      (else -1))
))

(find 0)
(find 1)
(find 2)
(find 3)
