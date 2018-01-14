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

## 2018-01-06

* **cons**やってなかったので追加した、OCamlと同じで、先頭に要素を追加するのに使う
* **sub1**、**zero?**とか普通に使えるな...
* **cond**の**else**は式を1つしかかけない?、文は置けないのしら?

## 2018-01-08

* 基本的にリスト処理周りをやった
* 掛け算・割り算周りは、Scheme手習いにあったので書いてみた
* 閉じ括弧がわかりにくかったので、背景色変えたらコード書きやすくなった
	* Racketはコードフォーマッタないのかな？
* Scheme手習いの4章終わった

## 2018-01-12
* Scheme手習いの5章を開始
	* ネストしたリストの処理をちょっとだけやった

## 2018-01-13
* Scheme手習いの5章の続き
* **insertR**、**insertL**など

* ## 2018-01-14
* Scheme手習いの5章の続き
* **quote**がやっとわかった....

	評価して欲しくないものを、**'()**でラップすればOK。  
	ネストした構造でも、わざわざつけなくてもいい。

	```scheme
	;; こうじゃなくていい
	'('("potato") '("chips" '('("with") "fish")) '("chips"))
	```	

	下記でOK。

	```scheme
	;; これでいい
	'(("potato") ("chips" (("with") "fish")) ("chips"))
	```	

	これの戻り値が、**'quote**になって困った。

	```scheme
	(define leftmost
	  (lambda (l)
	    (cond
	      ((pair? (car l)) (leftmost (car l)))
	      (else (car l))
	      )
	))

	(leftmost '('("potato") '("chips" '('("with") "fish")) '("chips"))) ;; NG
	(leftmost '(("potato") ("chips" (("with") "fish")) ("chips"))) ;; OK
	```
