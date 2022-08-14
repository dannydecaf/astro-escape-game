public class Forcefield {

  //declaring class properties
  private float fWidth;            //How far in on the X-Axis the Forcefield starts
  private float fSize1;            //The Top Forcefield line
  private float fSize2;            //The Bottom Forcefield line
  private int rForceColor;         //R Colour Coordinate for Forcefield
  private int gForceColor;         //G Colour Coordinate for Forcefield
  private int bForceColor;         //B Colour Coordinate for Forcefield
  private int forceTransparency;   //Transparency Coordinate for Forcefield

  //default constructor
  public Forcefield()
  {
    fWidth = 140;
    fSize1 = 300;
    fSize2 = height-300;
    rForceColor = 255;
    gForceColor = 50;
    bForceColor = 50;
    forceTransparency = 200;
  }

  //Overloaded constructor taking in RGBA values for Forcefield colour. Initialising class properties within
  public Forcefield(int rForceColor, int gForceColor, int bForceColor, int forceTransparency) {

    this.rForceColor = rForceColor;
    this.gForceColor = gForceColor;
    this.bForceColor = bForceColor;
    this.forceTransparency = forceTransparency;
    this.fWidth = 140;
    this.fSize1 = 300;
    this.fSize2 = height-300;
  }

  //Forcefield display method, which gets called in Draw
  public void display()
  {
    forcefield();      //Overloaded method with no parameters. Top half of Forcefield
    forcefield(3);     //Overloaded method with no parameters. Bottom half of Forcefield
  }

  //Overloaded method with no parameters. Top half of Forcefield
  public void forcefield() {
    strokeWeight(3);
    stroke(this.rForceColor, this.gForceColor, this.bForceColor, this.forceTransparency);
    line(this.fWidth, 0, this.fWidth, this.fSize1);
  }

  //Overloaded method with no parameters. Bottom half of Forcefield
  public void forcefield(int weight) {
    strokeWeight(weight);
    stroke(this.rForceColor, this.gForceColor, this.bForceColor, this.forceTransparency);
    line(this.fWidth, height, this.fWidth, this.fSize2);
  }

  //Getter Methods

  public float getFWidth()
  {
    return fWidth;
  }
  public float getFSize1()
  {
    return fSize1;
  }
  public float getFSize2()
  {
    return fSize2;
  }
  public int getRForceColor()
  {
    return rForceColor;
  }
  public int getGForceColor()
  {
    return gForceColor;
  }
  public int getBForceColor()
  {
    return bForceColor;
  }
  public int getForceTransparency()
  {
    return forceTransparency;
  }

  //Setter Methods

  public void setRForceColor(int rForceColor) {
    //The R Color variable must be between 0 and 255. Otherwise the forcefield is (255).
    if ((rForceColor >= 0) && (rForceColor <= 255)) {
      this.rForceColor = rForceColor;
    } else {
      this.rForceColor = 255;
    }
  }

  public void setGForceColor(int gForceColor) {
    //The G Color variable must be between 0 and 255. Otherwise the forcefield is (255).
    if ((gForceColor >= 0) && (gForceColor <= 255)) {
      this.gForceColor = gForceColor;
    } else {
      this.gForceColor = 255;
    }
  }
  public void setBForceColor(int bForceColor) {
    //The B Color variable must be between 0 and 255. Otherwise the forcefield is (255).
    if ((bForceColor >= 0) && (bForceColor <= 255)) {
      this.bForceColor = bForceColor;
    } else {
      this.bForceColor = 255;
    }
  }
  public void setForceTransparency(int forceTransparency) {
    //The transparency variable must be between 0 and 255. Otherwise the transparency is (255).
    if ((forceTransparency >= 0) && (forceTransparency <= 255)) {
      this.forceTransparency = forceTransparency;
    } else {
      this.forceTransparency = 255;
    }
  }
}
