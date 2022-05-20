int pgx = 13;int pgy = -15;int pgm=10;int pgG =5; boolean pDp=false;boolean pgD=false;boolean pgUp=false;boolean pgDown=false;boolean pgLeft=false;boolean pgRight=false;
void pinkGoast()
{
  noStroke();fill(255,150,200);if(pgD==false){if(eatGoast==true)fill(0,0,255);ellipse(pgx,pgy,35,35);ellipse(pgx-15,pgy+16,5,5);ellipse(pgx-5,pgy+16,5,5);ellipse(pgx+5,pgy+16,5,5);ellipse(pgx+15,pgy+16,5,5);rectMode(CENTER);rect(pgx,pgy+8,35,16);noStroke();fill(0);ellipse(pgx-10,pgy+16,5,5);ellipse(pgx,pgy+16,5,5);ellipse(pgx+10,pgy+16,5,5);//body
  if(eatGoast==true){fill(255);ellipse(pgx-6,pgy-3,6,6);ellipse(pgx+6,pgy-3,6,6);stroke(255);strokeWeight(2);line(pgx-12,pgy+9,pgx-8,pgy+6);line(pgx-8,pgy+6,pgx-4,pgy+9);line(pgx-4,pgy+9,pgx,pgy+6);line(pgx,pgy+6,pgx+4,pgy+9);line(pgx+4,pgy+9,pgx+8,pgy+6);line(pgx+8,pgy+6,pgx+12,pgy+9);}}
  if((eatGoast==false)||(pgD==true)){fill(255);ellipse(pgx-7,pgy-8,13,13);ellipse(pgx+7,pgy-8,13,13);fill(0);if((pgG==0)||(pgG==5)){ellipse(pgx-7,pgy-7,7,7);ellipse(pgx+7,pgy-7,7,7);}if(pgG==1){ellipse(pgx-7,pgy-11,7,7);ellipse(pgx+7,pgy-11,7,7);}if(pgG==2){ellipse(pgx-7,pgy-5,7,7);ellipse(pgx+7,pgy-5,7,7);}if(pgG==3){ellipse(pgx-10,pgy-8,7,7);ellipse(pgx+4,pgy-8,7,7);}if(pgG==4){ellipse(pgx-4,pgy-8,7,7);ellipse(pgx+10,pgy-8,7,7);}}//eyes
  if(pgG==1){pgUp=true;pgDown=false;pgLeft=false;pgRight=false;}if(pgG==2){pgUp=false;pgDown=true;pgLeft=false;pgRight=false;}if(pgG==3){pgUp=false;pgDown=false;pgLeft=true;pgRight=false;}if(pgG==4){pgUp=false;pgDown=false;pgLeft=false;pgRight=true;}if(pgG==5){pgUp=false;pgDown=false;pgLeft=false;pgRight=false;}if(pgUp==true)pgy=pgy-pgm;if(pgDown==true)pgy=pgy+pgm;if(pgLeft==true)pgx=pgx-pgm;if(pgRight==true)pgx=pgx+pgm;
  if((time>200)&&(eatGoast==false)){if((pgx<=cx+10)&&(pgx>=cx-10))if(pgy>cy)pgG=1;if((pgx<=cx+10)&&(pgx>=cx-10))if(pgy<cy)pgG=2;if((pgy<=cy+10)&&(pgy>=cy-10))if(pgx>cx)pgG=3;if((pgy<=cy+10)&&(pgy>=cy-10))if(pgx<cx)pgG=4;if(l>0){if((pgx<=cx+25)&&(pgx>=cx-25)){if((pgy<=cy+25)&&(pgy>=cy-25))pDp=true;}}pgUpDown();pgLeftRight();pgOutside();}if(time==200)pgG=1;
  if((pDp==true)&(eatGoast==false)){death.rewind();death.play();cx=10;cy=200;pgx=10;pgy=-100;l=l-1;score=score-100;pgG=5;timeg=200;go=false;if((pgx==cx)&&(pgy>cy))pgG=1;if((pgx==cx)&&(pgy<cy))pgG=2;if((pgy==cy)&&(pgx>cx))pgG=3;if((pgy==cy)&&(pgx<cx))pgG=4;pgUpDown();pgLeftRight();pgOutside();pgG=1;}
}
void pgUpDown()
{
  //left
  if((pgx>-290)&&(pgx<-185))//-300 -175
  {
    if((pgy>-350)&&(pgy<-335)){pgy=-350;pgG=(int)random(3,5);}if((pgy<-250)&&(pgy>-265)){pgy=-250;pgG=(int)random(3,5);}//left up left rect up - //left up left rect down -
    if((pgy>-250)&&(pgy<-235)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-175)&&(pgy>-190)){pgy=-175;pgG=(int)random(3,5);}//left down rect up - //left dwn rect down -
    if((pgy>125)&&(pgy<140)){pgy=125;pgG=(int)random(3,5);}if((pgy<200)&&(pgy>185)){pgy=200;pgG=3;}//left 7 up - //left 7 down -
  }
  if((pgx>-165)&&(pgx<-35))//-175 -25
  {
    if((pgy>-350)&&(pgy<-335)){pgy=-350;pgG=(int)random(3,5);}if((pgy<-250)&&(pgy>-265)){pgy=-250;pgG=4;}//left up right rect up - //left up right rect down -
    if((pgy>125)&&(pgy<140)){pgy=125;pgG=4;}if((pgy<200)&&(pgy>185)){pgy=200;pgG=3;}//left down rect up - //left down rect down -
    if((pgy>-175)&&(pgy<-160)){pgy=-175;pgG=4;}if((pgy<-100)&&(pgy>-115)){pgy=-100;pgG=4;}//left up T up - //left up T down -
  }
  if((pgx>-240)&&(pgx<-185)){if((pgy<275)&&(pgy>260)){pgy=275;pgG=(int)random(3,5);}}//short //-250 -175//left 7 down -
  if((pgx>-165)&&(pgx<-110))//short //-175 -100
  {
    if((pgy>-250)&&(pgy<-235)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-25)&&(pgy>-40)){pgy=-25;pgG=(int)random(3,5);}//left up T up - //left up T down -
    if((pgy>-25)&&(pgy<-10)){pgy=-25;pgG=(int)random(3,5);}if((pgy<125)&&(pgy>110)){pgy=125;pgG=(int)random(3,5);}//left down up rect up -  //left down up rect down - 
    if((pgy>200)&&(pgy<215)){pgy=200;pgG=(int)random(3,5);}//left down T up -
  }
  if((pgx>-290)&&(pgx<-35)){if((pgy>275)&&(pgy<290)){pgy=275;pgG=(int)random(3,5);}if((pgy<350)&&(pgy>335)){pgy=350;pgG=(int)random(3,5);}}//long //-300 -35//left down T up - //left down T down -
  //middle
  if((pgx>-90)&&(pgx<115))//long //-100 125
  {
    if((pgy>-250)&&(pgy<-235)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-175)&&(pgy>-190)){pgy=-175;pgG=(int)random(3,5);}//middle up T up - //middle up T down -
    if((pgy<50)&&(pgy>35)){pgy=50;pgG=(int)random(3,5);}if((pgy>-10)&&(pgy<5)){pgy=-10;pgG=(int)random(3,5);}//middle rect down = //middle rect inside down =
    if((pgy>50)&&(pgy<65)){pgy=50;pgG=(int)random(3,5);}if((pgy<125)&&(pgy>110)){pgy=125;pgG=(int)random(3,5);}//middle middle T up -//middle middle T down -
    if((pgy>200)&&(pgy<215)){pgy=200;pgG=(int)random(3,5);}if((pgy<275)&&(pgy>260)){pgy=275;pgG=(int)random(3,5);}//middle down T up - //middle down T down -
  }
  if((pgx>-15)&&(pgx<40))//short //-25 -50
  {
    if((pgy<-250)&&(pgy>-265)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-100)&&(pgy>-115)){pgy=-100;pgG=(int)random(3,5);}//top middle - //middle up T down -
    if((pgy<200)&&(pgy>180))pgy=200;if((pgy<350)&&(pgy>335))pgy=350;//middle middle T down - //middle down T down -
  }
  if((pgx>-90)&&(pgx<-10)){if((pgy>-100)&&(pgy<-85)){pgy=-100;pgG=4;}if((pgy<-40)&&(pgy>-55)){pgy=-40;pgG=4;}}//-100 0//middle rect left up =//middle rect left inside up =
  if((pgx>35)&&(pgx<115)){if((pgy>-100)&&(pgy<-85)){pgy=-100;pgG=3;}if((pgy<-40)&&(pgy>-55)){pgy=-40;pgG=3;}}//25 125//middle rect right up = //middle rect right inside up =
  //right
  if((pgx>60)&&(pgx<190))//50 200
  {
    if((pgy>-350)&&(pgy<-335)){pgy=-350;pgG=(int)random(3,5);}if((pgy<-250)&&(pgy>-265)){pgy=-250;pgG=3;}//right up left rect up -//right up left rect down -
    if((pgy>125)&&(pgy<140)){pgy=125;pgG=3;}if((pgy<200)&&(pgy>185)){pgy=200;pgG=3;}//right down rect up - //right down rect down -
    if((pgy>-175)&&(pgy<-160)){pgy=-175;pgG=3;}if((pgy<-100)&&(pgy>-115)){pgy=-100;pgG=3;}//right up T up -//right up T down -
  }
  if((pgx>210)&&(pgx<315))//200 325
  {
    if((pgy>-350)&&(pgy<-335)){pgy=-350;pgG=(int)random(3,5);}if((pgy<-250)&&(pgy>-265)){pgy=-250;pgG=(int)random(3,5);}//right up rect up - //right up rect down -
    if((pgy>-250)&&(pgy<-235)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-175)&&(pgy>-190)){pgy=-175;pgG=(int)random(3,5);}//right down rect up -//right down rect down -
    if((pgy>125)&&(pgy<140)){pgy=125;pgG=(int)random(3,5);}if((pgy<200)&&(pgy>185)){pgy=200;pgG=4;}//right 7 up -//right 7 down -
  }
  if((pgx>210)&&(pgx<265)){if((pgy<275)&&(pgy>260)){pgy=275;pgG=(int)random(3,5);}}//short //200 275//right 7 down -
  if((pgx>135)&&(pgx<190))//short //125 200
  {
    if((pgy>-250)&&(pgy<-235)){pgy=-250;pgG=(int)random(3,5);}if((pgy<-25)&&(pgy>-40)){pgy=-25;pgG=(int)random(3,5);}//right up T up - //right up T down -
    if((pgy>-25)&&(pgy<-10)){pgy=-25;pgG=(int)random(3,5);}if((pgy<125)&&(pgy>110)){pgy=125;pgG=(int)random(3,5);}//right down up rect up - //right down up rect down - 
    if((pgy>200)&&(pgy<215)){pgy=200;pgG=(int)random(3,5);}//right down T up -
  }
  if((pgx>60)&&(pgx<315)){if((pgy>275)&&(pgy<290)){pgy=275;pgG=(int)random(3,5);}if((pgy<350)&&(pgy>335)){pgy=350;pgG=(int)random(3,5);}}//long //50 325//right down T up - //right down T down -
}
void pgLeftRight()
{
  if((pgy>=-340)&&(pgy<-260))//-350 -250
  {
    if((pgx>-300)&&(pgx<-285)){pgx=-300;pgG=(int)random(3);}if((pgx<-175)&&(pgx>-190)){pgx=-175;pgG=(int)random(3);}//left up left rect left | //lefe up left rect right |
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=(int)random(3);}if((pgx<-25)&&(pgx>-40)){pgx=-25;pgG=(int)random(3);}//left up right rect left | //left up right rect right |
    if((pgx>50)&&(pgx<65)){pgx=50;pgG=(int)random(3);}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}//right up left rect right |
    if((pgx>200)&&(pgx<215)){pgx=200;pgG=(int)random(3);}if((pgx<325)&&(pgx>310)){pgx=325;pgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((pgy>-240)&&(pgy<-185))//-250 -175
  {
    if((pgx>-300)&&(pgx<-285)){pgx=-300;pgG=(int)random(3);}
    if((pgx<-175)&&(pgx>-190)){pgx=-175;pgG=(int)random(3);}//left down left rect left | //lefe down left rect right |
    if((pgx>-100)&&(pgx<-85)){pgx=-100;pgG=2;}if((pgx<125)&&(pgx>110)){pgx=125;pgG=2;}//middle up T left | //middle up T right |
    if((pgx>200)&&(pgx<215)){pgx=200;pgG=(int)random(3);}if((pgx<325)&&(pgx>310)){pgx=325;pgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((pgy>-240)&&(pgy<-145))//-250 -135
  {
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=(int)random(3);}if((pgx<-100)&&(pgx>-115)){pgx=-100;pgG=1;}//left up T left | //left up T right |
    if((pgx>125)&&(pgx<140)){pgx=125;pgG=1;}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((pgy>-145)&&(pgy<125)){if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=(int)random(3);}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}}//left up T left//right up T right |
  if((pgy>-125)&&(pgy<-35))
  {
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=2;}if((pgx<-100)&&(pgx>-115)){pgx=-100;pgG=2;}//left up T left | //left up T right |
    if((pgx>125)&&(pgx<140)){pgx=125;pgG=2;}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((pgy>-240)&&(pgy<-110)){if((pgx>-25)&&(pgx<-10)){pgx=-25;pgG=2;}if((pgx<50)&&(pgx>35)){pgx=50;pgG=2;}}//-250 -100//middle up T left | //middle up T right |}
  if((pgy>-165)&&(pgy<-110)){if((pgx<-25)&&(pgx>-40)){pgx=-25;pgG=(int)random(3);}if((pgx>50)&&(pgx<65)){pgx=50;pgG=(int)random(3);}}//short //-175 -100//left up T right | //right up T left |
  if((pgy>-90)&&(pgy<-50)){if((pgx<0)&&(pgx>-20)){pgx=0;pgG=(int)random(3);}if((pgx>25)&&(pgx<40)){pgx=25;pgG=(int)random(3);}}//-100 -40//middle rect up left || //middle rect up right || 
  if((pgy>-90)&&(pgy<40))//-100 50
  {
    if((pgx>-100)&&(pgx<-85)){pgx=-100;pgG=(int)random(3);}if((pgx<-40)&&(pgx>-55)){pgx=-40;pgG=4;}//middle rect left || //middle rect inside left ||
    if((pgx>-60)&&(pgx<20))pgG=1;
    if((pgx<125)&&(pgx>110)){pgx=125;pgG=(int)random(3);}if((pgx>65)&&(pgx<80)){pgx=65;pgG=3;}//middle rect right || //middle rect inside right ||
  }
  if((pgy>-15)&&(pgy<115))//-25 125
  {
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=(int)random(3);}if((pgx<-100)&&(pgx>-115)){pgx=-100;pgG=(int)random(3);}//left down rect left | //left down rect right |
    if((pgx>125)&&(pgx<140)){pgx=125;pgG=(int)random(3);}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((pgy>60)&&(pgy<115)){if((pgx>-100)&&(pgx<115)){pgx=-100;pgG=(int)random(3);}if((pgx<125)&&(pgx>110)){pgx=125;pgG=(int)random(3);}}//short //50 125//middle middle T left | //middle middle T right |
  if((pgy>60)&&(pgy<190)){if((pgx>-25)&&(pgx<-10)){pgx=-25;pgG=2;}if((pgx<50)&&(pgx>35)){pgx=50;pgG=2;}}//50 200//middle middle T left | //middle middle T right |
  if((pgy>135)&&(pgy<190))//short //125 200
  {
    if((pgx>-300)&&(pgx<-285)){pgx=-300;pgG=(int)random(3);}if((pgx<325)&&(pgx>310)){pgx=325;pgG=(int)random(3);}//left 7 left | //right 7 left |
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=(int)random(3);}if((pgx<-25)&&(pgx>-40)){pgx=-25;pgG=(int)random(3);}//left down rect left | //left down rect right |
    if((pgx>50)&&(pgx<65)){pgx=50;pgG=(int)random(3);}if((pgx<200)&&(pgx>185)){pgx=200;pgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((pgy>135)&&(pgy<265))//125 275
  {
    if((pgx>-250)&&(pgx<-235)){pgx=-250;pgG=2;}if((pgx<-175)&&(pgx>-190)){pgx=-175;pgG=(int)random(3);}//left 7 left |//left 7 right |
    if((pgx>200)&&(pgx<215)){pgx=200;pgG=(int)random(3);}if((pgx<275)&&(pgx>260)){pgx=275;pgG=2;}//right 7 left |//right 7 right |
  }
  if((pgy>210)&&(pgy<265))//short //200 275
  {
    if(pgx<-250){pgx=-250;pgG=(int)random(3);}if(pgx>275){pgx=275;pgG=(int)random(3);}//left down | //right down |
    if((pgx>-100)&&(pgx<-85)){pgx=-100;pgG=(int)random(3);}if((pgx<125)&&(pgx>110)){pgx=125;pgG=(int)random(3);}//middle down T left |//middle down T left |
  }
  if((pgy>210)&&(pgy<340))//200 350
  {
    if((pgx>-175)&&(pgx<-160)){pgx=-175;pgG=1;}if((pgx<-100)&&(pgx>-115)){pgx=-100;pgG=1;}//left down T left | //left down T right |
    if((pgx>-25)&&(pgx<-10)){pgx=-25;pgG=2;}if((pgx<50)&&(pgx>35)){pgx=50;pgG=2;}//middle down T left | //middle down T right |
    if((pgx>125)&&(pgx<140)){pgx=125;pgG=1;}if((pgx<200)&&(pgx>185)){pgx=200;pgG=1;}//right down T left | //right down T right |
  }
  if((pgy>285)&&(pgy<340))//short //275 350
  {
    if((pgx>-300)&&(pgx<-285)){pgx=-300;pgG=(int)random(3);}if((pgx<-25)&&(pgx>-40)){pgx=-25;pgG=(int)random(3);}//left down T left | //left down T right |
    if((pgx>50)&&(pgx<65)){pgx=50;pgG=(int)random(3);}if((pgx<325)&&(pgx>310)){pgx=325;pgG=(int)random(3);}//right down T left | //right down T right |
  }
}
void pgOutside()
{
  if((pgx>=-300)&&(pgx<10)){if(pgy<-350){pgy=-350;pgG=4;} if(pgy>350){pgy=350;pgG=4;}}//top line //bottom line
  if((pgx>10)&&(pgx<=325)){if(pgy<-350){pgy=-350;pgG=3;} if(pgy>350){pgy=350;pgG=3;}}//top line //bottom line
  if((pgy>=-350)&&(pgy<-175)){if(pgx<-300){pgx=-300;pgG=2;}if(pgx>325){pgx=325;pgG=2;}}//left line //right line
  if(pgy==-175){if(pgx<-300){pgx=-300;pgG=1;}if(pgx>325){pgx=325;pgG=1;}}//left line //right line
  if((pgy>=125)&&(pgy<235)){if(pgx<-300){pgx=-300;pgG=2;}if(pgx>325){pgx=325;pgG=2;}}//left line //right line
  if((pgy>225)&&(pgy<350)){if(pgx<-300){pgx=-300;pgG=2;}if(pgx>325){pgx=325;pgG=2;}}//left line //right line
  if(pgy==350){if(pgx<-300){pgx=-300;pgG=1;}if(pgx>325){pgx=325;pgG=1;}}//left line //right line
  if((pgy==-25)&&(pgx<-310)){pgx=350;pgG=3;}if((pgy==-25)&&(pgx>340)){pgx=-320;pgG=4;}//through left//through right
  if((pgy>=-350)&&(pgy<-260)){if((pgx>-25)&&(pgx<-10)){pgx=-25;pgG=2;}if((pgx<50)&&(pgx>35)){pgx=50;pgG=2;}}//-350 -250//top middle left | //top middle right |
  if((pgy>-165)&&(pgy<-35)){if((pgx<-175)&&(pgx>-190)){pgx=-175;pgG=2;}if((pgx>200)&&(pgx<215)){pgx=200;pgG=2;}}//-175 -25//left up || //right up ||
  if((pgy>-15)&&(pgy<115)){if((pgx<-175)&&(pgx>-190)){pgx=-175;pgG=1;}if((pgx>200)&&(pgx<215)){pgx=200;pgG=1;}}//-25 125//left down || //right down ||
  if((pgx>=-300)&&(pgx<-185))//-300 -175
  {
    if((pgy>-175)&&(pgy<-160)){pgy=-175;pgG=4;}if((pgy<125)&&(pgy>110)){pgy=125;pgG=4;}//left up = //left down =
    if((pgy<-25)&&(pgy>-40)){pgy=-25;pgG=(int)random(3,5);}if((pgy>-25)&&(pgy<-10)){pgy=-25;pgG=(int)random(3,5);}//left middle up =//left middle down =
  }
  if((pgx>210)&&(pgx<=325))//200 325
  {
    if((pgy>-175)&&(pgy<-160)){pgy=-175;pgG=3;}if((pgy<125)&&(pgy>110)){pgy=125;pgG=3;}//right up =//right down =
    if((pgy<-25)&&(pgy>-40)){pgy=-25;pgG=(int)random(3,5);}if((pgy>-25)&&(pgy<-10)){pgy=-25;pgG=(int)random(3,5);}//right middle up = //right middle down =
  }
  if((pgx>=-300)&&(pgx<-260)){if((pgy>200)&&(pgy<215)){pgy=200;pgG=4;}if((pgy<275)&&(pgy>260)){pgy=275;pgG=4;}}//-300 -250//left dowm up - //left down down -
  if((pgx>285)&&(pgx<=325)){if((pgy>200)&&(pgy<215)){pgy=200;pgG=3;}if((pgy<275)&&(pgy>260)){pgy=275;pgG=3;}}//275 325//right dowm up - //right down down -
}