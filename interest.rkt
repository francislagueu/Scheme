#lang racket
(define interest
  (lambda (amount)
    (cond
      [(and (<= 0 amount) (<= amount 1000)) 0.4]
      [(and (< 1000 amount) (<= amount 5000)) 0.55]
      [(> amount 5000) .65]
      )
    )
  )