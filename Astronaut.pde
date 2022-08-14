public class Astronaut
{
  //Declaring class properties
  private String astroName;          //Name of Astronaut
  private int[] scores;              //Array for Scores created
  private int[] levels;              //Array for Levels created
  /*No Getter and Setter is created for the Count field as it is an internal field that 
   has a dual purpose:
   1. represents the next available index in the array 
   2. represents the number of high scores added to the array*/
  private int count;

  //default constructor
  public Astronaut()
  {
    astroName = "RocketMan";
    scores = new int[2];
    levels = new int[2];
    count = 0;
  }

  /*Constructor to create an Astronaut with a starting name and sets the size of the array
   to the number of games in the session, and the number of levels in the session, as entered by the player.*/
  public Astronaut(String astroName, int numberOfGames, int numberOfLevels)
  {
    if (astroName.length() < 4)
    {
      this.astroName = astroName;
    } else
    {
      this.astroName = astroName.substring(0, 4);
    }
    scores = new int[numberOfGames];
    levels = new int[numberOfLevels];
    count = 0;
  }

  //Getter Methods
  public String getAstroName()
  {
    return astroName;
  }
  public int[] getScores()
  {
    return scores;
  }
  public int[] getLevels()
  {
    return levels;
  }

  //Setter Methods
  public void setAstroName(String astroName)
  {
    this.astroName = astroName.substring(0, 6);
  }
  public void setScores(int[] scores)
  {
    this.scores = scores;
  }
  public void setLevels(int[] levels)
  {
    this.levels = levels;
  }

  //Method to add a score at the next available location in the Scores array   
  public void addScore(int score)
  {
    if (score >= 0) {
      scores[count] = score;
      count++;
    }
  }


  /*Method returns the Highest Score stored in the Scores array   
   if there is only one element in the Scores array, this value is returned as the highest*/
  public int highestScore()
  {
    int highestScore = scores[0];
    for (int i = 1; i < count; i++) {
      if (scores[i] > highestScore) {
        highestScore = scores[i];
      }
    }   
    return highestScore;
  }

  /*method returns the Lowest Score stored in the Scores array   
   if there is only one element in the Scores array, this value is returned as the lowest*/
  public int lowestScore()
  {
    int lowestScore = scores[0] ;
    for (int i = 1; i < count; i++) {
      if (scores[i] < lowestScore) {
        lowestScore = scores[i];
      }
    }   
    return lowestScore;
  }

  //Method calculates and returns the Average of all the High Scores stored in the Scores array   
  public int averageScore()
  {
    int total = 0;
    for (int i = 0; i < count; i++) {
      total = total +  scores[i];
    }   
    return total / count;
  }

  /*Method builds a String representation of the Astronaut name, and their scores
   This string is then returned*/
  public String toString()
  {
    String str = astroName + ", please see your scores below:\n\n";

    for (int i = 0; i < count; i++) {
      str = str + "     Score " + (i+1) + ": " + scores[i] + "\n";
    }   
    return str;
  }
}
