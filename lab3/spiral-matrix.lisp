(defun spiral-matrix (n)
    (setq ar (make-array (list n n)))
    (setf cur 0)
    (setf finish (* n n))
    (setf halfN (floor (/ n 2)))
    (if (oddp n) (setf (aref ar halfN halfN) finish))
    (loop for Rborder downfrom (1- n) to halfN do
        (setf Lborder (- n Rborder 1))
        (loop for j upfrom Lborder below Rborder do
            (setf (aref ar Lborder j) (setf cur (1+ cur)))
        )
        (loop for i upfrom Lborder below Rborder do
            (setf (aref ar i Rborder) (setf cur (1+ cur)))
        )
        (loop for j downfrom Rborder above Lborder do
            (setf (aref ar Rborder j) (setf cur (1+ cur)))
        )
        (loop for i downfrom Rborder above Lborder do
            (setf (aref ar i Lborder) (setf cur (1+ cur)))
        )
    )
    (let ((*print-right-margin* (+ 6 (* n (1+ (length (write-to-string finish)))))))
    (pprint ar)
    (values))
)
