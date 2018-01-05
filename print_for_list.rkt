#lang racket

(define print_elements
  (lambda (values)
    (cond
      ((null? values) '())
      ((print (car values)) (print_elements (cdr values))
    )
  )))

(print_elements '("a" "b" "c"))
