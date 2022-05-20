int bgx = -35;int bgy = -15;int bgm=10;int bgG =5; boolean pDb=false;boolean bgD=false;boolean bgUp=false;boolean bgDown=false;boolean bgLeft=false;boolean bgRight=false;
void blueGoast()
{
  noStroke();fill(0,250,255);if(bgD==false){if(eatGoast==true)fill(0,0,255);ellipse(bgx,bgy,35,35);ellipse(bgx-15,bgy+16,5,5);ellipse(bgx-5,bgy+16,5,5);ellipse(bgx+5,bgy+16,5,5);ellipse(bgx+15,bgy+16,5,5);rectMode(CENTER);rect(bgx,bgy+8,35,16);noStroke();fill(0);ellipse(bgx-10,bgy+16,5,5);ellipse(bgx,bgy+16,5,5);ellipse(bgx+10,bgy+16,5,5);//body
  if(eatGoast==true){fill(255);ellipse(bgx-6,bgy-3,6,6);ellipse(bgx+6,bgy-3,6,6);stroke(255);strokeWeight(2);line(bgx-12,bgy+9,bgx-8,bgy+6);line(bgx-8,bgy+6,bgx-4,bgy+9);line(bgx-4,bgy+9,bgx,bgy+6);line(bgx,bgy+6,bgx+4,bgy+9);line(bgx+4,bgy+9,bgx+8,bgy+6);line(bgx+8,bgy+6,bgx+12,bgy+9);}}
  if((eatGoast==false)||(bgD==true)){fill(255);ellipse(bgx-7,bgy-8,13,13);ellipse(bgx+7,bgy-8,13,13);fill(0);if((bgG==0)||(bgG==5)){ellipse(bgx-7,bgy-7,7,7);ellipse(bgx+7,bgy-7,7,7);}if(bgG==1){ellipse(bgx-7,bgy-11,7,7);ellipse(bgx+7,bgy-11,7,7);}if(bgG==2){ellipse(bgx-7,bgy-5,7,7);ellipse(bgx+7,bgy-5,7,7);}if(bgG==3){ellipse(bgx-10,bgy-8,7,7);ellipse(bgx+4,bgy-8,7,7);}if(bgG==4){ellipse(bgx-4,bgy-8,7,7);ellipse(bgx+10,bgy-8,7,7);}}//eyes
  if(bgG==1){bgUp=true;bgDown=false;bgLeft=false;bgRight=false;}if(bgG==2){bgUp=false;bgDown=true;bgLeft=false;bgRight=false;}if(bgG==3){bgUp=false;bgDown=false;bgLeft=true;bgRight=false;}if(bgG==4){bgUp=false;bgDown=false;bgLeft=false;bgRight=true;}if(bgG==5){bgUp=false;bgDown=false;bgLeft=false;bgRight=false;}if(bgUp==true)bgy=bgy-bgm;if(bgDown==true)bgy=bgy+bgm;if(bgLeft==true)bgx=bgx-bgm;if(bgRight==true)bgx=bgx+bgm;
  if((time>300)&&(eatGoast==false)){if((bgx<=cx+10)&&(bgx>=cx-10))if(bgy>cy)bgG=1;if((bgx<=cx+10)&&(bgx>=cx-10))if(bgy<cy)bgG=2;if((bgy<=cy+10)&&(bgy>=cy-10))if(bgx>cx)bgG=3;if((bgy<=cy+10)&&(bgy>=cy-10))if(bgx<cx)bgG=4;if(l>0){if((bgx<=cx+25)&&(bgx>=cx-25)){if((bgy<=cy+25)&&(bgy>=cy-25))pDb=true;}}bgUpDown();bgLeftRight();bgOutside();}if((time>200)&&(time<300)){if(bgx<13)bgx=bgx+5;}if(time==300)bgG=1;
  if((pDb==true)&(eatGoast==false)){death.rewind();death.play();cx=10;cy=200;bgx=10;bgy=-100;l=l-1;score=score-100;bgG=5;timeg=200;go=false;if((bgx==cx)&&(bgy>cy))bgG=1;if((bgx==cx)&&(bgy<cy))bgG=2;if((bgy==cy)&&(bgx>cx))bgG=3;if((bgy==cy)&&(bgx<cx))bgG=4;bgUpDown();bgLeftRight();bgOutside();bgG=5;}
}
void bgUpDown()
{
  //left
  if((bgx>-290)&&(bgx<-185))//-300 -175
  {
    if((bgy>-350)&&(bgy<-335)){bgy=-350;bgG=(int)random(3,5);}if((bgy<-250)&&(bgy>-265)){bgy=-250;bgG=(int)random(3,5);}//left up left rect up - //left up left rect down -
    if((bgy>-250)&&(bgy<-235)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-175)&&(bgy>-190)){bgy=-175;bgG=(int)random(3,5);}//left down rect up - //left dwn rect down -
    if((bgy>125)&&(bgy<140)){bgy=125;bgG=(int)random(3,5);}if((bgy<200)&&(bgy>185)){bgy=200;bgG=3;}//left 7 up - //left 7 down -
  }
  if((bgx>-165)&&(bgx<-35))//-175 -25
  {
    if((bgy>-350)&&(bgy<-335)){bgy=-350;bgG=(int)random(3,5);}if((bgy<-250)&&(bgy>-265)){bgy=-250;bgG=4;}//left up right rect up - //left up right rect down -
    if((bgy>125)&&(bgy<140)){bgy=125;bgG=4;}if((bgy<200)&&(bgy>185)){bgy=200;bgG=3;}//left down rect up - //left down rect down -
    if((bgy>-175)&&(bgy<-160)){bgy=-175;bgG=4;}if((bgy<-100)&&(bgy>-115)){bgy=-100;bgG=4;}//left up T up - //left up T down -
  }
  if((bgx>-240)&&(bgx<-185)){if((bgy<275)&&(bgy>260)){bgy=275;bgG=(int)random(3,5);}}//short //-250 -175//left 7 down -
  if((bgx>-165)&&(bgx<-110))//short //-175 -100
  {
    if((bgy>-250)&&(bgy<-235)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-25)&&(bgy>-40)){bgy=-25;bgG=(int)random(3,5);}//left up T up - //left up T down -
    if((bgy>-25)&&(bgy<-10)){bgy=-25;bgG=(int)random(3,5);}if((bgy<125)&&(bgy>110)){bgy=125;bgG=(int)random(3,5);}//left down up rect up -  //left down up rect down - 
    if((bgy>200)&&(bgy<215)){bgy=200;bgG=(int)random(3,5);}//left down T up -
  }
  if((bgx>-290)&&(bgx<-35)){if((bgy>275)&&(bgy<290)){bgy=275;bgG=(int)random(3,5);}if((bgy<350)&&(bgy>335)){bgy=350;bgG=(int)random(3,5);}}//long //-300 -35//left down T up - //left down T down -
  //middle
  if((bgx>-90)&&(bgx<115))//long //-100 125
  {
    if((bgy>-250)&&(bgy<-235)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-175)&&(bgy>-190)){bgy=-175;bgG=(int)random(3,5);}//middle up T up - //middle up T down -
    if((bgy<50)&&(bgy>35)){bgy=50;bgG=(int)random(3,5);}if((bgy>-10)&&(bgy<5)){bgy=-10;bgG=(int)random(3,5);}//middle rect down = //middle rect inside down =
    if((bgy>50)&&(bgy<65)){bgy=50;bgG=(int)random(3,5);}if((bgy<125)&&(bgy>110)){bgy=125;bgG=(int)random(3,5);}//middle middle T up -//middle middle T down -
    if((bgy>200)&&(bgy<215)){bgy=200;bgG=(int)random(3,5);}if((bgy<275)&&(bgy>260)){bgy=275;bgG=(int)random(3,5);}//middle down T up - //middle down T down -
  }
  if((bgx>-15)&&(bgx<40))//short //-25 -50
  {
    if((bgy<-250)&&(bgy>-265)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-100)&&(bgy>-115)){bgy=-100;bgG=(int)random(3,5);}//top middle - //middle up T down -
    if((bgy<200)&&(bgy>180))bgy=200;if((bgy<350)&&(bgy>335))bgy=350;//middle middle T down - //middle down T down -
  }
  if((bgx>-90)&&(bgx<-10)){if((bgy>-100)&&(bgy<-85)){bgy=-100;bgG=4;}if((bgy<-40)&&(bgy>-55)){bgy=-40;bgG=4;}}//-100 0//middle rect left up =//middle rect left inside up =
  if((bgx>35)&&(bgx<115)){if((bgy>-100)&&(bgy<-85)){bgy=-100;bgG=3;}if((bgy<-40)&&(bgy>-55)){bgy=-40;bgG=3;}}//25 125//middle rect right up = //middle rect right inside up =
  //right
  if((bgx>60)&&(bgx<190))//50 200
  {
    if((bgy>-350)&&(bgy<-335)){bgy=-350;bgG=(int)random(3,5);}if((bgy<-250)&&(bgy>-265)){bgy=-250;bgG=3;}//right up left rect up -//right up left rect down -
    if((bgy>125)&&(bgy<140)){bgy=125;bgG=3;}if((bgy<200)&&(bgy>185)){bgy=200;bgG=3;}//right down rect up - //right down rect down -
    if((bgy>-175)&&(bgy<-160)){bgy=-175;bgG=3;}if((bgy<-100)&&(bgy>-115)){bgy=-100;bgG=3;}//right up T up -//right up T down -
  }
  if((bgx>210)&&(bgx<315))//200 325
  {
    if((bgy>-350)&&(bgy<-335)){bgy=-350;bgG=(int)random(3,5);}if((bgy<-250)&&(bgy>-265)){bgy=-250;bgG=(int)random(3,5);}//right up rect up - //right up rect down -
    if((bgy>-250)&&(bgy<-235)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-175)&&(bgy>-190)){bgy=-175;bgG=(int)random(3,5);}//right down rect up -//right down rect down -
    if((bgy>125)&&(bgy<140)){bgy=125;bgG=(int)random(3,5);}if((bgy<200)&&(bgy>185)){bgy=200;bgG=4;}//right 7 up -//right 7 down -
  }
  if((bgx>210)&&(bgx<265)){if((bgy<275)&&(bgy>260)){bgy=275;bgG=(int)random(3,5);}}//short //200 275//right 7 down -
  if((bgx>135)&&(bgx<190))//short //125 200
  {
    if((bgy>-250)&&(bgy<-235)){bgy=-250;bgG=(int)random(3,5);}if((bgy<-25)&&(bgy>-40)){bgy=-25;bgG=(int)random(3,5);}//right up T up - //right up T down -
    if((bgy>-25)&&(bgy<-10)){bgy=-25;bgG=(int)random(3,5);}if((bgy<125)&&(bgy>110)){bgy=125;bgG=(int)random(3,5);}//right down up rect up - //right down up rect down - 
    if((bgy>200)&&(bgy<215)){bgy=200;bgG=(int)random(3,5);}//right down T up -
  }
  if((bgx>60)&&(bgx<315)){if((bgy>275)&&(bgy<290)){bgy=275;bgG=(int)random(3,5);}if((bgy<350)&&(bgy>335)){bgy=350;bgG=(int)random(3,5);}}//long //50 325//right down T up - //right down T down -
}
void bgLeftRight()
{
  if((bgy>=-340)&&(bgy<-260))//-350 -250
  {
    if((bgx>-300)&&(bgx<-285)){bgx=-300;bgG=(int)random(3);}if((bgx<-175)&&(bgx>-190)){bgx=-175;bgG=(int)random(3);}//left up left rect left | //lefe up left rect right |
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=(int)random(3);}if((bgx<-25)&&(bgx>-40)){bgx=-25;bgG=(int)random(3);}//left up right rect left | //left up right rect right |
    if((bgx>50)&&(bgx<65)){bgx=50;bgG=(int)random(3);}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}//right up left rect right |
    if((bgx>200)&&(bgx<215)){bgx=200;bgG=(int)random(3);}if((bgx<325)&&(bgx>310)){bgx=325;bgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((bgy>-240)&&(bgy<-185))//-250 -175
  {
    if((bgx>-300)&&(bgx<-285)){bgx=-300;bgG=(int)random(3);}
    if((bgx<-175)&&(bgx>-190)){bgx=-175;bgG=(int)random(3);}//left down left rect left | //lefe down left rect right |
    if((bgx>-100)&&(bgx<-85)){bgx=-100;bgG=2;}if((bgx<125)&&(bgx>110)){bgx=125;bgG=2;}//middle up T left | //middle up T right |
    if((bgx>200)&&(bgx<215)){bgx=200;bgG=(int)random(3);}if((bgx<325)&&(bgx>310)){bgx=325;bgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((bgy>-240)&&(bgy<-145))//-250 -135
  {
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=(int)random(3);}if((bgx<-100)&&(bgx>-115)){bgx=-100;bgG=1;}//left up T left | //left up T right |
    if((bgx>125)&&(bgx<140)){bgx=125;bgG=1;}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((bgy>-145)&&(bgy<125)){if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=(int)random(3);}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}}//left up T left//right up T right |
  if((bgy>-125)&&(bgy<-35))
  {
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=2;}if((bgx<-100)&&(bgx>-115)){bgx=-100;bgG=2;}//left up T left | //left up T right |
    if((bgx>125)&&(bgx<140)){bgx=125;bgG=2;}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((bgy>-240)&&(bgy<-110)){if((bgx>-25)&&(bgx<-10)){bgx=-25;bgG=2;}if((bgx<50)&&(bgx>35)){bgx=50;bgG=2;}}//-250 -100//middle up T left | //middle up T right |}
  if((bgy>-165)&&(bgy<-110)){if((bgx<-25)&&(bgx>-40)){bgx=-25;bgG=(int)random(3);}if((bgx>50)&&(bgx<65)){bgx=50;bgG=(int)random(3);}}//short //-175 -100//left up T right | //right up T left |
  if((bgy>-90)&&(bgy<-50)){if((bgx<0)&&(bgx>-20)){bgx=0;bgG=(int)random(3);}if((bgx>25)&&(bgx<40)){bgx=25;bgG=(int)random(3);}}//-100 -40//middle rect up left || //middle rect up right || 
  if((bgy>-90)&&(bgy<40))//-100 50
  {
    if((bgx>-100)&&(bgx<-85)){bgx=-100;bgG=(int)random(3);}if((bgx<-40)&&(bgx>-55)){bgx=-40;bgG=4;}//middle rect left || //middle rect inside left ||
    if((bgx>-60)&&(bgx<20))bgG=1;
    if((bgx<125)&&(bgx>110)){bgx=125;bgG=(int)random(3);}if((bgx>65)&&(bgx<80)){bgx=65;bgG=3;}//middle rect right || //middle rect inside right ||
  }
  if((bgy>-15)&&(bgy<115))//-25 125
  {
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=(int)random(3);}if((bgx<-100)&&(bgx>-115)){bgx=-100;bgG=(int)random(3);}//left down rect left | //left down rect right |
    if((bgx>125)&&(bgx<140)){bgx=125;bgG=(int)random(3);}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((bgy>60)&&(bgy<115)){if((bgx>-100)&&(bgx<115)){bgx=-100;bgG=(int)random(3);}if((bgx<125)&&(bgx>110)){bgx=125;bgG=(int)random(3);}}//short //50 125//middle middle T left | //middle middle T right |
  if((bgy>60)&&(bgy<190)){if((bgx>-25)&&(bgx<-10)){bgx=-25;bgG=2;}if((bgx<50)&&(bgx>35)){bgx=50;bgG=2;}}//50 200//middle middle T left | //middle middle T right |
  if((bgy>135)&&(bgy<190))//short //125 200
  {
    if((bgx>-300)&&(bgx<-285)){bgx=-300;bgG=(int)random(3);}if((bgx<325)&&(bgx>310)){bgx=325;bgG=(int)random(3);}//left 7 left | //right 7 left |
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=(int)random(3);}if((bgx<-25)&&(bgx>-40)){bgx=-25;bgG=(int)random(3);}//left down rect left | //left down rect right |
    if((bgx>50)&&(bgx<65)){bgx=50;bgG=(int)random(3);}if((bgx<200)&&(bgx>185)){bgx=200;bgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((bgy>135)&&(bgy<265))//125 275
  {
    if((bgx>-250)&&(bgx<-235)){bgx=-250;bgG=2;}if((bgx<-175)&&(bgx>-190)){bgx=-175;bgG=(int)random(3);}//left 7 left |//left 7 right |
    if((bgx>200)&&(bgx<215)){bgx=200;bgG=(int)random(3);}if((bgx<275)&&(bgx>260)){bgx=275;bgG=2;}//right 7 left |//right 7 right |
  }
  if((bgy>210)&&(bgy<265))//short //200 275
  {
    if(bgx<-250){bgx=-250;bgG=(int)random(3);}if(bgx>275){bgx=275;bgG=(int)random(3);}//left down | //right down |
    if((bgx>-100)&&(bgx<-85)){bgx=-100;bgG=(int)random(3);}if((bgx<125)&&(bgx>110)){bgx=125;bgG=(int)random(3);}//middle down T left |//middle down T left |
  }
  if((bgy>210)&&(bgy<340))//200 350
  {
    if((bgx>-175)&&(bgx<-160)){bgx=-175;bgG=1;}if((bgx<-100)&&(bgx>-115)){bgx=-100;bgG=1;}//left down T left | //left down T right |
    if((bgx>-25)&&(bgx<-10)){bgx=-25;bgG=2;}if((bgx<50)&&(bgx>35)){bgx=50;bgG=2;}//middle down T left | //middle down T right |
    if((bgx>125)&&(bgx<140)){bgx=125;bgG=1;}if((bgx<200)&&(bgx>185)){bgx=200;bgG=1;}//right down T left | //right down T right |
  }
  if((bgy>285)&&(bgy<340))//short //275 350
  {
    if((bgx>-300)&&(bgx<-285)){bgx=-300;bgG=(int)random(3);}if((bgx<-25)&&(bgx>-40)){bgx=-25;bgG=(int)random(3);}//left down T left | //left down T right |
    if((bgx>50)&&(bgx<65)){bgx=50;bgG=(int)random(3);}if((bgx<325)&&(bgx>310)){bgx=325;bgG=(int)random(3);}//right down T left | //right down T right |
  }
}
void bgOutside()
{
  if((bgx>=-300)&&(bgx<10)){if(bgy<-350){bgy=-350;bgG=4;} if(bgy>350){bgy=350;bgG=4;}}//top line //bottom line
  if((bgx>10)&&(bgx<=325)){if(bgy<-350){bgy=-350;bgG=3;} if(bgy>350){bgy=350;bgG=3;}}//top line //bottom line
  if((bgy>=-350)&&(bgy<-175)){if(bgx<-300){bgx=-300;bgG=2;}if(bgx>325){bgx=325;bgG=2;}}//left line //right line
  if(bgy==-175){if(bgx<-300){bgx=-300;bgG=1;}if(bgx>325){bgx=325;bgG=1;}}//left line //right line
  if((bgy>=125)&&(bgy<235)){if(bgx<-300){bgx=-300;bgG=2;}if(bgx>325){bgx=325;bgG=2;}}//left line //right line
  if((bgy>225)&&(bgy<350)){if(bgx<-300){bgx=-300;bgG=2;}if(bgx>325){bgx=325;bgG=2;}}//left line //right line
  if(bgy==350){if(bgx<-300){bgx=-300;bgG=1;}if(bgx>325){bgx=325;bgG=1;}}//left line //right line
  if((bgy==-25)&&(bgx<-310)){bgx=350;bgG=3;}if((bgy==-25)&&(bgx>340)){bgx=-320;bgG=4;}//through left//through right
  if((bgy>=-350)&&(bgy<-260)){if((bgx>-25)&&(bgx<-10)){bgx=-25;bgG=2;}if((bgx<50)&&(bgx>35)){bgx=50;bgG=2;}}//-350 -250//top middle left | //top middle right |
  if((bgy>-165)&&(bgy<-35)){if((bgx<-175)&&(bgx>-190)){bgx=-175;bgG=2;}if((bgx>200)&&(bgx<215)){bgx=200;bgG=2;}}//-175 -25//left up || //right up ||
  if((bgy>-15)&&(bgy<115)){if((bgx<-175)&&(bgx>-190)){bgx=-175;bgG=1;}if((bgx>200)&&(bgx<215)){bgx=200;bgG=1;}}//-25 125//left down || //right down ||
  if((bgx>=-300)&&(bgx<-185))//-300 -175
  {
    if((bgy>-175)&&(bgy<-160)){bgy=-175;bgG=4;}if((bgy<125)&&(bgy>110)){bgy=125;bgG=4;}//left up = //left down =
    if((bgy<-25)&&(bgy>-40)){bgy=-25;bgG=(int)random(3,5);}if((bgy>-25)&&(bgy<-10)){bgy=-25;bgG=(int)random(3,5);}//left middle up =//left middle down =
  }
  if((bgx>210)&&(bgx<=325))//200 325
  {
    if((bgy>-175)&&(bgy<-160)){bgy=-175;bgG=3;}if((bgy<125)&&(bgy>110)){bgy=125;bgG=3;}//right up =//right down =
    if((bgy<-25)&&(bgy>-40)){bgy=-25;bgG=(int)random(3,5);}if((bgy>-25)&&(bgy<-10)){bgy=-25;bgG=(int)random(3,5);}//right middle up = //right middle down =
  }
  if((bgx>=-300)&&(bgx<-260)){if((bgy>200)&&(bgy<215)){bgy=200;bgG=4;}if((bgy<275)&&(bgy>260)){bgy=275;bgG=4;}}//-300 -250//left dowm up - //left down down -
  if((bgx>285)&&(bgx<=325)){if((bgy>200)&&(bgy<215)){bgy=200;bgG=3;}if((bgy<275)&&(bgy>260)){bgy=275;bgG=3;}}//275 325//right dowm up - //right down down -
}