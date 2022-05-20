import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim min;
AudioPlayer beginning,chomp,death;

void setup()
{
  size(900,900);
  min=new Minim(this);
  beginning=min.loadFile("beginning.wav");
  chomp=min.loadFile("chomp.wav");
  death=min.loadFile("death.wav");
}

void draw()
{
  background(0);pushMatrix();translate(500,400);
  map();eat();cherry();
  if(start==true)
  {
    if(go==true)
    {
      orangeGoast();blueGoast();pinkGoast();redGoast();upDown();leftRight();outside();move();
      if(eatGoast==true){if((timec<60)&&(timec>0)){fill(255,150);textSize(100);text(timec/12,-15,10);}}
      if(eatGoast==false){if(time>600){rgm=6;pgm=6;bgm=6;ogm=6;}if(time>800){rgm=7;pgm=7;bgm=7;ogm=7;}}    
    }
  }
  popMatrix();
  menu();
}