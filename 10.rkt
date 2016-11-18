#lang scheme
(define logiceval
  (lambda (ls)
    (cond
      ((eqv?(car ls) 'Y)
       (cond
         ((and (boolean?(car(cdr ls))) (boolean? (car(cdr(cdr ls)))))
          (and (car(cdr ls)) (cdr(cdr ls)))
          )
         ((and (boolean?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (and (car(cdr ls))(logiceval (car(cdr(cdr ls))))))
         ((and (list?(car(cdr ls)))(boolean? (car(cdr(cdr ls)))))
          (and (car(cdr(cdr ls)))(logiceval (car(cdr ls)))))
         ((and (list?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (and (logiceval(car(cdr ls)))(logiceval (car(cdr(cdr ls))))))
         
         )
       )
      ((eqv?(car ls) 'O)
       (cond
         ((and (boolean?(car(cdr ls))) (boolean? (car(cdr(cdr ls)))))
          (or (car(cdr ls)) (cdr(cdr ls)))
          )
         ((and (boolean?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (or (car(cdr ls))(logiceval (car(cdr(cdr ls))))))
         ((and (list?(car(cdr ls)))(boolean? (car(cdr(cdr ls)))))
          (or (car(cdr(cdr ls)))(logiceval (car(cdr ls)))))
         ((and (list?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (or (logiceval(car(cdr ls)))(logiceval (car(cdr(cdr ls))))))
         
         )
       )
      ((eqv?(car ls) 'OEX)
       (cond
         ((and (boolean?(car(cdr ls))) (boolean? (car(cdr(cdr ls)))))
          (xor (car(cdr ls)) (cdr(cdr ls)))
          )
         ((and (boolean?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (xor (car(cdr ls))(logiceval (car(cdr(cdr ls))))))
         ((and (list?(car(cdr ls)))(boolean? (car(cdr(cdr ls)))))
          (xor (car(cdr(cdr ls)))(logiceval (car(cdr ls)))))
         ((and (list?(car(cdr ls)))(list? (car(cdr(cdr ls)))))
          (xor (logiceval(car(cdr ls)))(logiceval (car(cdr(cdr ls))))))
         
         )
       )
      ((eqv?(car ls) 'NO)
       (cond
         ((boolean?(car(cdr ls)))
          (not (car(cdr ls)))
          )
         ((list?(car(cdr ls)))
          (not (logiceval (car(cdr ls)))))
         
         
         )
       )
      )
    )
  )
    


