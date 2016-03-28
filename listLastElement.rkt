#lang racket
(define last
  (lambda (lst)
    (cond
      [(null? lst) "The following list is empty"]
      [(= (length lst) 1) (car lst)]
      [(> (length lst) 1) (last (cdr lst))]
      )
    )
  )