#lang scheme

;;(assq x lista)
;;Busca el valor numerico de las variables en la alist.

(define (assq x lista)
    (cond
       ((null? lista) 0)
       ((equal? (caar lista) x) (cdr (car lista)))
       (else (assq x (cdr lista)))))



(define (calculo l1 l2)
  (if (null? l2)
      0
       (+ (assq (car l2) l1) (calculo l1 (cdr l2)))))
