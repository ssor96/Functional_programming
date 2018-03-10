(defun lower-case (c)
	(or (lower-case-p c) (find c "абвгдеёжзийклмнопрстуфхцчшщъыьэюя"))
)

(defun text-change (inputText)
    	(let ((gotSymb NIL))
	    (dolist (s inputText)
		(when (position #\* s) (setf gotSymb T) (return))
	    )
	    (if gotSymb
		(let ((text (mapcar (lambda (str) (subseq str 0)) inputText))) 
		(dolist (s text)
			(let ((p (position #\* s))) 
				(when p 
					(loop for i upfrom 0 below p do
						(when (lower-case (char s i)) 
							(setf (char s i) #\3)
						)
					)
					(return)
				)
				(loop for i downfrom (1- (length s)) to 0 do
					(when (lower-case (char s i)) (setf (char s i) #\3))
				)
			)
		)
		text
		)
		inputText
	    )
    	)
)
