#lang racket

(define leftmost
  (lambda (l)
    (cond
      ((pair? (car l)) (leftmost (car l)))
      (else (car l))
      )
))

(leftmost '("a" "b" "c"))
(leftmost '(("potato") ("chips" (("with") "fish")) ("chips")))
;(leftmost '('("potato") '("chips" '('("with") "fish")) '("chips")))
