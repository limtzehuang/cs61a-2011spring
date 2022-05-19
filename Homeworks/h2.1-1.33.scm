#lang racket
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)

(define (isPrime? x)
  (define (PrimeRecursion counter)
        (cond (( = counter x) ( = 1 1))
              (( not (= (remainder x counter) 0)) (PrimeRecursion (+ counter 1)))
              (else ( = 1 0)))) 
  (if (< x 2)
      (= 1 0)
      (PrimeRecursion 2))
)

                         
(define (filtered-accumulate filter combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((filter a) (combiner (term a) (filtered-accumulate filter combiner null-value term (next a) next b )))
        ( else ( filtered-accumulate filter combiner null-value term (next a) next b ))))
        
(define (square x) (* x x))

(define (identity x) x)


(define (gcd a b)
  (cond (( > b a) (gcd b a))
        (( = ( remainder a b) 0) b)
        ( else ( gcd b (remainder a b)))))

(define (coPrime? n)
  (lambda (x) (if ( = 1 (gcd x n))
                  (= 1 1)
                  (= 1 0))  ))
          

(define (sumOfSquaredPrime a b)
  (filtered-accumulate isPrime? + 0 square a (lambda(x)(+ x 1)) b))

(define (productOfCoprime n)
  (filtered-accumulate (coPrime? n) * 1 identity 1 (lambda(x)(+ x 1)) n))

'(Squared of Prime)
(sumOfSquaredPrime 1 11)
(newline)
'(product Of Coprime)
(productOfCoprime 10)

