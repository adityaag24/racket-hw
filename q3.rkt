#lang racket

(define lst1 (cons (cons (list 1 2) '()) (list 4)))
(define lst2 (cons 1 (cons (cons 2 (cons (list 3) (list 4))) '())))
(define lst3 (cons 2 (cons (cons 4 (cons 5 '())) (cons 6 '()))))
(define lst4 (cons 5 (cons (cons (cons 4 '()) '()) (cons 3 '()))))
(printf "~a\n" lst1)
(printf "~a\n" lst2)
(printf "~a\n" lst3)
(printf "~a\n" lst4)