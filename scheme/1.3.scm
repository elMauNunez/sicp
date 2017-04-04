(define (sum-of-the-squares-of-the-two-larger-numbers a b c) 
..   (cond ((and (< a b) (< a c)) (+ (* b b) (* c c))) 
..         ((and (< b a) (< b c)) (+ (* a a) (* c c))) 
..         (else (+ (* a a) (* b b)))))
