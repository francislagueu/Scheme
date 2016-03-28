#lang racket
(define mid (lambda(a b c)
              (- (+ a b c)
                 (max a b c)
                 (min a b c)
                 )
              )
  )
