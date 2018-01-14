#lang racket

(define numbered?
  (lambda (v)
    (cond
      ((not (pair? v)) (number? v))
      (else (and
              (numbered? (car v))
              (numbered? (car (cdr (cdr v))))
            ))
      )
))

(numbered? 1)
(numbered? '(1 + 1))
(numbered? '(1 + (5 * 2)))
(numbered? '((1 * 2) + (5 * 2)))
(numbered? '((1 * "oops!") + (5 * 2)))
