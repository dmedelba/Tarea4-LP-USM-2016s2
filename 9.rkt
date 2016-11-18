#lang scheme

;(ord-up L)
; Funcion que al recibir la lista compara sus elementos para ordenarlos de menor a mayor
(define (ord-up L)
    (if (null? (cdr L))   
        L    
        (if (< (car L) (cadr L))   
            (cons (car L) (ord-up (cdr L)))   
            (cons (cadr L) (ord-up (cons (car L) (cddr L)))))))

;(ord-sort-aux N l)
; Recibe un n , correspondiente al largo de la lista , y la lista.
; Se llama a ord-up para ordenar y con recursividad se van ordenando la cantidad de elementos de la lista.

(define (ord-sort-aux N L)    
    (cond ((= N 1) (ord-up L))   
          (else (ord-sort-aux (- N 1) (ord-up L)))))
;Ordenar L
; funcion que llama a la anterior para la ejecucion del ordenamiento.
; recursivamente.

(define (Ordenar L) 
    (ord-sort-aux (length L) L))

; unir l1 l2
; Concatena las lista l1 y l2

(define (unir l1 l2)
        (append l1 l2)
 )

(define (merge l1 l2)
  (Ordenar (unir l1 l2)
           ))

