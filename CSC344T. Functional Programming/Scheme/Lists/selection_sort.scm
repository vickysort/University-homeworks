(define (selection_sort L)
    (define (smallest L A)                                               
        (cond ((null? L) A)
              ((< (car L) A) (smallest (cdr L)(car L)))
              (else (smallest (cdr L) A ))
        )
    )
	(if (null? L) L
	   (let ((m (smallest L (car L))))
	          (cons m (selection_sort(remove m L)))
	   )
	)
)
