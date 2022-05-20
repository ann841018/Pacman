int rgx = 10;int rgy = -100;int rgm=10;int rgG =5; boolean pDr=false;boolean rgD=false;boolean rgUp=false;boolean rgDown=false;boolean rgLeft=false;boolean rgRight=false;
void redGoast()
{
  noStroke();fill(255,0,0);if(rgD==false){if(eatGoast==true)fill(0,0,255);ellipse(rgx,rgy,35,35);ellipse(rgx-15,rgy+16,5,5);ellipse(rgx-5,rgy+16,5,5);ellipse(rgx+5,rgy+16,5,5);ellipse(rgx+15,rgy+16,5,5);rectMode(CENTER);rect(rgx,rgy+8,35,16);noStroke();fill(0);ellipse(rgx-10,rgy+16,5,5);ellipse(rgx,rgy+16,5,5);ellipse(rgx+10,rgy+16,5,5);//body
  if(eatGoast==true){fill(255);ellipse(rgx-6,rgy-3,6,6);ellipse(rgx+6,rgy-3,6,6);stroke(255);strokeWeight(2);line(rgx-12,rgy+9,rgx-8,rgy+6);line(rgx-8,rgy+6,rgx-4,rgy+9);line(rgx-4,rgy+9,rgx,rgy+6);line(rgx,rgy+6,rgx+4,rgy+9);line(rgx+4,rgy+9,rgx+8,rgy+6);line(rgx+8,rgy+6,rgx+12,rgy+9);}}
  if((eatGoast==false)||(rgD==true)){fill(255);ellipse(rgx-7,rgy-8,13,13);ellipse(rgx+7,rgy-8,13,13);fill(0);if((rgG==0)||(rgG==5)){ellipse(rgx-7,rgy-7,7,7);ellipse(rgx+7,rgy-7,7,7);}if(rgG==1){ellipse(rgx-7,rgy-11,7,7);ellipse(rgx+7,rgy-11,7,7);}if(rgG==2){ellipse(rgx-7,rgy-5,7,7);ellipse(rgx+7,rgy-5,7,7);}if(rgG==3){ellipse(rgx-10,rgy-8,7,7);ellipse(rgx+4,rgy-8,7,7);}if(rgG==4){ellipse(rgx-4,rgy-8,7,7);ellipse(rgx+10,rgy-8,7,7);}}//eyes
  if(rgG==1){rgUp=true;rgDown=false;rgLeft=false;rgRight=false;}if(rgG==2){rgUp=false;rgDown=true;rgLeft=false;rgRight=false;}if(rgG==3){rgUp=false;rgDown=false;rgLeft=true;rgRight=false;}if(rgG==4){rgUp=false;rgDown=false;rgLeft=false;rgRight=true;}if(rgG==5){rgUp=false;rgDown=false;rgLeft=false;rgRight=false;}if(rgUp==true)rgy=rgy-rgm;if(rgDown==true)rgy=rgy+rgm;if(rgLeft==true)rgx=rgx-rgm;if(rgRight==true)rgx=rgx+rgm;
  if((time>100)&&(eatGoast==false)){if((rgx<=cx+10)&&(rgx>=cx-10))if(rgy>cy)rgG=1;if((rgx<=cx+10)&&(rgx>=cx-10))if(rgy<cy)rgG=2;if((rgy<=cy+10)&&(rgy>=cy-10))if(rgx>cx)rgG=3;if((rgy<=cy+10)&&(rgy>=cy-10))if(rgx<cx)rgG=4;if(l>0){if((rgx<=cx+25)&&(rgx>=cx-25)){if((rgy<=cy+25)&&(rgy>=cy-25))pDr=true;}}rgUpDown();rgLeftRight();rgOutside();}if(time==100)rgG=(int)random(3,5);time++;
  if((pDr==true)&(eatGoast==false)){death.rewind();death.play();cx=10;cy=200;rgx=10;rgy=-100;l=l-1;score=score-100;rgG=5;timeg=200;go=false;if((rgx==cx)&&(rgy>cy))rgG=1;if((rgx==cx)&&(rgy<cy))rgG=2;if((rgy==cy)&&(rgx>cx))rgG=3;if((rgy==cy)&&(rgx<cx))rgG=4;rgUpDown();rgLeftRight();rgOutside();}
}
void rgUpDown()
{
  //left
  if((rgx>-290)&&(rgx<-185))//-300 -175
  {
    if((rgy>-350)&&(rgy<-335)){rgy=-350;rgG=(int)random(3,5);}if((rgy<-250)&&(rgy>-265)){rgy=-250;rgG=(int)random(3,5);}//left up left rect up - //left up left rect down -
    if((rgy>-250)&&(rgy<-235)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-175)&&(rgy>-190)){rgy=-175;rgG=(int)random(3,5);}//left down rect up - //left dwn rect down -
    if((rgy>125)&&(rgy<140)){rgy=125;rgG=(int)random(3,5);}if((rgy<200)&&(rgy>185)){rgy=200;rgG=3;}//left 7 up - //left 7 down -
  }
  if((rgx>-165)&&(rgx<-35))//-175 -25
  {
    if((rgy>-350)&&(rgy<-335)){rgy=-350;rgG=(int)random(3,5);}if((rgy<-250)&&(rgy>-265)){rgy=-250;rgG=4;}//left up right rect up - //left up right rect down -
    if((rgy>125)&&(rgy<140)){rgy=125;rgG=4;}if((rgy<200)&&(rgy>185)){rgy=200;rgG=3;}//left down rect up - //left down rect down -
    if((rgy>-175)&&(rgy<-160)){rgy=-175;rgG=4;}if((rgy<-100)&&(rgy>-115)){rgy=-100;rgG=4;}//left up T up - //left up T down -
  }
  if((rgx>-240)&&(rgx<-185)){if((rgy<275)&&(rgy>260)){rgy=275;rgG=(int)random(3,5);}}//short //-250 -175//left 7 down -
  if((rgx>-165)&&(rgx<-110))//short //-175 -100
  {
    if((rgy>-250)&&(rgy<-235)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-25)&&(rgy>-40)){rgy=-25;rgG=(int)random(3,5);}//left up T up - //left up T down -
    if((rgy>-25)&&(rgy<-10)){rgy=-25;rgG=(int)random(3,5);}if((rgy<125)&&(rgy>110)){rgy=125;rgG=(int)random(3,5);}//left down up rect up -  //left down up rect down - 
    if((rgy>200)&&(rgy<215)){rgy=200;rgG=(int)random(3,5);}//left down T up -
  }
  if((rgx>-290)&&(rgx<-35)){if((rgy>275)&&(rgy<290)){rgy=275;rgG=(int)random(3,5);}if((rgy<350)&&(rgy>335)){rgy=350;rgG=(int)random(3,5);}}//long //-300 -35//left down T up - //left down T down -
  //middle
  if((rgx>-90)&&(rgx<115))//long //-100 125
  {
    if((rgy>-250)&&(rgy<-235)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-175)&&(rgy>-190)){rgy=-175;rgG=(int)random(3,5);}//middle up T up - //middle up T down -
    if((rgy<50)&&(rgy>35)){rgy=50;rgG=(int)random(3,5);}if((rgy>-10)&&(rgy<5)){rgy=-10;rgG=(int)random(3,5);}//middle rect down = //middle rect inside down =
    if((rgy>50)&&(rgy<65)){rgy=50;rgG=(int)random(3,5);}if((rgy<125)&&(rgy>110)){rgy=125;rgG=(int)random(3,5);}//middle middle T up -//middle middle T down -
    if((rgy>200)&&(rgy<215)){rgy=200;rgG=(int)random(3,5);}if((rgy<275)&&(rgy>260)){rgy=275;rgG=(int)random(3,5);}//middle down T up - //middle down T down -
  }
  if((rgx>-15)&&(rgx<40))//short //-25 -50
  {
    if((rgy<-250)&&(rgy>-265)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-100)&&(rgy>-115)){rgy=-100;rgG=(int)random(3,5);}//top middle - //middle up T down -
    if((rgy<200)&&(rgy>180))rgy=200;if((rgy<350)&&(rgy>335))rgy=350;//middle middle T down - //middle down T down -
  }
  if((rgx>-90)&&(rgx<-10)){if((rgy>-100)&&(rgy<-85)){rgy=-100;rgG=4;}if((rgy<-40)&&(rgy>-55)){rgy=-40;rgG=4;}}//-100 0//middle rect left up =//middle rect left inside up =
  if((rgx>35)&&(rgx<115)){if((rgy>-100)&&(rgy<-85)){rgy=-100;rgG=3;}if((rgy<-40)&&(rgy>-55)){rgy=-40;rgG=3;}}//25 125//middle rect right up = //middle rect right inside up =
  //right
  if((rgx>60)&&(rgx<190))//50 200
  {
    if((rgy>-350)&&(rgy<-335)){rgy=-350;rgG=(int)random(3,5);}if((rgy<-250)&&(rgy>-265)){rgy=-250;rgG=3;}//right up left rect up -//right up left rect down -
    if((rgy>125)&&(rgy<140)){rgy=125;rgG=3;}if((rgy<200)&&(rgy>185)){rgy=200;rgG=3;}//right down rect up - //right down rect down -
    if((rgy>-175)&&(rgy<-160)){rgy=-175;rgG=3;}if((rgy<-100)&&(rgy>-115)){rgy=-100;rgG=3;}//right up T up -//right up T down -
  }
  if((rgx>210)&&(rgx<315))//200 325
  {
    if((rgy>-350)&&(rgy<-335)){rgy=-350;rgG=(int)random(3,5);}if((rgy<-250)&&(rgy>-265)){rgy=-250;rgG=(int)random(3,5);}//right up rect up - //right up rect down -
    if((rgy>-250)&&(rgy<-235)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-175)&&(rgy>-190)){rgy=-175;rgG=(int)random(3,5);}//right down rect up -//right down rect down -
    if((rgy>125)&&(rgy<140)){rgy=125;rgG=(int)random(3,5);}if((rgy<200)&&(rgy>185)){rgy=200;rgG=4;}//right 7 up -//right 7 down -
  }
  if((rgx>210)&&(rgx<265)){if((rgy<275)&&(rgy>260)){rgy=275;rgG=(int)random(3,5);}}//short //200 275//right 7 down -
  if((rgx>135)&&(rgx<190))//short //125 200
  {
    if((rgy>-250)&&(rgy<-235)){rgy=-250;rgG=(int)random(3,5);}if((rgy<-25)&&(rgy>-40)){rgy=-25;rgG=(int)random(3,5);}//right up T up - //right up T down -
    if((rgy>-25)&&(rgy<-10)){rgy=-25;rgG=(int)random(3,5);}if((rgy<125)&&(rgy>110)){rgy=125;rgG=(int)random(3,5);}//right down up rect up - //right down up rect down - 
    if((rgy>200)&&(rgy<215)){rgy=200;rgG=(int)random(3,5);}//right down T up -
  }
  if((rgx>60)&&(rgx<315)){if((rgy>275)&&(rgy<290)){rgy=275;rgG=(int)random(3,5);}if((rgy<350)&&(rgy>335)){rgy=350;rgG=(int)random(3,5);}}//long //50 325//right down T up - //right down T down -
}
void rgLeftRight()
{
  if((rgy>=-340)&&(rgy<-260))//-350 -250
  {
    if((rgx>-300)&&(rgx<-285)){rgx=-300;rgG=(int)random(3);}if((rgx<-175)&&(rgx>-190)){rgx=-175;rgG=(int)random(3);}//left up left rect left | //lefe up left rect right |
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=(int)random(3);}if((rgx<-25)&&(rgx>-40)){rgx=-25;rgG=(int)random(3);}//left up right rect left | //left up right rect right |
    if((rgx>50)&&(rgx<65)){rgx=50;rgG=(int)random(3);}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}//right up left rect right |
    if((rgx>200)&&(rgx<215)){rgx=200;rgG=(int)random(3);}if((rgx<325)&&(rgx>310)){rgx=325;rgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((rgy>-240)&&(rgy<-185))//-250 -175
  {
    if((rgx>-300)&&(rgx<-285)){rgx=-300;rgG=(int)random(3);}
    if((rgx<-175)&&(rgx>-190)){rgx=-175;rgG=(int)random(3);}//left down left rect left | //lefe down left rect right |
    if((rgx>-100)&&(rgx<-85)){rgx=-100;rgG=2;}if((rgx<125)&&(rgx>110)){rgx=125;rgG=2;}//middle up T left | //middle up T right |
    if((rgx>200)&&(rgx<215)){rgx=200;rgG=(int)random(3);}if((rgx<325)&&(rgx>310)){rgx=325;rgG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((rgy>-240)&&(rgy<-145))//-250 -135
  {
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=(int)random(3);}if((rgx<-100)&&(rgx>-115)){rgx=-100;rgG=1;}//left up T left | //left up T right |
    if((rgx>125)&&(rgx<140)){rgx=125;rgG=1;}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((rgy>-145)&&(rgy<125)){if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=(int)random(3);}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}}//left up T left//right up T right |
  if((rgy>-125)&&(rgy<-35))
  {
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=2;}if((rgx<-100)&&(rgx>-115)){rgx=-100;rgG=2;}//left up T left | //left up T right |
    if((rgx>125)&&(rgx<140)){rgx=125;rgG=2;}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}//right up T left | //right up T right |
  }
  if((rgy>-240)&&(rgy<-110)){if((rgx>-25)&&(rgx<-10)){rgx=-25;rgG=2;}if((rgx<50)&&(rgx>35)){rgx=50;rgG=2;}}//-250 -100//middle up T left | //middle up T right |}
  if((rgy>-165)&&(rgy<-110)){if((rgx<-25)&&(rgx>-40)){rgx=-25;rgG=(int)random(3);}if((rgx>50)&&(rgx<65)){rgx=50;rgG=(int)random(3);}}//short //-175 -100//left up T right | //right up T left |
  if((rgy>-90)&&(rgy<-50)){if((rgx<0)&&(rgx>-20)){rgx=0;rgG=(int)random(3);}if((rgx>25)&&(rgx<40)){rgx=25;rgG=(int)random(3);}}//-100 -40//middle rect up left || //middle rect up right || 
  if((rgy>-90)&&(rgy<40))//-100 50
  {
    if((rgx>-100)&&(rgx<-85)){rgx=-100;rgG=(int)random(3);}if((rgx<-40)&&(rgx>-55)){rgx=-40;rgG=4;}//middle rect left || //middle rect inside left ||
    if((rgx>-60)&&(rgx<20))rgG=1;
    if((rgx<125)&&(rgx>110)){rgx=125;rgG=(int)random(3);}if((rgx>65)&&(rgx<80)){rgx=65;rgG=3;}//middle rect right || //middle rect inside right ||
  }
  if((rgy>-15)&&(rgy<115))//-25 125
  {
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=(int)random(3);}if((rgx<-100)&&(rgx>-115)){rgx=-100;rgG=(int)random(3);}//left down rect left | //left down rect right |
    if((rgx>125)&&(rgx<140)){rgx=125;rgG=(int)random(3);}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((rgy>60)&&(rgy<115)){if((rgx>-100)&&(rgx<115)){rgx=-100;rgG=(int)random(3);}if((rgx<125)&&(rgx>110)){rgx=125;rgG=(int)random(3);}}//short //50 125//middle middle T left | //middle middle T right |
  if((rgy>60)&&(rgy<190)){if((rgx>-25)&&(rgx<-10)){rgx=-25;rgG=2;}if((rgx<50)&&(rgx>35)){rgx=50;rgG=2;}}//50 200//middle middle T left | //middle middle T right |
  if((rgy>135)&&(rgy<190))//short //125 200
  {
    if((rgx>-300)&&(rgx<-285)){rgx=-300;rgG=(int)random(3);}if((rgx<325)&&(rgx>310)){rgx=325;rgG=(int)random(3);}//left 7 left | //right 7 left |
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=(int)random(3);}if((rgx<-25)&&(rgx>-40)){rgx=-25;rgG=(int)random(3);}//left down rect left | //left down rect right |
    if((rgx>50)&&(rgx<65)){rgx=50;rgG=(int)random(3);}if((rgx<200)&&(rgx>185)){rgx=200;rgG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((rgy>135)&&(rgy<265))//125 275
  {
    if((rgx>-250)&&(rgx<-235)){rgx=-250;rgG=2;}if((rgx<-175)&&(rgx>-190)){rgx=-175;rgG=(int)random(3);}//left 7 left |//left 7 right |
    if((rgx>200)&&(rgx<215)){rgx=200;rgG=(int)random(3);}if((rgx<275)&&(rgx>260)){rgx=275;rgG=2;}//right 7 left |//right 7 right |
  }
  if((rgy>210)&&(rgy<265))//short //200 275
  {
    if(rgx<-250){rgx=-250;rgG=(int)random(3);}if(rgx>275){rgx=275;rgG=(int)random(3);}//left down | //right down |
    if((rgx>-100)&&(rgx<-85)){rgx=-100;rgG=(int)random(3);}if((rgx<125)&&(rgx>110)){rgx=125;rgG=(int)random(3);}//middle down T left |//middle down T left |
  }
  if((rgy>210)&&(rgy<340))//200 350
  {
    if((rgx>-175)&&(rgx<-160)){rgx=-175;rgG=1;}if((rgx<-100)&&(rgx>-115)){rgx=-100;rgG=1;}//left down T left | //left down T right |
    if((rgx>-25)&&(rgx<-10)){rgx=-25;rgG=2;}if((rgx<50)&&(rgx>35)){rgx=50;rgG=2;}//middle down T left | //middle down T right |
    if((rgx>125)&&(rgx<140)){rgx=125;rgG=1;}if((rgx<200)&&(rgx>185)){rgx=200;rgG=1;}//right down T left | //right down T right |
  }
  if((rgy>285)&&(rgy<340))//short //275 350
  {
    if((rgx>-300)&&(rgx<-285)){rgx=-300;rgG=(int)random(3);}if((rgx<-25)&&(rgx>-40)){rgx=-25;rgG=(int)random(3);}//left down T left | //left down T right |
    if((rgx>50)&&(rgx<65)){rgx=50;rgG=(int)random(3);}if((rgx<325)&&(rgx>310)){rgx=325;rgG=(int)random(3);}//right down T left | //right down T right |
  }
}
void rgOutside()
{
  if((rgx>=-300)&&(rgx<10)){if(rgy<-350){rgy=-350;rgG=4;} if(rgy>350){rgy=350;rgG=4;}}//top line //bottom line
  if((rgx>10)&&(rgx<=325)){if(rgy<-350){rgy=-350;rgG=3;} if(rgy>350){rgy=350;rgG=3;}}//top line //bottom line
  if((rgy>=-350)&&(rgy<-175)){if(rgx<-300){rgx=-300;rgG=2;}if(rgx>325){rgx=325;rgG=2;}}//left line //right line
  if(rgy==-175){if(rgx<-300){rgx=-300;rgG=1;}if(rgx>325){rgx=325;rgG=1;}}//left line //right line
  if((rgy>=125)&&(rgy<235)){if(rgx<-300){rgx=-300;rgG=2;}if(rgx>325){rgx=325;rgG=2;}}//left line //right line
  if((rgy>225)&&(rgy<350)){if(rgx<-300){rgx=-300;rgG=2;}if(rgx>325){rgx=325;rgG=2;}}//left line //right line
  if(rgy==350){if(rgx<-300){rgx=-300;rgG=1;}if(rgx>325){rgx=325;rgG=1;}}//left line //right line
  if((rgy==-25)&&(rgx<-310)){rgx=350;rgG=3;}if((rgy==-25)&&(rgx>340)){rgx=-320;rgG=4;}//through left//through right
  if((rgy>=-350)&&(rgy<-260)){if((rgx>-25)&&(rgx<-10)){rgx=-25;rgG=2;}if((rgx<50)&&(rgx>35)){rgx=50;rgG=2;}}//-350 -250//top middle left | //top middle right |
  if((rgy>-165)&&(rgy<-35)){if((rgx<-175)&&(rgx>-190)){rgx=-175;rgG=2;}if((rgx>200)&&(rgx<215)){rgx=200;rgG=2;}}//-175 -25//left up || //right up ||
  if((rgy>-15)&&(rgy<115)){if((rgx<-175)&&(rgx>-190)){rgx=-175;rgG=1;}if((rgx>200)&&(rgx<215)){rgx=200;rgG=1;}}//-25 125//left down || //right down ||
  if((rgx>=-300)&&(rgx<-185))//-300 -175
  {
    if((rgy>-175)&&(rgy<-160)){rgy=-175;rgG=4;}if((rgy<125)&&(rgy>110)){rgy=125;rgG=4;}//left up = //left down =
    if((rgy<-25)&&(rgy>-40)){rgy=-25;rgG=(int)random(3,5);}if((rgy>-25)&&(rgy<-10)){rgy=-25;rgG=(int)random(3,5);}//left middle up =//left middle down =
  }
  if((rgx>210)&&(rgx<=325))//200 325
  {
    if((rgy>-175)&&(rgy<-160)){rgy=-175;rgG=3;}if((rgy<125)&&(rgy>110)){rgy=125;rgG=3;}//right up =//right down =
    if((rgy<-25)&&(rgy>-40)){rgy=-25;rgG=(int)random(3,5);}if((rgy>-25)&&(rgy<-10)){rgy=-25;rgG=(int)random(3,5);}//right middle up = //right middle down =
  }
  if((rgx>=-300)&&(rgx<-260)){if((rgy>200)&&(rgy<215)){rgy=200;rgG=4;}if((rgy<275)&&(rgy>260)){rgy=275;rgG=4;}}//-300 -250//left dowm up - //left down down -
  if((rgx>285)&&(rgx<=325)){if((rgy>200)&&(rgy<215)){rgy=200;rgG=3;}if((rgy<275)&&(rgy>260)){rgy=275;rgG=3;}}//275 325//right dowm up - //right down down -
}