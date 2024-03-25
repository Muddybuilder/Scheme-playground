;  ex) let f(x,y) = x(1+ xy)^2 + y(1-y) (1+xy)(1-y)

; regular prodecure definition
(define (f x y)
    (define (f-helper a b)
        (+ (* x (square a))
        (* y b)
        (* a b)
        )
    )
    (f-helper (+ 1 (* x y)) (- 1 y))
)

; lambda form
(define ( f x y)
    ((lambda (a b)
        (+ (* x (square a))
        (* y b)
        (* a b)
        ))
        (+ 1 (* x y))
        (- 1 y))
)

; local variable using let -> syntactic sugar for lambda mechanism 

(define (f x y)
(let ((a (+ 1 (* x y)))
    (b (- 1 y)))
    
    (+ (* x (square a))
        (* y b)
        (* a b)
    )
    )
)