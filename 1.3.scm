(define (max a b)
        (if (> a b) a b))

(define (min a b)
        (if (< a b) a b))

(define (largest a b c)
        (max (max a b) c))

(define (second-largest a b c)
        (largest (min a b) (min a c) (min b c)))
        
(define (square x) (* x x))

(define (sum-of-squares a b)
        (+ (square a) (square b)))

(define (f a b c)
        (sum-of-squares (largest a b c)
                        (second-largest a b c)))