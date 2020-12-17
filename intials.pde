//Used for J
//x values used for horizontal line
int jx_intial_value = 170;
int jx_speed = 2;

//y values used for vertical line
int jy_intial_value = 300;
int jy_speed = 2;

//angle values for curved line
float j_intial_angle = 0;
float jangle_speed = -0.01;



//Used for H
//y values used for the two vertical lines
int hy_intial_value = 300;
int hy_speed = 2;

//x values used for horizontal line between vertical lines
int hx_intial_value = 350;
int hx_speed = 2;



//Used for C
float Cangle = PI/5;
float Cangle_speed = -0.01;


void setup() {
  size (800, 800);
}

void draw() {
  fill(0);



  //Letter J

  //Ball that creates the vertical line
  ellipse(166, jy_intial_value, 10, 10);
  //Ball that creates the horizontal line on top of the vertical line
  ellipse(jx_intial_value, 300, 10, 10);

  //These equations are for the vertical, horizontal, and curved line
  //For every pixel the angle, x value, and y value has it is adding the value to the speed
  //Which creates a vector, so the ball moves in a line rather than all over the place
  jx_intial_value += jx_speed;
  jy_intial_value += jy_speed;
  j_intial_angle += jangle_speed;

  //This if statement limits the vertical line to specific numbers   
  if (jy_intial_value > 500 || jy_intial_value < 300) jy_speed *= -1;

  //This if statement limits the vertical line on top of the J
  if (jx_intial_value > 200 || jx_intial_value < 137) jx_speed *= -1;

  //This if statement sets the guide lines for the curve at the bottom of J to start at 0 and for the angle to be more than 5*PI/4 so it does go to close to the vertical line. 
  if (j_intial_angle > 5*PI/4 || j_intial_angle < 0) jangle_speed *= -1;

  //Moves the ball, x moves it left and right, y moves it up and down
  translate(135, 500);

  //Rotates the amount of the angle which is already determined which is 0
  rotate(j_intial_angle);

  //Ball at the bottom of the vertical line
  ellipse(31.6, 0, 10, 10);

  //Repreated so the rest of the code is not messed up, but negative
  rotate(-1*j_intial_angle);
  translate(-135, -500);




  //Letter H

  //First ball that is moving vertically up and down
  ellipse(302, hy_intial_value, 10, 10);

  //Second ball farther to the right of the first ball moving vertically up and down 
  ellipse(463, hy_intial_value, 10, 10);

  //Ball that is intially in the middle of the lines but it moving horizontally between the vertically to create an actual H
  ellipse(hx_intial_value, 400, 10, 10);

  //As the x and y values for H are increasing by 1 pixel so is the speed for both x and y and there speeds
  hy_intial_value += hy_speed;
  hx_intial_value += hx_speed;

  //Limits where the vertical lines bounces back and forth
  //If both of the vertical balls eachs 500 then it bounces back and when it reaches back at the top at 300 
  if (hy_intial_value > 500 || hy_intial_value < 300) hy_speed *= -1;

  //Limits the ball in the middle to bounce back at both of x values for the vertical lines  
  if (hx_intial_value > 463 || hx_intial_value < 302)hx_speed *= -1;




  // Letter C

  Cangle += Cangle_speed;

  //This translates the ball, x moves it left to right and y moves the ball up and down
  translate(660, 400);

  //Rotates the amount of the angle which is already determined which is PI/5
  rotate(Cangle);

  //This ball starts the line of C which is to be drawn
  ellipse(100, 0, 10, 10);

  //Repeats but negative, because it would mess up everything else so it confines to only its limits rather than all of other values and messing up the other letters.
  rotate(Cangle*-1);
  translate(-660, -400);

  //Limits the circle to stop and bounce back at certain points to make it look like a C
  //This means that the curve will back if the angle is more than 7*PI/4 and the angle is less than PI/5
  if (Cangle > 7*PI/4 || Cangle < PI/5) Cangle_speed *= -1;
}
