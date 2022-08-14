public class Earth {

  //Declaring class properties
  private PImage earth;            //Image loaded for Earth
  private float earthWidth;        //Width of Earth
  private float xCoord;            //X Coord of Earth
  private float yCoord;            //y Coord of Earth

  //Default constructor
  public Earth()
  {
    earth = loadImage("earth.jpg");  //location of Earth image
    earthWidth = 50;
    xCoord = width - earthWidth - 30;
    yCoord = 30;
  }

  //Overloaded constructor with x coord, y cood, and width parameters
  public Earth (float xCoord, float yCoord, float earthWidth)
  {
    earth = loadImage("earth.jpg");    //location of Earth image
    setEarthWidth(earthWidth);
    this.xCoord = xCoord;
    this.yCoord = yCoord;
  }

  //Earth display method, which gets called in draw
  public void display()
  {
    imageMode(CORNER);
    image(earth, xCoord, yCoord, earthWidth, earthWidth);
  }

  //Getter Methods
  public float getXCoord()
  {
    return xCoord;
  }
  public float getYCoord()
  {
    return yCoord;
  }
  public float getEarthWidth()
  {
    return earthWidth;
  }

  //Setter Methods
  public void setEarthWidth(float earthWidth)
  {
    /*The Earth width must be between 30 and 60 (inclusive)
     Otherwise an Earth width of 50 is imposed*/
    if ((earthWidth >= 30) && (earthWidth <= 60)) {
      this.earthWidth = earthWidth;
    } else {
      this.earthWidth = 50;
    }
  }
}
