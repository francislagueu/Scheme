#lang racket
(define g
  (lambda (a)
    (let* ([x 7]
           [f (lambda (u) (+ u x a))])
      (f (* a a)))
    )
  )
      