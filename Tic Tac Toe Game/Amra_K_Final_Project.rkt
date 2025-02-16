#lang racket


(define board '(1 2 3 4 5 6 7 8 9))


(define (atom? value)
  (not (pair? value)))

(define subst* 
  (lambda (new old l) 
    (cond ((null? l) '()) 
          ((atom? (car l)) 
           (cond ((equal? (car l) old) 
                  (cons new (subst* new old (cdr l)))) 
                 (else (cons (car l) (subst* new old (cdr l)))))) 
          (else (cons (subst* new old (car l)) 
                      (subst* new old (cdr l)))))))


(define (display-board board)
  (display " ")
  (display  (list-ref board 0))
  (display " |")
  (display " ")
  (display (list-ref board 1))
  (display " |")
  (display " ")
  (display (list-ref board 2))
  (newline)
  (display "-----------")
  (newline)
  (display " ")
  (display  (list-ref board 3))
  (display " |")
  (display " ")
  (display (list-ref board 4))
  (display " |")
  (display " ")
  (display (list-ref board 5))
  (newline)
  (display "-----------")
  (newline)
  (display " ")
  (display  (list-ref board 6))
  (display " |")
  (display " ")
  (display (list-ref board 7))
  (display " |")
  (display " ")
  (display (list-ref board 8))
  (newline))



(define (get-user-input)
  (display "Enter a position and value (e.g., 3 X or 3 O): ")
  (read-line))

(define (update-board board position value)
  (subst* value position board))

(define (all-items-equal? lst)
  (cond
    ((null? lst) #t)         
    ((null? (cdr lst)) #t)    
    ((eq? (car lst) (cadr lst)) 
     (all-items-equal? (cdr lst))) 
    (else #f)))


(define (full-board? board)
  (cond
    ((null? board) #t)                            
    ((or (eq? (car board) 'O) (eq? (car board) 'X))
     (full-board? (cdr board)))                 
    (else #f)))                                

  

(define (row-win board)
  (define first-row (list (list-ref board 0) (list-ref board 1) (list-ref board 2)))
  (define second-row (list (list-ref board 3) (list-ref board 4) (list-ref board 5)))
  (define third-row (list (list-ref board 6) (list-ref board 7) (list-ref board 8)))
  (or (all-items-equal? first-row) (all-items-equal? second-row) (all-items-equal? third-row)))

(define (column-win board)
  (define first-column (list (list-ref board 0) (list-ref board 3) (list-ref board 6)))
  (define second-column (list (list-ref board 1) (list-ref board 4) (list-ref board 7)))
  (define third-column (list (list-ref board 2) (list-ref board 5) (list-ref board 8)))
  (or (all-items-equal? first-column) (all-items-equal? second-column) (all-items-equal? third-column)))

(define (diagonal-win board)
  (define left-to-right-diagonal (list (list-ref board 0) (list-ref board 4) (list-ref board 8)))
  (define right-to-left-diagonal (list (list-ref board 2) (list-ref board 4) (list-ref board 6)))
  (or (all-items-equal? left-to-right-diagonal) (all-items-equal? right-to-left-diagonal)))

(define (end-game board)
  (or (diagonal-win board) (column-win board) (row-win board)))
      




(define (valid-move? board pos val)
  (and (number? pos)
       (or (eq? val 'X) (eq? val 'O))
       (<= 1 pos (length board))))
       


(define (paired-input? input-list)
 = (length input-list) 2)
       

(define (play-game board)
  (display-board board)
  (cond
    ((end-game board)
     (display "You won. Congratsss!!!. Press the run button to restart the game")
     (newline))
    ((full-board? board) (display "Game Over!!! It is a draw"))
    (else
     (let ([input (get-user-input)])
       (let ([input-list (string-split input " ")])
         (cond
           ((paired-input? input-list)
            (let ([pos (string->number (car input-list))]
                  [val (string->symbol (cadr input-list))])
              (cond
                ((valid-move? board pos val)
                 (play-game (update-board board pos val)))
                (else
                 (newline)
                 (display "Invalid move! Make sure to input the right format AND stick to the game's rules, which are represented by entering a number between 1 and 9 followed by either X or O")
                 (newline)
                 (play-game board)))))
           (else
            (newline)
            (display "Invalid input! Please enter both position and value.")
            (newline)
            (play-game board))))))))




;;;;;;;; uncomment the following line to start the game ;;;;;;;;


;(play-game board)

