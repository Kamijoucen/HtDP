;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ch1) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))

(define cat (circle 5 "solid" "red"))

(define (picture-of-rocket.v2 height)
  (cond
    [(<= height (- 60 (/ (image-height cat) 2)))
     (place-image cat 50 height (empty-scene 100 60))]
    [(> height (- 60 (/ (image-height cat) 2)))
     (place-image cat 50 (- 60 (/ (image-height cat) 2))
                  (empty-scene 100 60))]))

(animate picture-of-rocket.v2)

;;(animate picture-of-rocket.v2)