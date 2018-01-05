# learning_scheme

処理系はRacketにした  
インストール楽だったから  
[https://racket-lang.org/](https://racket-lang.org/)

## 2018-01-05

### car, cdr, null?

* car - リストの先頭の要素、OCamlでいう**hd::tail**の**hd**
* cdr - リストの先頭の要素を除いたリスト、OCamlでいう**hd::tail**の**tail**
* null? - 空のリストかどうかを調べる、**#t(true)**、**#f(false)**を返す
	* **null**は意味がわかりずらいので、**'()**を使おうと思う
	* OCamlの**[]**
	* atomを渡しても、**#f**ちゃんと返してくれる
* condがよくわかってない

		condフォームの末尾にある最後のthen-bodyの結果は、condフォーム全体の結果です。

	最後のthen-bodyは**((print (car values)) (print_elements (cdr values))**部分でいいのだろうか。。。
	
	```scheme
	(define print_elements
	  (lambda (values)
	    (cond
         ((null? values) '())
         ((print (car values)) (print_elements (cdr values))
       ))))

	(print_elements '("a" "b" "c"))
	```
