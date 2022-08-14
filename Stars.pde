public class Stars {

  private float xCoord;              //X Coordinate of Star
  private float yCoord;              //Y Coordinate of Star
  private float starDiameter;        //Diameter of Star
  private int starColour;             //Colour of Star

  //Default constructor
  public Stars() {
    xCoord = random(0, width);
    yCoord = random(0, height);
    starDiameter = 2;
    starColour = 255;
  }

  //Overloaded constructor, with parameters for x coord, y coord, star diameter, and star colour
  public Stars(float xCoord, float yCoord, float starDiameter, int starColour)
  {
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.starDiameter = starDiameter;
    this.starColour = starColour;
  }

  //Stars display method, which gets called in Draw
  public void display() {
    starsInSky(random(170, 255));
  }

  //Bespoke method that takes in a parameter for transparency, that gets invoked in 'Display()'. Randomises transparency for a "twinkling" effect
  public void starsInSky(float starAlpha) {
    fill(starColour, starAlpha);
    circle(xCoord, yCoord, starDiameter);
  }

  //Bespoke method that resets Stars to a different position. Gets called in Draw, when the player proceeds to another level
  public void starsReset() {
    xCoord = xCoord * random(0, width);
    yCoord = yCoord * random(0, height);
  }
}
