;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(circle 10 "solid" "red")

(define WIDTH 100)
(define HEIGHT 60)
(define X 50)
(define V 3)
(define MTSCN (empty-scene WIDTH HEIGHT))

(define UFO
  (overlay (circle 10 "solid" "green")
           (rectangle 40 4 "solid" "green")))

(define CAT UFO)
(define CAT-CENTER-TO-TOP
  (- HEIGHT (/ (image-height CAT) 2)))

(define (distance t)
  (* V t))

(define (picture-of-cat h)
  (cond
    [(<= (distance h) CAT-CENTER-TO-TOP)
     (place-image CAT X (distance h) MTSCN)]
    [(> (distance h) CAT-CENTER-TO-TOP)
     (place-image CAT X CAT-CENTER-TO-TOP MTSCN)]))

(animate picture-of-cat)