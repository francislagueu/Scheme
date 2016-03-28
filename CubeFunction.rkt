;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname CubeFunction) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (area_of_disk r) (* 3.14 (* r r)))
(define (area_of_ring outer inner) (- (area_of_disk outer) (area_of_disk inner)))
(define cube (lambda (x) (* x x x)))