public class Spaceship
{
  //declaring class properties
  private PImage rocket;             //Image loaded for Spaceship
  private float xCoord;              //X coordinate of the Spaceship
  private float yCoord;              //Y coordinate of the Spaceship
  private float shipWidth;           //Width of the Spaceship
  private float xSpeed;              //Speed of Spaceship along X-Axis
  private float ySpeed;              //Speed of Spaceship along Y-Axis
  private float boundaryWidth;       //Boundary that Spaceship cannot cross (virtually same coordinates as Forcefield)
  private float boundary1;           //Boundary for Spaceship, concerning top half of screen near top Forcefield line
  private float boundary2;           //Boundary for Spaceship, concerning bottom half of screen near bottom Forcefield line

  //Default constructor
  public Spaceship()
  {
    rocket = loadImage("gamerocket.jpg");  //location of spaceship image
    xCoord = 0 + shipWidth / 2;
    yCoord = height / 2;
    xSpeed = 2;
    ySpeed = 2;
    shipWidth = 30;
    boundaryWidth = 140;
    boundary1 = 300 + shipWidth / 2 - 2;
    boundary2 = height - 300 - shipWidth / 2;
  }

  //Constructor, taking in ship's width as a parameter. Initialising class properties within
  public Spaceship (float shipWidth, float xSpeed, float ySpeed)
  {

    rocket = loadImage("gamerocket.jpg");        //Location of spaceship image
    setShipWidth(shipWidth);                     //Implementing Setter Method for Ship Width
    xCoord = 0 + shipWidth / 2;                  
    yCoord = height / 2;                        
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    boundaryWidth = 140;
    boundary1 = 300 + shipWidth / 2 - 2;
    boundary2 = height - 300 - shipWidth / 2;
  }

  //Change position of Spaceship when keys are pressed. gets called in Draw
  public void updateShip()
  {
    if (keyPressed)
    {
      if (key == CODED)
      {
        if (keyCode == UP)
        {
          yCoord-=ySpeed;            //If the 'Up' key is pressed, move up
        } else if (keyCode == DOWN)
        {
          yCoord +=ySpeed;           //If the 'Down' key is pressed, move down
        } else if (keyCode == LEFT)
        {
          xCoord-=xSpeed;            //If the 'Left' key is pressed, move left
        } else if (keyCode == RIGHT)
          xCoord+=xSpeed;            //If the 'Right' key is pressed, move right
      } else {
        xCoord = xCoord;             //Otherwise, the x coord stays as is
        yCoord = yCoord;             //Otherwise, the y coord stays as is
      }
    }

    //Boundary conditions for Spaceship
    if ((yCoord <= 0 + shipWidth / 2) && (xCoord <= boundaryWidth)) {             //Ensures Spaceship cannot move off the top side of the display within the Forcefield
      yCoord = 0 + shipWidth / 2;
    }
    if ((yCoord >= height - shipWidth / 2) && (xCoord <= boundaryWidth)) {
      yCoord = height - shipWidth / 2;
    }
    if (xCoord < 0 + shipWidth / 2) {              //Ensures Spaceship cannot move off the left hand side of the display
      xCoord = 0 + shipWidth / 2;
    }
    if ((xCoord > boundaryWidth - shipWidth / 2 - 2) && (xCoord < boundaryWidth - shipWidth / 2 - 2 + 3) && (yCoord <= boundary1)) {
      xCoord = boundaryWidth - shipWidth / 2 - 2;  //Ensures Spaceship cannot move over the top Forcefield line
    }
    if ((xCoord > boundaryWidth - shipWidth / 2 - 2) && (xCoord < boundaryWidth - shipWidth / 2 - 2 + 3) && (yCoord >= boundary2)) {
      xCoord = boundaryWidth - shipWidth / 2 - 2;  //Ensures Spaceship cannot move over the bottom Forcefield line
    }
    if ((xCoord <= boundaryWidth + shipWidth / 2 + 2) && (xCoord > boundaryWidth + shipWidth / 2 -2) && (yCoord <= boundary1)) {
      xCoord = boundaryWidth + shipWidth / 2 + 2; //Ensures Spaceship cannot move back over the outer part of the top Forcefield line
    } 
    if ((xCoord <= boundaryWidth + shipWidth / 2 + 2) && (xCoord > boundaryWidth + shipWidth / 2 -2) && (yCoord >= boundary2)) {
      xCoord = boundaryWidth + shipWidth / 2 + 2;  //Ensures Spaceship cannot move back over the outer part of the bottom Forcefield line
    }
    if ((yCoord < boundary1 + shipWidth / 2) && (xCoord > boundaryWidth - shipWidth / 2) && (xCoord < boundaryWidth + shipWidth / 2)) {
      yCoord = boundary1 + shipWidth / 2;  //Ensures Spaceship cannot move over and back on the front of the top Forcefield line
    }
    if ((yCoord > boundary2 - shipWidth /2) && (xCoord > boundaryWidth - shipWidth / 2) && (xCoord < boundaryWidth + shipWidth / 2)) {
      yCoord = boundary2 - shipWidth /2;  //Ensures Spaceship cannot move over and back on the front of the top Forcefield line
    }
  }

  //Displays current position of Spaceship. Gets called in Draw
  public void display()
  {
    tint(240, 255, 255);          //Added custom tint of white for Spaceship, to slightly differentiate between white of Debris
    imageMode(CENTER);
    image(rocket, xCoord, yCoord, shipWidth, shipWidth);
  }

  //Resets position of Spaceship
  public void shipReset() {
    xCoord = 0 + shipWidth / 2;
    yCoord = height / 2;
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

  public float getShipWidth()
  {
    return shipWidth;
  }

  //Setter Methods
  public void setShipWidth(float shipWidth)
  {
    //The Spaceship width must be between 20 and 40 (inclusive)
    if ((shipWidth >= 20) && (shipWidth <= 40)) {
      this.shipWidth = shipWidth;
    } else {
      // If an invalid width is passed as a parameter, a default width of 30 is imposed
      this.shipWidth = 30;
    }
  }
}
