; Linear iterative Process
; The process does not grow or shink as it evolves.
(define (factorial n)
  (fact-iter 1 1 n))
(define (fact-iter product counter max-count)
  (if (> counter max-count)
      product
      (fact-iter (* counter product)
                 (+ counter 1)
                 max-count)
      )
  )

; Linear recursive process
; Expansion (build up of chain of deffered operations) followed by contraction.
(define (fact2 n)
  (if (< n 1)
      1
      (* n (fact2 (- n 1)))))

(fact2 40)
  