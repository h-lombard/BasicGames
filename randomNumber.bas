    1 CALL CLS
    2 PRINT "Welcome to Random Numbers, the random number game!"
   10 RESTART:
   11 CALL RANDOMIZE(TIMER/3)
   13 PRINT "Enter the random number range and guess the number."
   20 LET lowerLimit = 0
   21 LET upperLimit = 0
   22 INPUT "Enter number range lower limit: ", lowerLimit
   23 INPUT "Enter number range upper limit: ", upperLimit
   24 LET randomNumber = INT((upperLimit - lowerLimit) * RND) + lowerLimit
   25 LET userAnswer = 0
   26 INPUT "Guess the randomly generated number: ", userAnswer
   30 IF userAnswer = randomNumber THEN
    :   GOTO CORRECT
    : ELSE
    :   GOTO INCORRECT
    : END IF
   31 CORRECT:
   32 PRINT "Correct. The answer is"; randomNumber
   33 GOTO DONE
   34 INCORRECT:
   35 PRINT "Incorrect. The answer is"; randomNumber
   36 GOTO DONE
   50 DONE:
   51 LET userDecision$ = "no"
   52 INPUT "Would you like to try again? [yes/no]"; userDecision$
   53 IF userDecision$ = "yes" THEN
    :   GOTO RESTART
    : END IF
   60 END

