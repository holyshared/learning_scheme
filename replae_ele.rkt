#lang racket

;
; 指定した要素を見つけて置き換え
;
(define find_replace
  (lambda (l t v)
    (cond
      ((null? l) '())
      ((eq? (car l) t) (cons v (cdr l)))
      (else (cons (car l) (find_replace (cdr l) t v)))
)))

(find_replace '("a" "b" "c") "b" "d")
(find_replace '("a" "b" "c") "d" "b")
