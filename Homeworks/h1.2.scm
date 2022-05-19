#lang scheme
(require (planet dyoo/simply-scheme:2:2))
(sentence 'hello 'world)


(define (square x) (* x x))
(define (squares NumsOfSentence)
  

  (if (empty? NumsOfSentence)

    '()

    (sentence (square (first NumsOfSentence)) (squares (bf NumsOfSentence))

        )))

(squares '(1 2 3 4))


;wtf you can actually do a looping by recursing
;above algorithm, calling the body function inside its own function 