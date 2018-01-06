#lang racket

;
; リストから要素を検索して、位置を返す
;
(define find_v
  (lambda (l v pos)
    (cond ((null? l) -1)
          ((eq? (car l) v) pos)
          (else (find_v (cdr l) v (add1 pos)))
    )))

(find_v '("a" "b" "c") "a" 0)
(find_v '("a" "b" "c") "b" 0)
(find_v '("a" "b" "c") "c" 0)
(find_v '("a" "b" "c" "d") "d" 0)
(find_v '("a" "b" "c" "d") "e" 0)
