

;descrition of game:
;the game is fully functioal. It properly displays the board with numbers the users are willing to place their mark on. it substitute the number with the mark of user's choice
;as long as it is valid (the value input is either X or O and the position input is between 1 and 9). And finally it ends the game with a win or draw message depending on the board state (elements inside board list).
;a win is determined by the presence of a specific pattern of elements in the board list which is figured out using helper functions (row-win, column-win, diagonal-win). These functions
;are used in the boolean function end-game that determines whether a game is won or not. On the other hand a draw result is determined using full-board? function. this function on its own
;does not determine the draw result, it is its position in the play-game function that does so; if the game is not won and the board is full, it will display a draw result message.
;

;Limitations of the game:
;the game is generally smooth, but it has some limitations that I believe will not impact the user but is good to have:
;the game does not follow an alternating pattern for turns.

;the win display message is not personalized to the user. it is just a general statement that appears whenever end-game function detects a win. But this message displays right
;after the last input. so the users would actually be able to tell who won the game.

