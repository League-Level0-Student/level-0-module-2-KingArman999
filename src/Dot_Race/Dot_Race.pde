int x = 100; 
void setup() {
    size(800, 300);
}

void draw() { 
  background(240,230,215);
    //3. make it a nice color
    fill(150);
    //4. if the mouse is pressed...
      playSound();
    if (mousePressed) { 
      x +=10;
}
    ellipse(x,100,100,100);
    ellipse(x/0.75,250,100,100);

}
    //5. ... change the X co-ordinate so that the dot moves to the right
    
    //2. Draw an ellipse of height and width 100. Make sure to use your variable for the X position.
    //6. Make your dot move really fast so that it can win the race 
    //6.you have to figure out what part of your code to change
    //7. Use this method to play a ding when your dot crosses the finish line. 

import ddf.minim.*;
boolean soundPlayed = false;
void playSound() {
    if (!soundPlayed) {
        Minim minim = new Minim(this);
        AudioSample sound = minim.loadSample("ding.wav");
        sound.trigger();
        soundPlayed = true;
    }
}