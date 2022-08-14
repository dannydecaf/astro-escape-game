/* //<>//
Name :  Dan Coffey
 
Student Number:  08559350
*/

//Imports
import javax.swing.*;
import processing.sound.*;

//Objects required in the program
Stars[] stars = new Stars[280];
Earth earth;
Forcefield forcefield;
Debris[] debris = new Debris[16];
Debris[] debrisUp = new Debris[16];
Spaceship spaceship;
Exit exit;
Astronaut astronaut;

//Sound Files
SoundFile music;
SoundFile directHit;
SoundFile nextLevel;
SoundFile adrift;
SoundFile toughLuck;
SoundFile safeAndSound;

//Current game data
int livesLost = 0;             //Keeps track of the number of lives lost in the current game. Starts at 0
int score = 0;                 //Keeps score of the current game
int maxLivesPerLevel = 3;      //Maximum number of lives that can be lost before the game ends

//Level data
int currentLevel = 1;          //Current level of the game, starting with 1
int lastLevel;                 //Last level of the game, based on the number of levels the end user has chosen to play

//Game data
int maxNumberOfGames;          //Maximum number of games in a tournament, which is chosen by the end user
int numberOfGamesPlayed = 0;   //Number of games played, so far, in the tournament. Starts at 0

void setup()
{  
  size(1280, 720);
  noCursor();

  earth = new Earth();                              //Setting up Earth object from class, using default constructor. Overloaded constructor with parameters could also have been used

  forcefield = new Forcefield(0, 255, 255, 150);    //Setting up Forcefield object from class, using overloaded constructor with hard-coded colour values. Default constructor could also have been used

  exit = new Exit(0, 255, 255, 150);                //Setting up Exit object from class, using overloaded constructor with hard-coded colour values. Default constructor could also have been used


  /*Setting up a randomised array/row of space Debris, coming down from the top of the screen. While Loop used to initialise array.
   Overloaded constructor with paramaters used. Default constructor could also have been used.*/
  int i = 1;
  while (i < debris.length) {
    debris[i] = new Debris(random(150, width), random(height), 10, 20, random(3.5, 5.0), 4);      
    i++;
  }
  /*Setting up a randomised array/row of space Debris, coming up from the bottom of the screen. While Loop used to initialise array.
   Overloaded constructor with paramaters used. Default constructor could also have been used.*/
  int j = 1;
  while (j <debrisUp.length) {
    debrisUp[j] = new Debris(random(150, width), random(height), 10, 20, random(-5.0, -3.5), 4);
    j++;
  }

  spaceship = new Spaceship(30, 2, 2);               //Initialising Spaceship object from class, overloaded constructor with hard-coded values. Default constructor could also have been used

  //Create an Astronaut object with data entered by the user. Also select the number of levels the end-user wishes to play until game completion (1-100 levels can be chosen)
  maxNumberOfGames = Integer.parseInt(JOptionPane.showInputDialog("Welcome to 'Astro Escape: Return to Planet Earth'\n\n\n Please enter the number of games you would like to play:\n\n", "3"));
  lastLevel = Integer.parseInt(JOptionPane.showInputDialog("Please enter the number of levels you would like in your quest:\n\n (Please select a number between 1-100)\n\n Give 100 levels a go if you're hardcore ;)\n\n", "3"));
  astronaut = new Astronaut(JOptionPane.showInputDialog("Enter Player Name (max 4 characters)\n\n"), maxNumberOfGames, lastLevel);
  
  //If Statement, creating data validation for the number of games that can be selected (1-10). A default value of 5 is imposed if selection is not within parameters
  if ((maxNumberOfGames >= 1) && (maxNumberOfGames <= 10)) {
    maxNumberOfGames = maxNumberOfGames;
  } else if (maxNumberOfGames == 00) {
    maxNumberOfGames = 1;
  } else {
    maxNumberOfGames = 5;
  }

  //If Statement, creating data validation for the number of levels that can be selected (1-100). A default value of 20 is imposed if selection is not within parameters
  if ((lastLevel >= 1) && (lastLevel <= 100)) {
    lastLevel = lastLevel;
  } else if (lastLevel == 0) {
    lastLevel = 1;
  } else {
    lastLevel = 20;
  }

  //Do While Loop, initialising array of Stars, using default constructor. Overloaded constructor with parameters could also have been chosen
  int l = 1;
  do {
    stars[l] = new Stars();
    l++;
  } while (l < stars.length);

  music = new SoundFile(this, "David Bowie - Starman 8-bit.mp3");    //Background music which loops through game, and stops if all games are over, or if the quest is completed
  music.loop();
}

void draw()
{ 
  background(0);       //Clear the background
  scoreBoard(12);      //Calling Scoreboard method, used to display player name current score, and other stats such as: current level, lives remaining, and games remaining

  //If Statement, which calls Earth method, displaying image of Earth on the horizon when the player is on the last level
  if (currentLevel == lastLevel) {
    earth.display();
  }

  //Do While Loop, drawing an object array of Stars
  int l = 1;
  do {
    stars[l].display();
    l++;
  } while (l < stars.length);

  //If the player gets to the next avaliable level, reset pattern of Stars
  if (levelUp(spaceship) == true) {
    stars[l].starsReset();
  }

  //Drawing Forcefield object
  forcefield.display();

  //Drawing Exit object
  exit.display();

  spaceship.updateShip();  //Update the Spaceship in line with Keyhandler configured within the Spaceship class
  spaceship.display();    //Displaying Spaceship object in main method

  //Drawing the top-down object array of Debris initialised from loop
  for (int i = 1; i < debris.length; i++) {
    debris[i].update();  //Updating position of debris
    debris[i].display();  //Displaying debris

    //If the spaceship and top-down Debris overlap each other, the following code is invoked
    if (hitShipTop(spaceship, debris[i]) == true) {
      directHit = new SoundFile(this, "collision.mp3");    //Sound effect for getting hit by debris
      directHit.play();
      spaceship.shipReset();    //Resets spaceship to starting position
      livesLost++;              //Number of lives lost is incremented
    }

    //If Statement, where if the player reaches the next level, the Debris top-down array randomises/resets
    if (levelUp(spaceship) == true) {
      debris[i].debReset();
    }
  }
  //Drawing the bottom-up object array of Debris initialised from loop
  for (int j = 1; j <debrisUp.length; j++) {
    debrisUp[j].update();  //updating position of debris
    debrisUp[j].display();  //displaying debris

    //If the spaceship and bottom-up Debris overlap each other, the following code is invoked
    if (hitShipBottom(spaceship, debrisUp[j]) == true) {
      directHit = new SoundFile(this, "collision.mp3");    //Sound effect for getting hit by debris
      directHit.play();
      spaceship.shipReset();    //Resets spaceship to starting position
      livesLost++;              //Number of lives lost is incremented
    }
    //If Statement, where if the player reaches the next level, the bottom-up Debris array randomises/resets
    if (levelUp(spaceship) == true) {
      debrisUp[j].debReset();
    }
  }

  //If boolean method returns true, proceed to the next level
  if (levelUp(spaceship) == true) {
    nextLevel = new SoundFile(this, "level up.mp3");    //Sound effect for progressing to next level
    nextLevel.play();
    spaceship.shipReset();                                  //Resets spaceship to starting position
    currentLevel++;                                         //Current level number is incremented
    score+=50;                                              //Score is incremented by 50 if the player progresses to the next level
    livesLost = 0;                                          //Wipes out any lost lives upon getting to the next level

    //if player exceeds the number of levels in the lastLevel variable, the quest is successful and the game is completed and finishes
    if (currentLevel > lastLevel) {  
      missionAccomplished();
    }
  }

  //If boolean method returns true, a life is lost
  if (offCourse(spaceship) == true) {
    adrift = new SoundFile(this, "off course.mp3");
    adrift.play();
    spaceship.shipReset();                                  //Resets spaceship to starting position
    livesLost++;                                            //Number of lives lost is incremented
  }

  //Nested If Statement. If a game ends, the following code is invoked
  if (gameOver(spaceship) == true) {
    astronaut.addScore(score);                              //Add the score of the current game to the array in astronaut
    numberOfGamesPlayed++;                                  //Increment the number of games played

    //If the number of games played is less than the amount of games chosen at the start, the following code is invoked
    if (numberOfGamesPlayed < maxNumberOfGames) {
      int reply = JOptionPane.showConfirmDialog(null, 
        "Game Over, " + astronaut.getAstroName() + "! " + "\n\n\nYou scored " + score + ".\n\n\nWould you like to play the next game in your quest?\n\n\nPress the 'Enter' key to go again.\n\nPress the 'Esc' key to Abort Mission.", 
        "Play Next Game?", 
        JOptionPane.YES_NO_OPTION);            //Confirm Dialog Box, asking is user wishes to use the next game availbale (if available)

      //If reply is 'Yes', the following code is invoked
      if (reply == JOptionPane.YES_OPTION) {
        currentLevel = 1;                                    //Bring player back to Level 1 if the game is over
        livesLost = 0;                                       //Resets Lives Lost counter 
        score = 0;                                           //Resets score to 0
      } else {
        questOver();                                         //Calls bespoke method, which terminates the game, and quest
      }
    } else {
      questOver();                                           //Calls bespoke method, which terminates the game, and quest
    }
  }
}

//Bespoke method which displays scoreboard and other stats
void scoreBoard(int fontSize) {
  int gamesLeft = maxNumberOfGames - numberOfGamesPlayed;
  int livesLeft = maxLivesPerLevel - livesLost;
  fill(255, 200);
  textAlign(LEFT);
  textSize(fontSize);
  text("Player Name: " + astronaut.getAstroName(), 15, 20);
  text("Level: " + currentLevel, 15, 40);
  text("Score: " + score, 15, 60);
  text("Lives Remaining: " + livesLeft, 15, 90);
  text("Games Remaining: " + gamesLeft, 15, 110);
}

//Bespoke method which gets called when a player completes the last level
void missionAccomplished() {
  safeAndSound = new SoundFile(this, "mission accomplished.mp3");    //Sound effect for completing game
  safeAndSound.play();
  music.stop();    //Background music stops
  astronaut.addScore(score);
  numberOfGamesPlayed++;
  JOptionPane.showMessageDialog(null, "Welcome Home, " + astronaut.getAstroName()+"!" +"\n\nYou made it back to Earth safe and sound.\n\n"
    + "Number of Games Played: " + numberOfGamesPlayed
    + "\nLevel Reached: Level "  + (currentLevel - 1)
    +"\n\n"                      + astronaut.toString()
    + "\nHighest Score: "        + astronaut.highestScore()
    +   "\nLowest Score:  "      + astronaut.lowestScore()
    +   "\nAverage Score: "      + astronaut.averageScore(), 
    "Mission Accomplished!", 
    JOptionPane.INFORMATION_MESSAGE);
  exit();
}

//Method returns true if the top-down array of the Debris hits the Spaceship
boolean hitShipTop(Spaceship spaceship, Debris debris)
{
  //These variables measure the magnitude of the gap between the top-down Debris and the Spaceship
  float shipDistanceX = abs(debris.getXCoord() - spaceship.getXCoord());
  float shipDistanceY = abs(debris.getYCoord() - spaceship.getYCoord());

  //The Debris is too far away from the Spaceship on the X axis to have a collision, so abandon collision detection
  if (shipDistanceX > (spaceship.getShipWidth()/2)) {
    return false;
  }

  //The Debris is too far away from the Spaceship on the Y axis to have a collision, so abandon collision detection
  if (shipDistanceY > (spaceship.getShipWidth()/2)) {
    return false;
  }
  return true;
}

//Method returns true if the bottom-up array of the Debris hits the spaceship
boolean hitShipBottom(Spaceship spaceship, Debris debrisUp)
{
  //These variables measure the magnitude of the gap between the bottom-up Debris and the Spaceship
  float shipDistanceX2 = abs(debrisUp.getXCoord() - spaceship.getXCoord());
  float shipDistanceY2 = abs(debrisUp.getYCoord() - spaceship.getYCoord());

  //The Debris is too far away from the Spaceship on the X axis to have a collision, so abandon collision detection
  if (shipDistanceX2 > (spaceship.getShipWidth()/2)) {
    return false;
  }

  //The Debris is too far away from the Spaceship on the Y axis to have a collision, so abandon collision detection
  if (shipDistanceY2 > (spaceship.getShipWidth()/2)) {
    return false;
  }

  return true;
}

//Method returns true if the Spaceship exits the right of the screen via the Exit parameters
boolean levelUp(Spaceship spaceship)
{
  if ((spaceship.getXCoord() > width) && (spaceship.getYCoord() > forcefield.getFSize1()) && (spaceship.getYCoord() < forcefield.getFSize2())) {
    return true;
  } else {
    return false;
  }
}

//Method returns true if the Spaceship goes off-screen
boolean offCourse(Spaceship spaceship)
{
  if ((spaceship.getXCoord() > width) && (spaceship.getYCoord() < forcefield.getFSize1()) || ((spaceship.getXCoord() > width) && (spaceship.getYCoord() > forcefield.getFSize2()))) {
    return true;
  }
  if ((spaceship.getYCoord() > height - spaceship.getShipWidth() / 2) && (spaceship.getXCoord() > forcefield.getFWidth() - spaceship.getShipWidth() / 2)) {
    return true;
  } else {
    return false;
  }
}

//Method returns true if all lives within a game are lost
boolean gameOver(Spaceship spaceship)
{
  if (livesLost >= maxLivesPerLevel) {
    return true;
  }
  return false;
}

//Bespoke method defined, containing lines of code to be executed when the method is called (i.e, when all lives and all games are lost
void questOver()
{
  toughLuck = new SoundFile(this, "quest over.mp3");    //Sound effect for losing all games
  toughLuck.play();
  music.stop();      //Background music stops
  JOptionPane.showMessageDialog(null, astronaut.getAstroName() + ", \nYou didn't make it!\n\n"
    + "Number of Games Played: " + numberOfGamesPlayed
    + "\nLevel Reached: Level "  + currentLevel
    +"\n\n"                      + astronaut.toString()
    + "\nHighest Score: "      + astronaut.highestScore()
    +   "\nLowest Score:  "      + astronaut.lowestScore()
    +   "\nAverage Score: "      + astronaut.averageScore(), 
    "Quest Over!", 
    JOptionPane.ERROR_MESSAGE);
  exit();
}

void mouseClicked()  //Mouse method used to save the project as a .PNG image file by using a bespoke method
{
  saveProject();
}

void saveProject()  //Bespoke method utilising an If Statement, to save the project as a .PNG image file, if the Right Mouse Button is clicked
{
  if (mouseButton == RIGHT)
  {
    save ("astroescape.PNG"); //Saves the project as a .PNG image file
  }
}
