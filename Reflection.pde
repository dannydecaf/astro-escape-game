/* Reflection
 
 Name : Dan Coffey
 
 Student Number: 08559350
 
 Link to Video on YouTube: https://youtu.be/1jUa6BSbLCQ
 
 Part A - Mark (11 /11)
 -----------------------------
 
 Includsion of completed:
 - Readme             (1)
 - Reflection        (5)
 - Video            (5)
 
 <just a mark needed here>
 
 Part B - Mark (4 /4)
 -----------------------------
 
 Comments, 
 - indentation, 
 - naming, 
 - structure of code.
 
 <just a mark needed here>
 
 
 Part C - Mark (5 /5)
 -----------------------------
 Use of if and loop statements:

-------------- 
IF STATEMENTS:
--------------

Lines 76-83 in the Main Tab, used If Statement creating data validation for number of games that can be selected.

Lines 85-92 in the Main Tab, used If Statement creating data validation for number of levels that can be selected.

Lines 110-113 in the Main Tab, used If Statement which displays an Earth object if the player is on the last level.

Lines 122-125 in the Main Tab, used If Statement which resets the pattern of Stars if the player proceeds to the next level.

Lines 141-152 in the Main Tab, used 2 If Statements nested in a For Loop, which state that if the ship is hit by the top-down array of Debris, a life is lost.
And if the player proceeds to the next level, the top-down Debris coordinates are reset.

Lines 160-169 in the Main Tab, used 2 If Statements nested in a For Loop, which state that if the ship is hit by the bottom-up array of Debris, a life is lost.
And if the player proceeds to the next level, the bottom-up Debris coordinates are reset.

Lines 172-185 in the Main Tab, nested If Statement, that states if the player proceeds to the next level, certain code is executed.

Lines 187-193 in the Main Tab, If Statement that states if the Spaceship goes off course, a life is lost and certain other code is executed.

Lines 195-218 in the Main Tab, If Statement that states if the game is over, a game is lost and certain code is executed. If the player choses to play the next game, certain code is executed.
If the player does not choose to proceed with their next game, certain code is executed.

Lines 261-264 in the Main Tab, If Statement nested within a Boolean method that states that if the top-down Debris is too far from the Spaceship on the X Axis, collision detection is abandoned.

Lines 266-269 in the Main Tab, If Statement nested within a Boolean method that states that if the top-down Debris is too far from the Spaceship on the Y Axis, collision detection is abandoned.

Lines 280-283 in the Main Tab, If Statement nested within a Boolean method that states that if the bottom-up Debris is too far from the Spaceship on the X Axis, collision detection is abandoned.

Lines 285-288 in the Main Tab, If Statement nested within a Boolean method that states that if the bottom-up Debris is too far from the Spaceship on the Y Axis, collision detection is abandoned.

Lines 295-301 in the Main Tab, If Statement within a Boolean method that states that if the spaceship passes through the exit parameters, the player proceeds to the next level.
Othwerise, the player remains on the same level.

Lines 306-313 in the Main Tab, nested If Statement that states if the player enters certain parameters, a life is lost. Otherwise no life is lost.

Lines 316-323 in the Main Tab, If Statement within a Boolean method that states if more lives are lost than the max amount of lives, the game is over. Otherwise the game is not yet over.

Lines 350-353 in the Main Tab, If Statement within a bespoke method that states if a right mouse button is clicked, a PNG Image of the game is saved.

Lines 26-32 in the Astronaut Tab, If Statement within overloaded constructor that states if the player name is less than 4 characters, it is fine. Otherwise the player name is truncated to have only 4 characters.

Lines 69-72 in the Astronaut Tab, if Statement within bespoke method that adds a score at the next available location in the Scores array.

Lines 82-84 in the Astronaut Tab, If Statement within a For Loop that states if the score in the current element of the array is higher than the highest score, it becomes the new highest score.

Lines 95-97 in the Astronaut Tab, If Statement within a For Loop that states if the score in the current element of the array is lower than the lowest score, it becomes the new lowest score.

Lines 55-62 in the Debris Tab, 2 If Statements within a bespoke method that states if the y Coordinates of the Debirs exceed the height, or are less than 0, the Debris randomises on the X Axis, and the Debris reverses direction.

Lines 94-100 in the Debris Tab, If Statement within a Setter Method, that states if the width is outside certain coordinates, a default width is imposed.

Lines 105-111 in the Debris Tab, If Statement within a Setter Method, that states if the height is outside certain coordinates, a default height is imposed.

Lines 51-57 of the Earth Tab, If Statement within a Setter Method, that states if the width is outside certain coordinates, a default width is imposed.

Lines 120-125 of the Exit tab, If Statement within a Setter Method, that states if the R Colour is outside certain coordinates, a default R Colour is imposed.

Lines 129-134 of the Exit tab, If Statement within a Setter Method, that states if the G Colour is outside certain coordinates, a default G Colour is imposed.

Lines 137-142 of the Exit tab, If Statement within a Setter Method, that states if the B Colour is outside certain coordinates, a default B Colour is imposed.

Lines 145-150 of the Exit tab, If Statement within a Setter Method, that states if the transparency is outside certain coordinates, a default transparency is imposed.

Lines 91-96 of the Forcefield tab, If Statement within a Setter Method, that states if the R Colour is outside certain coordinates, a default R Colour is imposed.

Lines 100-105 of the Forcefield tab, If Statement within a Setter Method, that states if the G Colour is outside certain coordinates, a default G Colour is imposed.

Lines 108-113 of the Forcefield tab, If Statement within a Setter Method, that states if the B Colour is outside certain coordinates, a default B Colour is imposed.

Lines 116-121 of the Forcefield tab, If Statement within a Setter Method, that states if the transparency is outside certain coordinates, a default transparency is imposed.

Lines 43-95 of the Spaceship tab, Nested If Statement, and multiple If Statements for Spaceship keyhandler, and boundaries.

Lines 130-136 of the Spaceship tab, If Statement within a Setter Method, that states if the width is outside certain coordinates, a default width is imposed.

-------
LOOPS
-------

Lines 54-67 of the Main Tab. 2 While Loops, initialising 2 arrays of Debris in Setup().

Lines 94-99 of the Main Tab. Do While Loop, initialising array of Stars in Setup().

Lines 115-120 of the Main Tab. Do While Loop, drawing array of Stars in Setup().

Lines 136-170 of the Main Tab. 2 For Loops with If Statments within, drawing 2 arrays of Debris, and checking for collision detection.

Lines 78-85 of the Astronaut Tab. For Loop that returns Highest Score stored in the Scores array, with If Statement contained within.

Lines 91-98 of the Astronaut Tab. For Loop that returns Lowest Score stored in the Scores array, with If Statement contained within.

Lines 103-110 of the Astronaut Tab. For Loop that returns Average Score of the total scores in the array.

Lines 118-120 of the Astronuat Tab. For returning String of Astronaut/Player name, and their High Scores.


I have used multiple If Statements, Nested Ifs, and Loops, with at least 2 of each type. So I am recording 5/5.
 
 Part D - Mark (10 /10)
 -----------------------------
 Working Game with inclusion of bespoke methods in the main sketch.
 
 bespoke methods:
 

missionAccomplished() Method. Drawn on Line 183 of the Main Tab. Defined on Lines 235-252 of the Main Tab. Executes lines of code when the gane is completed (game closes, final scoreboard is shown).
questOver() Method. Drawn on Lines 213 and 216 of the Main Tab. Defined on Lines 325-341 of the Main Tab. Lines of code executed when all lives and games are lost (game closed, final scoreboard shown).
saveProject() Method. Draw on Line 345 of the Main Tab. Defined on Lines 348-354 of the Main Tab.
Scoreboard(int fontSize) Method. Drawn on Line 108 of the Main Tab. Defined on Lines 221-233 of the Main Tab. Displays scoreboard and stats. Takes in parameter for Text Size.
Astronaut addScore(score) Method. Drawn on Line 197 of the Main Tab. Defined on Lines 66-73 of the Astronaut Tab. Adds score at the next available location in the Scores array. Takes in parameter of int 'score'.


Collision detection and screen edge and object avoidance in place and working. Keyhandler and Scoring/Lives/New Game (and resetting)/High Scores Table also in place and working.
All of which have been referenced and detailed in the above and below sections:

Collision Detection:
--------------------
Lines 261-264 in the Main Tab, If Statement nested within a Boolean method that states that if the top-down Debris is too far from the Spaceship on the X Axis, collision detection is abandoned.
Lines 266-269 in the Main Tab, If Statement nested within a Boolean method that states that if the top-down Debris is too far from the Spaceship on the Y Axis, collision detection is abandoned.
Lines 280-283 in the Main Tab, If Statement nested within a Boolean method that states that if the bottom-up Debris is too far from the Spaceship on the X Axis, collision detection is abandoned.
Lines 285-288 in the Main Tab, If Statement nested within a Boolean method that states that if the bottom-up Debris is too far from the Spaceship on the Y Axis, collision detection is abandoned.
Lines 136-170 of the Main Tab. 2 For Loops with If Statments within, drawing 2 arrays of Debris, and checking for collision detection.

Object and edge avoidance:
--------------------------
Spaceship updateShip() method, drawn on line 133 of the Main Tab, and defined on Lines 43-95 of the Spaceship Tab. Contains keyhandler, and boundaries for Spaceship.

Scoring/Lives/New Game/High Score:
---------------------------------
Lines 141-152 in the Main Tab, used 2 If Statements nested in a For Loop, which state that if the ship is hit by the top-down array of Debris, a life is lost.
And if the player proceeds to the next level, the top-down Debris coordinates are reset.

Lines 160-169 in the Main Tab, used 2 If Statements nested in a For Loop, which state that if the ship is hit by the bottom-up array of Debris, a life is lost.
And if the player proceeds to the next level, the bottom-up Debris coordinates are reset.

Lines 187-193 in the Main Tab, If Statement that states if the Spaceship goes off course, a life is lost and certain other code is executed.
Lines 306-313 in the Main Tab, nested If Statement that states if the player enters certain parameters, a life is lost. Otherwise no life is lost.
Lines 316-323 in the Main Tab, If Statement within a Boolean method that states if more lives are lost than the max amount of lives, the game is over. Otherwise the game is not yet over.
questOver() Method. Drawn on Lines 213 and 216 of the Main Tab. Defined on Lines 325-341 of the Main Tab. Lines of code executed when all lives and games are lost (game closed, final scoreboard shown)
Lines 69-72 in the Astronaut Tab, if Statement within bespoke method that adds a score at the next available location in the Scores array.
Lines 82-84 in the Astronaut Tab, If Statement within a For Loop that states if the score in the current element of the array is higher than the highest score, it becomes the new highest score.
Lines 95-97 in the Astronaut Tab, If Statement within a For Loop that states if the score in the current element of the array is lower than the lowest score, it becomes the new lowest score.
Lines 78-85 of the Astronaut Tab. For Loop that returns Highest Score stored in the Scores array, with If Statement contained within.
Lines 91-98 of the Astronaut Tab. For Loop that returns Lowest Score stored in the Scores array, with If Statement contained within.
Lines 103-110 of the Astronaut Tab. For Loop that returns Average Score of the total scores in the array.
Lines 118-120 of the Astronuat Tab. For returning String of Astronaut/Player name, and their High Scores.
Astronaut toString() Method. Drawn on Line 334 of the Main Tab. Defined on Lines 112-122 of the Astronaut Tab. Builds String representation of Astroniaut name, and the High Scores.
Astronaut highestScore() Method. Drawn on Line 335 of the Main Tab. Defines on Lines 76-87 of the Astronaut Tab. Returns Highest Score stored in the Scores Array.
Astronaut lowestScore() Method. Drawn on Line 336 of the Main Tab. Defines on Lines 89-100 of the Astronaut Tab. Returns Lowest Score stored in the Scores Array.
Astronaut averageScore() Method. Drawn on Line 337 of the Main Tab. Defines on Lines 102-110 of the Astronaut Tab. Returns Lowest Score stored in the Scores Array.
Astronaut addScore(score) Method. Drawn on Line 197 of the Main Tab. Defined on Lines 66-73 of the Astronaut Tab. Adds score at the next available location in the Scores array. Takes in parameter of int 'score'.
missionAccomplished() Method. Drawn on Line 183 of the Main Tab. Defined on Lines 235-252 of the Main Tab. Executes lines of code when the gane is completed (game closes, final scoreboard is shown).
Scoreboard(int fontSize) Method. Drawn on Line 108 of the Main Tab. Defined on Lines 221-233 of the Main Tab. Displays scoreboard and stats. Takes in parameter for Text Size.

I have inlcuded multiple examples of bespoke methods in the main sketch. I have collision detection, key handler, and scoring and new game/game reset all working perfectly.


I am awarding 10/10 for myself here.

 -----------------------------
 Part E USER DEFINED CLASSES
 -----------------------------
 
 Part E1 - Mark (10 /10)
 -----------------------------
I have created 7 Object classes. All each having overloaded constructors (default and with parameters).

Astronaut:
Lines 13-64 in Astronaut Class contain Overloaded constructers, and Getters and Setters.

Debris:
Lines 11 to 41 in Debris Class contain overloaded constructors.
Lines 65-112 in Debris Class contain Getters and Setters.
Lines 25-26 and 35-36 in the Debris Class call the debWidth and debHeight Setters.

Earth:
Lines 9-25 in the Earth Class contain overloaded constructors.
Lines 34-59 in the Earth Class contain Getters and Setters.

Exit:
Lines 17-46 in the Exit Class contain overloaded constructors.
Lines 68-152 in the Exit Class contain Getters and Setters

Forcefield:
Lines 12-34 in the Forcefield Class contain overloaded constructors.
Lines 57-123 in the Forcefield Class contain Getters and Setters.

Spaceship:
Lines 14-41 in the Spaceship Class contain overloaded constructors.
Lines 111-138 in the Spaceship Class contain Getters and Setters.

Stars:
Lines 8-23 in the Stars Class contain overloaded constructors.
Line 97 in the Main Tab initialises Stars array, using default constructor with no parameters.
Lines 42 and 71 in the Stars Class contain Getters and Setters.

As I have created classes with overloaded constructors, getters, setters, relevant and accurate access modifiers in each class, I am awarding myself 10/10.

 
 Part E2 - Mark (10 /10)
 -----------------------------
 
----------------------------------------
CLASS BESPOKE METHODS WITH NO PARAMETERS
----------------------------------------

Stars Display() method. Drawn on Lines 118 of the Main Tab, and defined on Lines 25-28 of the Stars Tab. Displays Stars.
starsReset() method. Drawn on Line 124 of the Main Tab, and defined on Lines 36-40 of the Stars Tab. Rests Stars position.
Forcefield Display() Method. Drawn on Line 128 of the Main Tab, defined on Lines 36-41 of the Forcefield Tab. Displays Forcefield.
Exit Display() Method. Drawn on Line 131 of the Main Tab, defined on Lines 48-52 of the Exit Tab. Displays Exit.
Spaceship updateShip() method, drawn on line 133 of the Main Tab, and defined on Lines 43-95 of the Spaceship Tab. Contains keyhandler, and boundaries for Spaceship.
Spaceship Display() method, drawn on line 134 of the Main Tab, and defined on Lines 97-103 of the Spaceship Tab. Displays Spaceship
Debris Update() and Display() Methods, draw on lines 138-139 and 156-157 of the Main Tab. Defined on Lines 44-63 of the Debris Tab. Updates Debris, and Displays Debris.
Spaceship shipReset() Method. Drawn on Lines 144, 163, 176 and 191 of the Main Tab. Defined on Lines 105-109 of the Spaceship Tab. Resets Spaceship to starting position.
Debris debReset() Method. Drawn on Lines 151 and 168 of the Main Tab. Defined on Lines 113-118 of the Debris Tab. Resets Debris position(s) to random places.
Astronaut toString() Method. Drawn on Line 334 of the Main Tab. Defined on Lines 112-122 of the Astronaut Tab. Builds String representation of Astroniaut name, and the High Scores.
Astronaut highestScore() Method. Drawn on Line 335 of the Main Tab. Defines on Lines 76-87 of the Astronaut Tab. Returns Highest Score stored in the Scores Array.
Astronaut lowestScore() Method. Drawn on Line 336 of the Main Tab. Defines on Lines 89-100 of the Astronaut Tab. Returns Lowest Score stored in the Scores Array.
Astronaut averageScore() Method. Drawn on Line 337 of the Main Tab. Defines on Lines 102-110 of the Astronaut Tab. Returns Average Score from all high scores stored in the Scores Array.
Exit exitLine() Method. Overloaded Method with no parameters. Drawn on Line 50 of the Exit Tab, and defined on Lines 54-59 of the Exit Tab. Top Half of Exit object. 
Forcefield forcefield() Method. Overloaded Method with no parameters. Drawn on Line 39 of the Forcefield Tab, and defined on Lines 43-48 of the forcefield Tab.

--------------------------------------
CLASS BESPOKE METHODS WITH PARAMETERS
--------------------------------------

Astronaut addScore(score) Method. Drawn on Line 197 of the Main Tab. Defined on Lines 66-73 of the Astronaut Tab. Adds score at the next available location in the Scores array. Takes in parameter of int 'score'.
Exit exitLine(int weight) Method. Drawn on Line 51 of the Exit Tab. Defined on Lines 61-66 of the Exit Tab. Bottom half of Exit object. Takes in parameter for strokeWeight
Forcefield forcefield(int) Method. Drawn on Line 40 of the Forcefield Tab, and defined on Lines 50-55 of the forcefield Tab. Takes in parameter for strokeWeight
Stars starsInSky(float) Method. Drawn on Line 27 of the Stars Tab. Defined on lines 30-34 of the Stars Tab. Takes in Parameter for transparency, and gets used in the Display()method.

----------------------------------------
CLASS BESPOKE METHODS WITH RETURN VALUES
----------------------------------------

Astronaut toString() Method. Drawn on Line 334 of the Main Tab. Defined on Lines 112-122 of the Astronaut Tab. Builds String representation of Astroniaut name, and the High Scores.
Astronaut highestScore() Method. Drawn on Line 335 of the Main Tab. Defines on Lines 76-87 of the Astronaut Tab. Returns Highest Score stored in the Scores Array.
Astronaut lowestScore() Method. Drawn on Line 336 of the Main Tab. Defines on Lines 89-100 of the Astronaut Tab. Returns Lowest Score stored in the Scores Array.
Astronaut averageScore() Method. Drawn on Line 337 of the Main Tab. Defines on Lines 102-110 of the Astronaut Tab. Returns Average Score from all high scores stored in the Scores Array.

--------------------------------------------
CLASS BESPOKE METHODS WITH NO RETURN VALUES
--------------------------------------------

Stars Display() method. Drawn on Lines 118 of the Main Tab, and defined on Lines 25-28 of the Stars Tab. Displays Stars.
starsReset() method. Drawn on Line 124 of the Main Tab, and defined on Lines 36-40 of the Stars Tab. Rests Stars position.
Forcefield Display() Method. Drawn on Line 128 of the Main Tab, defined on Lines 36-41 of the Forcefield Tab. Displays Forcefield.
Exit Display() Method. Drawn on Line 131 of the Main Tab, defined on Lines 48-52 of the Exit Tab. Displays Exit.
Spaceship updateShip() method, drawn on line 133 of the Main Tab, and defined on Lines 43-95 of the Spaceship Tab. Contains keyhandler, and boundaries for Spaceship.
Spaceship Display() method, drawn on line 134 of the Main Tab, and defined on Lines 97-103 of the Spaceship Tab. Displays Spaceship
Debris Update() and Display() Methods, draw on lines 138-139 and 156-157 of the Main Tab. Defined on Lines 44-63 of the Debris Tab. Updates Debris, and Displays Debris.
Spaceship shipReset() Method. Drawn on Lines 144, 163, 176 and 191 of the Main Tab. Defined on Lines 105-109 of the Spaceship Tab. Resets Spaceship to starting position.
Debris debReset() Method. Drawn on Lines 151 and 168 of the Main Tab. Defined on Lines 113-118 of the Debris Tab. Resets Debris position(s) to random places.
Exit exitLine() Method. Overloaded Method with no parameters. Drawn on Line 50 of the Exit Tab, and defined on Lines 54-59 of the Exit Tab. Top Half of Exit object. 
Forcefield forcefield() Method. Overloaded Method with no parameters. Drawn on Line 39 of the Forcefield Tab, and defined on Lines 43-48 of the forcefield Tab.
Astronaut addScore(score) Method. Drawn on Line 197 of the Main Tab. Defined on Lines 66-73 of the Astronaut Tab. Adds score at the next available location in the Scores array. Takes in parameter of int 'score'.
Exit exitLine(int weight) Method. Drawn on Line 51 of the Exit Tab. Defined on Lines 61-66 of the Exit Tab. Bottom half of Exit object. Takes in parameter for strokeWeight
Forcefield forcefield(int) Method. Drawn on Line 40 of the Forcefield Tab, and defined on Lines 50-55 of the forcefield Tab. Takes in parameter for strokeWeight
Stars starsInSky(float) Method. Drawn on Line 27 of the Stars Tab. Defined on lines 30-34 of the Stars Tab. Takes in Parameter for transparency, and gets used in the Display()method.

--------------------------------------
CLASS BESPOKE METHODS WITH OVERLOADING
--------------------------------------

Exit exitLine() Method. Overloaded Method with no parameters. Drawn on Line 50 of the Exit Tab, and defined on Lines 54-59 of the Exit Tab. Top Half of Exit object. 
Forcefield forcefield() Method. Overloaded Method with no parameters. Drawn on Line 39 of the Forcefield Tab, and defined on Lines 43-48 of the forcefield Tab.
Exit exitLine(int weight) Method. Overloaded Method with strokeWeight parameter. Drawn on Line 51 of the Exit Tab. Defined on Lines 61-66 of the Exit Tab. Bottom half of Exit object. Takes in parameter for strokeWeight
Forcefield forcefield(int) Method. Drawn on Line 40 of the Forcefield Tab, and defined on Lines 50-55 of the forcefield Tab. Takes in parameter for strokeWeight

Multiple bespoke methods used. More than one example of No Return Value, Parameters, Return Values, Overloading, With Parameters.


I am awarding myself 10/10 here.
 
 Part E3 - Mark (10 /10)
 -----------------------------

The user-defined classes have been used in an appropriate manner.
Overloaded constructors with parameters have been used for 3+ classes in the main tab.
Getters have been used for 3+ classes in the main tab.
Setter have been created in all classes, but only used in the Debris class.
Please see below examples per class, with relevant line number and functionality:
 
Astronaut:
Lines 13-64 in Astronaut Class contain Overloaded constructers, and Getters and Setters.
Astronaut constructor with Parameters initialised in the Main Tab on Line 74.
getAstroName() was called in the Main Tab on lines 203, 228 and 242 in the Main Tab.

Debris:
Lines 11 to 41 in Debris Class contain overloaded constructors.
Lines 58 and 65 in the Main Tab initialise Debris using contructors with parameters.
Lines 65-112 in Debris Class contain Getters and Setters.
Lines 25-26 and 35-36 in the Debris Class call the debWidth and debHeight Setters.
Lines 258-259 and 277-278 in the Main Tab call the getXCoord and getYCoord Getters.

Earth:
Lines 9-25 in the Earth Class contain overloaded constructors.
Line 47 in the Main Tab initialises Earth object using default constructor with no parameters.
Lines 34-59 in the Earth Class contain Getters and Setters.

Exit:
Lines 17-46 in the Exit Class contain overloaded constructors.
Line 51 in the Main Tab, new Exit object initialised with overloaded constructor with parameters.
Lines 68-152 in the Exit Class contain Getters and Setters

Forcefield:
Lines 12-34 in the Forcefield Class contain overloaded constructors.
Line 49 in the Main Tab, new Forcefield object initialised with overloaded constructor with parameters.
Lines 57-123 in the Forcefield Class contain Getters and Setters.
Line 296, getFSize1 and getFSize2 are called in the Main Tab.
Line 306, getFSize1 and getFSize2 are called in the Main Tab.
Line 309, getFWidth is called in the Main Tab.

Spaceship:
Lines 14-41 in the Spaceship Class contain overloaded constructors.
Line 69 in the Main Tab initialises a new Spaceship object, using an overloaded constructor with parameters.
Lines 111-138 in the Spaceship Class contain Getters and Setters.
Lines 262, 267, 281, 286, and 309, getShipWidth is called in the Main Tab.
Lines 277 and 278, getXCoord and getYCoord are called in the Main Tab.
Lines 296, 306 and 309, getXCoord and getYCoord are called in the Main Tab

Stars:
Lines 8-23 in the Stars Class contain overloaded constructors.
Line 97 in the Main Tab initialises Stars array, using default constructor with no parameters.
Lines 42 and 71 in the Stars Class contain Getters and Setters.


Declared multiple overloaded constructors, and getters in the main tab. I had set Setters up for call classes, but as I only used a Setter for the Debris class, I am awarding myself 8/10 here.

 ------------------------
 PART F - DATA STRUCTURES
 ------------------------
 
 Part F1 - Mark (20 /20)
 -----------------------------
 - Use of a data structure to store information i.e. array

  Declared a fixed size array of Stars on Line 12 in the Main Tab.:
  Stars were initilaised on Lines 94-99 in the Main Tab, using .length in a Loop.
  Stars were drawn on Lines 115-120 in the Main Tab, using .length in a Loop.
  
  Declared a fixed size array of Debris on Line 15 in the Main Tab.
  Debris was initialised on Lines 54-60 in the Main Tab, using .length in a Loop.
  Debris was drawn on Lines 137-139 in the Main Tab, using .length in a Loop.
  
  Declared another fixed size array of Debris on Line 16 in the Main Tab.
  Debris was initialised on Lines 54-60 in the Main Tab, using .length in a Loop.
  Debris was drawn on Lines 137-139 in the Main Tab, using .length in a Loop.
  
  Declared an array which takes in user input on Line 5 in the Astronaut Tab.
  Scores array initialised on Line 33 in the Astronaut Tab, taking in the integer of Number of Games, which is selected by the user.
  The Scores array is then used record the score in each count (element of the array), using the addScore method which is called when a game ends.
  These scores in the array are stored, and used for statistics (min, max, average scores) which are displayed at the end of each game.
  
  Declared an array which takes in user input on Line 6 in the Astronaut Tab.
  Levels array initialised on Line 33 in the Astronaut Tab, taking in the integer of Number of Levels, which is selected by the user.
  The game ends when the last level in the array is surpassed, assuming the player does not lose all lives.
  
  I have created 5 arrays. 3 Object arrays with fixed size, using .length.
  2 Arrays taking in input from the end user, for the Astronaut class.
  
  I am awarding myself 20/20 here
  
 
 Part F2 - Mark (17 /20)
 -----------------------------
 - Calculations performed on the information stored
 
  Declared an array which takes in user input on Line 5 in the Astronaut Tab.
  Scores array initialised on Line 33 in the Astronaut Tab, taking in the integer of Number of Games, which is selected by the user.
  The Scores array is then used record the score in each count (element of the array), using the addScore method which is called when a game ends.
  These scores in the array are stored, and used for statistics (min, max, average scores) which are displayed at the end of each game.
  
  .length is used in all arrays except for the arrays in the Astronaut tab. The arrays in the astronaut tab use the Count variable instead.
  
  As I have Min, Max, Average, and other arrays using .length, I am awarding myself 17/20 here.
  
  
 
 FINAL CHECK:
 I have checked the constraints and I am not breaking any constraints

 
 */
