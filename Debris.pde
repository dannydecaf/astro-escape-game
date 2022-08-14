public class Debris {

  //Declaring class properties
  private float xCoord;        //X Coordinate of Debris
  private float yCoord;        //Y Coordinate of Debris
  private float debWidth;      //Width of Debris
  private float debHeight;     //Height of Debris
  private float ySpeed;        //Speed at which Debris travels
  private float corner;        //Size of rounded corners added to Debris parts

  //Default constructor
  public Debris()
  {
    xCoord = random(150, width);
    yCoord = random(height);
    debWidth = 15;
    debHeight = 15;
    ySpeed = 1.5;
    corner = 0;
  }

  //Overloaded constructor with x coord, y coord, width, height, and speed parameters. Initialising class properties within
  public Debris (float xCoord, float yCoord, float debWidth, float debHeight, float ySpeed ) {

    setDebWidth(debWidth);
    setDebHeight(debHeight);
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.ySpeed = ySpeed;
  }

  //Overloaded constructor with x coord, y coord, width, height, speed, and corner parameters. Initialising class properties within
  public Debris (float xCoord, float yCoord, float debWidth, float debHeight, float ySpeed, float corner ) {

    setDebWidth(debWidth);
    setDebHeight(debHeight);
    this.xCoord = xCoord;
    this.yCoord = yCoord;
    this.ySpeed = ySpeed;
    this.corner = corner;
  }

  //Debris display method, which gets called in Draw
  public void display()
  {
    fill(255);
    noStroke();
    rect(xCoord, yCoord, debWidth, debHeight, corner);
  }

  //Debris update method, which gets called in Draw
  public void update()
  {
    yCoord = yCoord + ySpeed;
    if (this.yCoord > height + debHeight) {
      this.yCoord = 0;
      this.xCoord = random(150, width);
    }
    if (this.yCoord < 0 - debHeight) {
      this.yCoord = height;
      this.xCoord = random(150, width);
    }
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

  public float getDebWidth()
  {
    return debWidth;
  }

  public float getDebHeight()
  {
    return debHeight;
  }

  public float getYSpeed()
  {
    return ySpeed;
  }

  //Setter Methods
  public void setDebWidth(float debWidth)
  {
    /*The Debris width must be between 10 and 15 pixels
     Otherwise the Debris width is 10 pixels*/
    if ((debWidth >= 10) && (debWidth <= 15)) {
      this.debWidth = debWidth;
    } else {
      this.debWidth = 10;
    }
  }

  public void setDebHeight(float debHeight)
  {
    /*The Debris height must be between 10 and 20 pixels
     Otherwise a Debris height of 10 pixels is imposed*/
    if ((debHeight >= 10) && (debHeight <= 20)) {
      this.debHeight = debHeight;
    } else {
      this.debHeight = 20;
    }
  }
  //Bespoke method that resets the coordinates of the Debris object(s)
  public void debReset()
  {
    xCoord = random(150, width);
    yCoord = random(height);
  }
}
