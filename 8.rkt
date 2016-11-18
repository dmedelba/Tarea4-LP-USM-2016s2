#lang scheme

(define (mymap func)
  (lambda (ls)
    (let mapp((l ls) (bloqueV '()))
      (if (null? l)(reverse bloqueV) 
          (mapp (cdr l)
                (cons (func (car l)) bloqueV)))
      )))

