#lang racket
(struct vehicle (brand-model mileage purchase-price [selling-price #:auto])
    #:auto-value 0
    #:mutable
    #:transparent)

(define ford (vehicle "Ford Focus 3" 75000 4600))
(define audi (vehicle "Audi R8" 45000 6000))
(define mercedes (vehicle "Mercedes SLK200" 120000 8000))
(define bmw (vehicle "BMW i8" 20000 3000))
(define vw (vehicle "VW Beetle" 40000 2500))


(define (print-vehicle vehicle-struct)
    (printf "Brand: ~a\n" (vehicle-brand-model vehicle-struct))
    (printf "Mileage: ~a\n" (vehicle-mileage vehicle-struct))
    (printf "Purchase Price: ~a\n" (vehicle-purchase-price vehicle-struct))
    (printf "Selling Price: ~a\n" (vehicle-selling-price vehicle-struct)))

(define (update-sp vehicle-struct)
    (define field-mileage (vehicle-mileage vehicle-struct))
    (define field-pp (vehicle-purchase-price vehicle-struct))
    (printf "Mileage:~a\n" field-mileage)
    (printf "Purchase Price:~a\n" field-pp)
    (cond
        [(<= field-mileage 50000) (set-vehicle-selling-price! vehicle-struct (* 1.25 field-pp))]
        [(<= field-mileage 100000) (set-vehicle-selling-price! vehicle-struct (* 1.20 field-pp))]
        [(<= field-mileage 150000) (set-vehicle-selling-price! vehicle-struct (* 1.10 field-pp))]
        [else (set-vehicle-selling-price! vehicle-struct (+ 500 field-pp))]
    )
    
)   

(print-vehicle ford)
(print-vehicle audi)
(print-vehicle mercedes)
(print-vehicle bmw)
(print-vehicle vw)

(update-sp ford)
(update-sp audi)
(update-sp mercedes)
(update-sp bmw)
(update-sp vw)
(print-vehicle ford)
(print-vehicle audi)
(print-vehicle mercedes)
(print-vehicle bmw)
(print-vehicle vw)