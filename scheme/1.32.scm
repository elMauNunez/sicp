(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate combiner null-value term (next a) next b))))

(define (accumulate combiner null-value term a next b)
    (define (iter a result)
        (if (< a b)
            result
            (iter (next a)
                  (combiner (term a) result))))
    (iter a null-value))

(define (identity n) n)

(define (inc n) (+ n 1))

(define (sum a b)
    (accumulate + 0 identity a inc b))
