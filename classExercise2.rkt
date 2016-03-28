#lang racket
(define last
  (lambda(list)
    (cond
      [(null? list) "the following list is empty"]
      [(= (length list) 1) (car list)]
      [(> (length list) 1) (last (cdr list))]
      )))
(define f
  (lambda (x)
    (let* ([a 5]
           [g (lambda (u) (+ u a))]
           [h (lambda (v) (let* ([a 10]) (+ (g v) a)))])
      (+ (h x) a))
    )
  )
(define main
  (lambda ()
    (let* ([b 2])
      (display (f b)))
    )
  )