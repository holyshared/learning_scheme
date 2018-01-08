#lang racket

(define removeLat
  (lambda (r t)
    (cond
      ((null? r) t)
      ((null? t) '())
      ((eq? (car r) (car t)) (removeLat (cdr r) (cdr t)))
      (else (cons (car t) (removeLat r (cdr t))))
    )
  )
)

(removeLat '("a") '("a" "b" "c"))
(removeLat '("a" "c") '("a" "b" "c"))
(removeLat '() '("a" "b" "c"))
(removeLat '("a" "b") '("a"))
