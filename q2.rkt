#lang racket
(define (segregate-list lst)
  (define (is-number? x)
    (number? x))
  (define numbers '())
  (define chars '())
  (for ([elem lst])
    (cond [(is-number? elem) (set! numbers (append numbers (list elem)))]
          [(string? elem) (set! chars (append chars (list elem)))]))
  (list (string-append* chars) numbers))

(segregate-list '(1 "a" 2 "b" 3 "c"))
(segregate-list '("h" 1 2 3 "e" "l" 4 5 "l" "o"))