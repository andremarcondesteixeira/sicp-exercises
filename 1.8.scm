(define (cube x) (* x x x))

(define (good-enough? guess x)
    (< (abs (- x (cube guess))) 0.001))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root-iter guess x)
    (if (good-enough? guess x)
        guess
        (cube-root-iter (improve guess x) x)))

(define (cube-root x) (cube-root-iter 1.0 x))

(cube-root 27)
