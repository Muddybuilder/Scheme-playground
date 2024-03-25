
; Example of functions for particular sums
(define (sum-integers a b)
  (if (> a b)
      0
      (+ a (sum-integers(+ a 1) b))
    )
)

(define (cube a)
    (* a a a)
)

(define (sum-cubes a b)
    (if (> a b)
    0
    (+ (cube a) (sum-cubes (+ a 1) b) )
    )
)

; expresses the concept of summmation with higher-order function

(define (cube n) (* n n n))

(define (identity n) n)

(define (inc n) (+ n 1))

(define (sum term a next b)
    (if (> a b)
    	0
    	(+ (term a) (sum term (next a) next b))
        )
  )

(define (sum-cube a b)
    (sum cube a inc b)
)

(define (sum-int a b)
    (sum identity a inc b)
)