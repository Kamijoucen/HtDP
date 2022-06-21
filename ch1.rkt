;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(circle 10 "solid" "red")

(place-image (circle 5 "solid" "green")
             50 80
             (empty-scene 100 100))

(define (y x) (* x x))

(y 5)

(define cat (circle 5 "solid" "red"))

(place-image cat 50 40 (empty-scene 100 60))

(define (picture-of-rocket height)
  (place-image cat 50 height (empty-scene 100 60)))

(picture-of-rocket 60)

(animate picture-of-rocket)