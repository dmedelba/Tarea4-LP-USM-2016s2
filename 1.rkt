#lang scheme

(define (compresor l)
  (let search ((i 1) (l_var l) (lista '()))
    (cond
      ((= (length l_var) 1)
       (if (null? lista) (list (list i (car l_var)))
           (reverse (cons (list i (car l_var)) lista))))
      
      ((xor (number? (car l_var)) #t)
       (search 1 (cdr l_var) (cons (compresor (car l_var)) lista)))
      
      ((xor (number? (car (cdr l_var))) #t)
       (search 1 (cddr l_var) (cons (compresor (car (cdr l_var))) (cons (list i (car l_var)) lista))))
      
      ((= (car l_var) (car (cdr l_var)))
       (search (+ i 1) (cdr l_var) lista))
      
      (else
       (if (null? lista) (search 1 (cdr l_var) (list (list i (car l_var))))
           (search 1 (cdr l_var) (cons (list i (car l_var)) lista)))))))

