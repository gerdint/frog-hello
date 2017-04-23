#lang racket/base

(require frog/plugin-api
         #;frog/verbosity
         )

(module+ test
  (require rackunit))

;; Notice
;; To install (from within the package directory):
;;   $ raco pkg install
;; To install (once uploaded to pkgs.racket-lang.org):
;;   $ raco pkg install <<name>>
;; To uninstall:
;;   $ raco pkg remove <<name>>
;; To view documentation:
;;   $ raco docs <<name>>
;;
;; For your convenience, we have included a LICENSE.txt file, which links to
;; the GNU Lesser General Public License.
;; If you would prefer to use a different license, replace LICENSE.txt with the
;; desired license.
;;
;; Some users like to add a `private/` directory, place auxiliary files there,
;; and require them in `main.rkt`.
;;
;; See the current version of the racket style guide here:
;; http://docs.racket-lang.org/style/index.html

;; Code here

(module+ test
  ;; Tests to be run with raco test
  )

(define greeting (get-config 'greeting "Hola"))

(enhance-body
 (λ (xs)
   (displayln "Enhancing body")
   xs))

(register-cleanup
 (λ ()
   (displayln "Cleaning up")))

;;; Code in module body is evaluated when module is loaded at Frog startup
(displayln (string-append greeting " Frog!"))

