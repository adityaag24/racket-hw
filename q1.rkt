#lang racket
(define-struct vehicle (brand-model mileage purchase-price [selling-price #:auto])
    #:auto-value 0
    #:transparent)

(define ford (make-vehicle "Ford Focus 3" 75000 4600))
(define audi (make-vehicle "Audi R8" 45000 6000))
(define mercedes (make-vehicle "Mercedes SLK200" 120000 8000))
(define bmw (make-vehicle "BMW i8" 20000 3000))
(define vw (make-vehicle "VW Beetle" 40000 2500))

(define (print-vehicle vehicle-struct)
    (printf "Brand: ~a\n" (vehicle-brand-model vehicle-struct))
    (printf "Mileage: ~a\n" (vehicle-mileage vehicle-struct))
    (printf "Purchase Price: ~a\n" (vehicle-purchase-price vehicle-struct))
    (printf "Selling Price: ~a\n" (vehicle-selling-price vehicle-struct))
)

(print-vehicle ford)
(print-vehicle audi)
(print-vehicle mercedes)
(print-vehicle bmw)
(print-vehicle vw)