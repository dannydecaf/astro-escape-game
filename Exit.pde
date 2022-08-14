public class Exit {

  //Declaring class properties
  private int x1;                  //X1 Coordinate for Exit (Top Half)
  private int y1;                  //Y1 Coordinate for Exit (Top Half)
  private int x2;                  //X2 Coordinate for Exit (Top Half)
  private int y2;                  //X2 Coordinate for Exit (Top Half)
  private int xA;                  //X1 Coordinate for Exit (Bottom Half)
  private int yA;                  //Y1 Coordinate for Exit (Bottom Half)
  private int xB;                  //X2 Coordinate for Exit (Bottom Half)
  private int yB;                  //Y1 Coordinate for Exit (Bottom Half)
  private int rForceColor;         //R Colour Coordinate for Exit
  private int gForceColor;         //G Colour Coordinate for Exit
  private int bForceColor;         //B Colour Coordinate for Exit
  private int forceTransparency;   //Transparency Coordinate for Exit

  //Default constructor
  public Exit() {
    x1 = width - 30;
    y1 = 300;
    x2 = width;
    y2 = 300;
    xA = width - 30;
    yA = height-300;
    xB = width;
    yB = height - 300;
    rForceColor = 0;
    gForceColor = 255;
    bForceColor = 255;
    forceTransparency = 150;
  }
  //Overloaded construcotr with RGBA parameters
  public Exit(int rForceColor, int gForceColor, int bForceColor, int forceTransparency) {
    x1 = width - 30;
    y1 = 300;
    x2 = width;
    y2 = 300;
    xA = width - 30;
    yA = height-300;
    xB = width;
    yB = height - 300;
    this.rForceColor = rForceColor;
    this.gForceColor = gForceColor;
    this.bForceColor = bForceColor;
    this.forceTransparency = forceTransparency;
  }

  //Exit display method, which gets called in draw
  public void display() {
    exitLine();    //Overloaded method with no parameters. Top half of Exit
    exitLine(3);   //Overloaded method with 1 parameter. Bottom half of Exit
  }

  //Overloaded method with no parameters. Top half of Exit
  public void exitLine() {
    strokeWeight(3);
    stroke(this.rForceColor, this.gForceColor, this.bForceColor, this.forceTransparency);
    line(width-20, 300, width, 300);
  }

  //Overloaded method with 1 parameter. Bottom half of Exit
  public void exitLine(int weight) {
    strokeWeight(weight);
    stroke(this.rForceColor, this.gForceColor, this.bForceColor, this.forceTransparency);
    line(width-20, height-300, width, height-300);
  }

  //Getter Methods
  public int getX1()
  {
    return x1;
  }
  public int getY1()
  {
    return y1;
  }
  public int getX2()
  {
    return x2;
  }
  public int getY2()
  {
    return y2;
  }
  public int getXA()
  {
    return xA;
  }
  public int getYA()
  {
    return yA;
  }
  public int getXB()
  {
    return xB;
  }
  public int getYB()
  {
    return yB;
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
    //The R Color variable must be between 0 and 255. Otherwise the forcefield is white (255).
    if ((rForceColor >= 0) && (rForceColor <= 255)) {
      this.rForceColor = rForceColor;
    } else {
      this.rForceColor = 255;
    }
  }

  public void setGForceColor(int gForceColor) {
    //The R Color variable must be between 0 and 255. Otherwise the forcefield is white (255).
    if ((gForceColor >= 0) && (gForceColor <= 255)) {
      this.gForceColor = gForceColor;
    } else {
      this.gForceColor = 255;
    }
  }
  public void setBForceColor(int bForceColor) {
    //The R Color variable must be between 0 and 255. Otherwise the forcefield is white (255).
    if ((bForceColor >= 0) && (bForceColor <= 255)) {
      this.bForceColor = bForceColor;
    } else {
      this.bForceColor = 255;
    }
  }
  public void setForceTransparency(int forceTransparency) {
    //The R Color variable must be between 0 and 255. Otherwise the forcefield is white (255).
    if ((forceTransparency >= 0) && (forceTransparency <= 255)) {
      this.forceTransparency = forceTransparency;
    } else {
      this.forceTransparency = 255;
    }
  }
}
