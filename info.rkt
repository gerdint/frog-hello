#lang info
(define collection "frog-hello")
(define deps '("base"
               "rackunit-lib"
	       "frog-plugin"))
(define build-deps '("scribble-lib" "racket-doc"))
(define pkg-desc "Frog example plugin")
(define version "0.1")
(define pkg-authors '(tger))

(define frog-plugin "hello.rkt")
(define frog-plugin-name "Hello")
