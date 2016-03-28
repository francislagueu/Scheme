#lang racket 
(define remove
  (lambda (list)
    (if (null? list) '()
        (cons (car list) (remove (filter (lambda (x)
                                           (not (equal? x (car list))))
                                         (cdr list)))))))

(define palindrome?
  (lambda (s)
    (let ([lst (string->list s)])
      (let ([lst1 (reverse lst)])
       (equal? lst lst1)))))
(require math/base)
(define sumsquare 
  (lambda(n)
    (let ([m (+ 1 n)])
      (let ([lst (map sqr(range 1 m))])
        (sum lst)))))

(define prime?
  (lambda(n)
    (tprime n 2)))
(define tprime
  (lambda(n t)
    (if (> t (/ n 2))
        #t
        (if (factor n t)
            #f
            (tprime n (+ t 1))))))
(define factor
  (lambda(a b)
    (= (modulo a b) 0)))
(define reverse1
  (lambda(lst)
    (if (null? lst) '()
        (append (reverse1 (cdr lst)) (list (car lst)))
        )))