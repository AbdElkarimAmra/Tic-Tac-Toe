# Racket Tic-Tac-Toe Game

## Overview
This is a **command-line Tic-Tac-Toe game** implemented in **Racket**, a general-purpose, multi-paradigm programming language in the Lisp family. The game allows two players to take turns placing 'X' or 'O' on a **3x3 grid** by specifying a position (1-9) and a value ('X' or 'O'). The game:
- Checks for wins across **rows, columns, and diagonals**
- Declares a draw if the board is full with no winner
- Provides feedback for **invalid inputs**
- Is designed for **learning and enjoyment**

---

## Features
- **Interactive Gameplay:** Players input moves via the command line in the format **position value** (e.g., `3 X`).
- **Win Detection:** Checks for victories using Racket's list manipulation capabilities.
- **Draw Detection:** Recognizes when the board is full without a winner.
- **Input Validation:** Ensures moves are valid (correct position, 'X' or 'O', and within bounds).
- **Simple Display:** Prints the 3x3 board to the console after each move.
- **Recursive Gameplay:** Uses recursion to manage turns and game state.

---

## Prerequisites
To run the **Racket Tic-Tac-Toe Game**, you need:
- **Racket**: The game is written in Racket, so you’ll need the Racket interpreter installed. [Download Racket](https://racket-lang.org/).
- **No Additional Libraries**: The game uses only the standard Racket library (`#lang racket`), so no external dependencies are required.

---

## Installation
### 1. Install Racket
Download and install Racket from [racket-lang.org](https://racket-lang.org/).
Follow the installation instructions for your operating system (**Windows, macOS, or Linux**).

### 2. Clone or Download the Code
Save the provided code into a file named `tic-tac-toe.rkt`.

### 3. Verify Setup
Open a terminal and run:
```bash
racket -v
```
You should see an output like `Welcome to Racket v8.x.x`.

---

## Usage
### 1. Prepare the Code
Ensure the last line (`(play-game board)`) is **uncommented** to start the game automatically when the script runs.

### 2. Run the Game
Navigate to the directory containing `tic-tac-toe.rkt` and execute:
```bash
racket tic-tac-toe.rkt
```
Alternatively, open the file in **DrRacket** (Racket’s IDE) and click **Run**.

### 3. Game Flow
#### Initial Board Display:
```
 1 | 2 | 3
-----------
 4 | 5 | 6
-----------
 7 | 8 | 9
```
#### Enter a Move:
When prompted (`Enter a position and value (e.g., 3 X or 3 O):`), type a **position (1-9)** followed by a space and either `X` or `O` (e.g., `5 X`), then press **Enter**.

#### Gameplay:
- The board updates with each move.
- Players alternate turns manually (no enforced turn order).
- Invalid inputs (wrong format, out-of-bounds position) prompt an error message and a retry.

#### End Conditions:
- **Win:** If three 'X's or 'O's align (row, column, or diagonal), the game announces `You won. Congratsss!!!`.
- **Draw:** If the board fills without a winner, it displays `Game Over!!! It is a draw.`
- **Restart:** To play again, rerun the script or press **Run** in DrRacket.

---

## Example Gameplay
```
 1 | 2 | 3
-----------
 4 | 5 | 6
-----------
 7 | 8 | 9
Enter a position and value (e.g., 3 X or 3 O): 5 X
 1 | 2 | 3
-----------
 4 | X | 6
-----------
 7 | 8 | 9
Enter a position and value (e.g., 3 X or 3 O): 1 O
 O | 2 | 3
-----------
 4 | X | 6
-----------
 7 | 8 | 9
...
```

---

## Code Structure
- `board`: Initial list `(1 2 3 4 5 6 7 8 9)` representing the 3x3 grid.
- `display-board`: Prints the current state of the board.
- `get-user-input`: Reads player input as a string.
- `update-board`: Uses `subst*` to replace a position with 'X' or 'O'.
- `end-game`: Checks for a win via `row-win`, `column-win`, or `diagonal-win`.
- `full-board?`: Detects if the board is full.
- `valid-move?`: Validates input (position 1-9, value 'X' or 'O').
- `play-game`: Main recursive function managing the game loop.

---

## Troubleshooting
| Issue                  | Solution                                                                               |
|------------------------|----------------------------------------------------------------------------------------|
| **Syntax Error**       | Ensure `(play-game board)` is uncommented.                                             |
| **Invalid Input Loop** | Check your input format (e.g., `3 X`, not `3X`).                                       |
| **No Output**         | Verify Racket is installed and the script is executed correctly.                        |
| **DrRacket Issues**   | If using DrRacket, ensure you click **Run** after editing the file.                     |

---

## Limitations
- **No Turn Enforcement:** Players must manually alternate 'X' and 'O'.
- **Single Session:** The game does not restart automatically; rerun the script to play again.
- **No GUI:** This is a text-based game.

---

## Contributing
This is a simple educational project. Suggestions or enhancements (e.g., adding **turn enforcement, a GUI, or an AI opponent**) are welcome! Feel free to fork and modify the code.

---

## Acknowledgments
- Inspired by classic Tic-Tac-Toe and implemented as a **learning exercise** in Racket.
- Thanks to the **Racket community** for excellent documentation and resources.

