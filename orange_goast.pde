int ogx = 60;int ogy = -15;int ogm=10;int ogG =5; boolean pDo=false;boolean ogD=false;boolean ogUp=false;boolean ogDown=false;boolean ogLeft=false;boolean ogRight=false;
void orangeGoast()
{
  noStroke();fill(255,150,0);if(ogD==false){if(eatGoast==true)fill(0,0,255);ellipse(ogx,ogy,35,35);ellipse(ogx-15,ogy+16,5,5);ellipse(ogx-5,ogy+16,5,5);ellipse(ogx+5,ogy+16,5,5);ellipse(ogx+15,ogy+16,5,5);rectMode(CENTER);rect(ogx,ogy+8,35,16);noStroke();fill(0);ellipse(ogx-10,ogy+16,5,5);ellipse(ogx,ogy+16,5,5);ellipse(ogx+10,ogy+16,5,5);//body
  if(eatGoast==true){fill(255);ellipse(ogx-6,ogy-3,6,6);ellipse(ogx+6,ogy-3,6,6);stroke(255);strokeWeight(2);line(ogx-12,ogy+9,ogx-8,ogy+6);line(ogx-8,ogy+6,ogx-4,ogy+9);line(ogx-4,ogy+9,ogx,ogy+6);line(ogx,ogy+6,ogx+4,ogy+9);line(ogx+4,ogy+9,ogx+8,ogy+6);line(ogx+8,ogy+6,ogx+12,ogy+9);}}
  if((eatGoast==false)||(ogD==true)){fill(255);ellipse(ogx-7,ogy-8,13,13);ellipse(ogx+7,ogy-8,13,13);fill(0);if((ogG==0)||(ogG==5)){ellipse(ogx-7,ogy-7,7,7);ellipse(ogx+7,ogy-7,7,7);}if(ogG==1){ellipse(ogx-7,ogy-11,7,7);ellipse(ogx+7,ogy-11,7,7);}if(ogG==2){ellipse(ogx-7,ogy-5,7,7);ellipse(ogx+7,ogy-5,7,7);}if(ogG==3){ellipse(ogx-10,ogy-8,7,7);ellipse(ogx+4,ogy-8,7,7);}if(ogG==4){ellipse(ogx-4,ogy-8,7,7);ellipse(ogx+10,ogy-8,7,7);}}//eyes
  if(ogG==1){ogUp=true;ogDown=false;ogLeft=false;ogRight=false;}if(ogG==2){ogUp=false;ogDown=true;ogLeft=false;ogRight=false;}if(ogG==3){ogUp=false;ogDown=false;ogLeft=true;ogRight=false;}if(ogG==4){ogUp=false;ogDown=false;ogLeft=false;ogRight=true;}if(ogG==5){ogUp=false;ogDown=false;ogLeft=false;ogRight=false;}if(ogUp==true)ogy=ogy-ogm;if(ogDown==true)ogy=ogy+ogm;if(ogLeft==true)ogx=ogx-ogm;if(ogRight==true)ogx=ogx+ogm;
  if((time>400)&&(eatGoast==false)){if((ogx<=cx+10)&&(ogx>=cx-10))if(ogy>cy)ogG=1;if((ogx<=cx+10)&&(ogx>=cx-10))if(ogy<cy)ogG=2;if((ogy<=cy+10)&&(ogy>=cy-10))if(ogx>cx)ogG=3;if((ogy<=cy+10)&&(ogy>=cy-10))if(ogx<cx)ogG=4;if(l>0){if((ogx<=cx+25)&&(ogx>=cx-25)){if((ogy<=cy+25)&&(ogy>=cy-25))pDo=true;}}ogUpDown();ogLeftRight();ogOutside();}if((time>300)&&(time<400)){if(ogx>13)ogx=ogx-5;}if(time==400)ogG=1;  
  if((pDo==true)&(eatGoast==false)){death.rewind();death.play();cx=10;cy=200;ogx=10;ogy=-100;l=l-1;score=score-100;ogG=5;timeg=200;go=false;if((ogx==cx)&&(ogy>cy))ogG=1;if((ogx==cx)&&(ogy<cy))ogG=2;if((ogy==cy)&&(ogx>cx))ogG=3;if((ogy==cy)&&(ogx<cx))ogG=4;ogUpDown();ogLeftRight();ogOutside();ogG=1;}
}
void ogUpDown()
{
  //left
  if((ogx>-290)&&(ogx<-185))//-300 -175
  {
    if((ogy>-350)&&(ogy<-335)){ogy=-350;ogG=(int)random(3,5);}if((ogy<-250)&&(ogy>-265)){ogy=-250;ogG=(int)random(3,5);}//left up left rect up - //left up left rect down -
    if((ogy>-250)&&(ogy<-235)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-175)&&(ogy>-190)){ogy=-175;ogG=(int)random(3,5);}//left down rect up - //left dwn rect down -
    if((ogy>125)&&(ogy<140)){ogy=125;ogG=(int)random(3,5);}if((ogy<200)&&(ogy>185)){ogy=200;ogG=3;}//left 7 up - //left 7 down -
  }
  if((ogx>-165)&&(ogx<-35))//-175 -25
  {
    if((ogy>-350)&&(ogy<-335)){ogy=-350;ogG=(int)random(3,5);}if((ogy<-250)&&(ogy>-265)){ogy=-250;ogG=4;}//left up right rect up - //left up right rect down -
    if((ogy>125)&&(ogy<140)){ogy=125;ogG=4;}if((ogy<200)&&(ogy>185)){ogy=200;ogG=3;}//left down rect up - //left down rect down -
    if((ogy>-175)&&(ogy<-160)){ogy=-175;ogG=4;}if((ogy<-100)&&(ogy>-115)){ogy=-100;ogG=4;}//left up T up - //left up T down -
  }
  if((ogx>-240)&&(ogx<-185)){if((ogy<275)&&(ogy>260)){ogy=275;ogG=(int)random(3,5);}}//short //-250 -175//left 7 down -
  if((ogx>-165)&&(ogx<-110))//short //-175 -100
  {
    if((ogy>-250)&&(ogy<-235)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-25)&&(ogy>-40)){ogy=-25;ogG=(int)random(3,5);}//left up T up - //left up T down -
    if((ogy>-25)&&(ogy<-10)){ogy=-25;ogG=(int)random(3,5);}if((ogy<125)&&(ogy>110)){ogy=125;ogG=(int)random(3,5);}//left down up rect up -  //left down up rect down - 
    if((ogy>200)&&(ogy<215)){ogy=200;ogG=(int)random(3,5);}//left down T up -
  }
  if((ogx>-290)&&(ogx<-35)){if((ogy>275)&&(ogy<290)){ogy=275;ogG=(int)random(3,5);}if((ogy<350)&&(ogy>335)){ogy=350;ogG=(int)random(3,5);}}//long //-300 -35//left down T up - //left down T down -
  //middle
  if((ogx>-90)&&(ogx<115))//long //-100 125
  {
    if((ogy>-250)&&(ogy<-235)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-175)&&(ogy>-190)){ogy=-175;ogG=(int)random(3,5);}//middle up T up - //middle up T down -
    if((ogy<50)&&(ogy>35)){ogy=50;ogG=(int)random(3,5);}if((ogy>-10)&&(ogy<5)){ogy=-10;ogG=(int)random(3,5);}//middle rect down = //middle rect inside down =
    if((ogy>50)&&(ogy<65)){ogy=50;ogG=(int)random(3,5);}if((ogy<125)&&(ogy>110)){ogy=125;ogG=(int)random(3,5);}//middle middle T up -//middle middle T down -
    if((ogy>200)&&(ogy<215)){ogy=200;ogG=(int)random(3,5);}if((ogy<275)&&(ogy>260)){ogy=275;ogG=(int)random(3,5);}//middle down T up - //middle down T down -
  }
  if((ogx>-15)&&(ogx<40))//short //-25 -50
  {
    if((ogy<-250)&&(ogy>-265)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-100)&&(ogy>-115)){ogy=-100;ogG=(int)random(3,5);}//top middle - //middle up T down -
    if((ogy<200)&&(ogy>180))ogy=200;if((ogy<350)&&(ogy>335))ogy=350;//middle middle T down - //middle down T down -
  }
  if((ogx>-90)&&(ogx<-10)){if((ogy>-100)&&(ogy<-85)){ogy=-100;ogG=4;}if((ogy<-40)&&(ogy>-55)){ogy=-40;ogG=4;}}//-100 0//middle rect left up =//middle rect left inside up =
  if((ogx>35)&&(ogx<115)){if((ogy>-100)&&(ogy<-85)){ogy=-100;ogG=3;}if((ogy<-40)&&(ogy>-55)){ogy=-40;ogG=3;}}//25 125//middle rect right up = //middle rect right inside up =
  //right
  if((ogx>60)&&(ogx<190))//50 200
  {
    if((ogy>-350)&&(ogy<-335)){ogy=-350;ogG=(int)random(3,5);}if((ogy<-250)&&(ogy>-265)){ogy=-250;ogG=3;}//right up left rect up -//right up left rect down -
    if((ogy>125)&&(ogy<140)){ogy=125;ogG=3;}if((ogy<200)&&(ogy>185)){ogy=200;ogG=3;}//right down rect up - //right down rect down -
    if((ogy>-175)&&(ogy<-160)){ogy=-175;ogG=3;}if((ogy<-100)&&(ogy>-115)){ogy=-100;ogG=3;}//right up T up -//right up T down -
  }
  if((ogx>210)&&(ogx<315))//200 325
  {
    if((ogy>-350)&&(ogy<-335)){ogy=-350;ogG=(int)random(3,5);}if((ogy<-250)&&(ogy>-265)){ogy=-250;ogG=(int)random(3,5);}//right up rect up - //right up rect down -
    if((ogy>-250)&&(ogy<-235)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-175)&&(ogy>-190)){ogy=-175;ogG=(int)random(3,5);}//right down rect up -//right down rect down -
    if((ogy>125)&&(ogy<140)){ogy=125;ogG=(int)random(3,5);}if((ogy<200)&&(ogy>185)){ogy=200;ogG=4;}//right 7 up -//right 7 down -
  }
  if((ogx>210)&&(ogx<265)){if((ogy<275)&&(ogy>260)){ogy=275;ogG=(int)random(3,5);}}//short //200 275//right 7 down -
  if((ogx>135)&&(ogx<190))//short //125 200
  {
    if((ogy>-250)&&(ogy<-235)){ogy=-250;ogG=(int)random(3,5);}if((ogy<-25)&&(ogy>-40)){ogy=-25;ogG=(int)random(3,5);}//right up T up - //right up T down -
    if((ogy>-25)&&(ogy<-10)){ogy=-25;ogG=(int)random(3,5);}if((ogy<125)&&(ogy>110)){ogy=125;ogG=(int)random(3,5);}//right down up rect up - //right down up rect down - 
    if((ogy>200)&&(ogy<215)){ogy=200;ogG=(int)random(3,5);}//right down T up -
  }
  if((ogx>60)&&(ogx<315)){if((ogy>275)&&(ogy<290)){ogy=275;ogG=(int)random(3,5);}if((ogy<350)&&(ogy>335)){ogy=350;ogG=(int)random(3,5);}}//long //50 325//right down T up - //right down T down -
}
void ogLeftRight()
{
  if((ogy>=-340)&&(ogy<-260))//-350 -250
  {
    if((ogx>-300)&&(ogx<-285)){ogx=-300;ogG=(int)random(3);}if((ogx<-175)&&(ogx>-190)){ogx=-175;ogG=(int)random(3);}//left up left rect left | //lefe up left rect right |
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=(int)random(3);}if((ogx<-25)&&(ogx>-40)){ogx=-25;ogG=(int)random(3);}//left up right rect left | //left up right rect right |
    if((ogx>50)&&(ogx<65)){ogx=50;ogG=(int)random(3);}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}//right up left rect right |
    if((ogx>200)&&(ogx<215)){ogx=200;ogG=(int)random(3);}if((ogx<325)&&(ogx>310)){ogx=325;ogG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((ogy>-240)&&(ogy<-185))//-250 -175
  {
    if((ogx>-300)&&(ogx<-285)){ogx=-300;ogG=(int)random(3);}
    if((ogx<-175)&&(ogx>-190)){ogx=-175;ogG=(int)random(3);}//left down left rect left | //lefe down left rect right |
    if((ogx>-100)&&(ogx<-85)){ogx=-100;ogG=2;}if((ogx<125)&&(ogx>110)){ogx=125;ogG=2;}//middle up T left | //middle up T right |
    if((ogx>200)&&(ogx<215)){ogx=200;ogG=(int)random(3);}if((ogx<325)&&(ogx>310)){ogx=325;ogG=(int)random(3);}//right up right rect left | //right up right rect right |
  }
  if((ogy>-240)&&(ogy<-145))//-250 -135
  {
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=(int)random(3);}if((ogx<-100)&&(ogx>-115)){ogx=-100;ogG=1;}//left up T left | //left up T right |
    if((ogx>125)&&(ogx<140)){ogx=125;ogG=1;}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}//right up T left | //right up T right |
  }
  if((ogy>-145)&&(ogy<125)){if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=(int)random(3);}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}}//left up T left//right up T right |
  if((ogy>-125)&&(ogy<-35))
  {
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=2;}if((ogx<-100)&&(ogx>-115)){ogx=-100;ogG=2;}//left up T left | //left up T right |
    if((ogx>125)&&(ogx<140)){ogx=125;ogG=2;}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}//right up T left | //right up T right |
  }
  if((ogy>-240)&&(ogy<-110)){if((ogx>-25)&&(ogx<-10)){ogx=-25;ogG=2;}if((ogx<50)&&(ogx>35)){ogx=50;ogG=2;}}//-250 -100//middle up T left | //middle up T right |}
  if((ogy>-165)&&(ogy<-110)){if((ogx<-25)&&(ogx>-40)){ogx=-25;ogG=(int)random(3);}if((ogx>50)&&(ogx<65)){ogx=50;ogG=(int)random(3);}}//short //-175 -100//left up T right | //right up T left |
  if((ogy>-90)&&(ogy<-50)){if((ogx<0)&&(ogx>-20)){ogx=0;ogG=(int)random(3);}if((ogx>25)&&(ogx<40)){ogx=25;ogG=(int)random(3);}}//-100 -40//middle rect up left || //middle rect up right || 
  if((ogy>-90)&&(ogy<40))//-100 50
  {
    if((ogx>-100)&&(ogx<-85)){ogx=-100;ogG=(int)random(3);}if((ogx<-40)&&(ogx>-55)){ogx=-40;ogG=4;}//middle rect left || //middle rect inside left ||
    if((ogx>-60)&&(ogx<20))ogG=1;
    if((ogx<125)&&(ogx>110)){ogx=125;ogG=(int)random(3);}if((ogx>65)&&(ogx<80)){ogx=65;ogG=3;}//middle rect right || //middle rect inside right ||
  }
  if((ogy>-15)&&(ogy<115))//-25 125
  {
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=(int)random(3);}if((ogx<-100)&&(ogx>-115)){ogx=-100;ogG=(int)random(3);}//left down rect left | //left down rect right |
    if((ogx>125)&&(ogx<140)){ogx=125;ogG=(int)random(3);}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((ogy>60)&&(ogy<115)){if((ogx>-100)&&(ogx<115)){ogx=-100;ogG=(int)random(3);}if((ogx<125)&&(ogx>110)){ogx=125;ogG=(int)random(3);}}//short //50 125//middle middle T left | //middle middle T right |
  if((ogy>60)&&(ogy<190)){if((ogx>-25)&&(ogx<-10)){ogx=-25;ogG=2;}if((ogx<50)&&(ogx>35)){ogx=50;ogG=2;}}//50 200//middle middle T left | //middle middle T right |
  if((ogy>135)&&(ogy<190))//short //125 200
  {
    if((ogx>-300)&&(ogx<-285)){ogx=-300;ogG=(int)random(3);}if((ogx<325)&&(ogx>310)){ogx=325;ogG=(int)random(3);}//left 7 left | //right 7 left |
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=(int)random(3);}if((ogx<-25)&&(ogx>-40)){ogx=-25;ogG=(int)random(3);}//left down rect left | //left down rect right |
    if((ogx>50)&&(ogx<65)){ogx=50;ogG=(int)random(3);}if((ogx<200)&&(ogx>185)){ogx=200;ogG=(int)random(3);}//right down rect left | //right down rect right |
  }
  if((ogy>135)&&(ogy<265))//125 275
  {
    if((ogx>-250)&&(ogx<-235)){ogx=-250;ogG=2;}if((ogx<-175)&&(ogx>-190)){ogx=-175;ogG=(int)random(3);}//left 7 left |//left 7 right |
    if((ogx>200)&&(ogx<215)){ogx=200;ogG=(int)random(3);}if((ogx<275)&&(ogx>260)){ogx=275;ogG=2;}//right 7 left |//right 7 right |
  }
  if((ogy>210)&&(ogy<265))//short //200 275
  {
    if(ogx<-250){ogx=-250;ogG=(int)random(3);}if(ogx>275){ogx=275;ogG=(int)random(3);}//left down | //right down |
    if((ogx>-100)&&(ogx<-85)){ogx=-100;ogG=(int)random(3);}if((ogx<125)&&(ogx>110)){ogx=125;ogG=(int)random(3);}//middle down T left |//middle down T left |
  }
  if((ogy>210)&&(ogy<340))//200 350
  {
    if((ogx>-175)&&(ogx<-160)){ogx=-175;ogG=1;}if((ogx<-100)&&(ogx>-115)){ogx=-100;ogG=1;}//left down T left | //left down T right |
    if((ogx>-25)&&(ogx<-10)){ogx=-25;ogG=2;}if((ogx<50)&&(ogx>35)){ogx=50;ogG=2;}//middle down T left | //middle down T right |
    if((ogx>125)&&(ogx<140)){ogx=125;ogG=1;}if((ogx<200)&&(ogx>185)){ogx=200;ogG=1;}//right down T left | //right down T right |
  }
  if((ogy>285)&&(ogy<340))//short //275 350
  {
    if((ogx>-300)&&(ogx<-285)){ogx=-300;ogG=(int)random(3);}if((ogx<-25)&&(ogx>-40)){ogx=-25;ogG=(int)random(3);}//left down T left | //left down T right |
    if((ogx>50)&&(ogx<65)){ogx=50;ogG=(int)random(3);}if((ogx<325)&&(ogx>310)){ogx=325;ogG=(int)random(3);}//right down T left | //right down T right |
  }
}
void ogOutside()
{
  if((ogx>=-300)&&(ogx<10)){if(ogy<-350){ogy=-350;ogG=4;} if(ogy>350){ogy=350;ogG=4;}}//top line //bottom line
  if((ogx>10)&&(ogx<=325)){if(ogy<-350){ogy=-350;ogG=3;} if(ogy>350){ogy=350;ogG=3;}}//top line //bottom line
  if((ogy>=-350)&&(ogy<-175)){if(ogx<-300){ogx=-300;ogG=2;}if(ogx>325){ogx=325;ogG=2;}}//left line //right line
  if(ogy==-175){if(ogx<-300){ogx=-300;ogG=1;}if(ogx>325){ogx=325;ogG=1;}}//left line //right line
  if((ogy>=125)&&(ogy<235)){if(ogx<-300){ogx=-300;ogG=2;}if(ogx>325){ogx=325;ogG=2;}}//left line //right line
  if((ogy>225)&&(ogy<350)){if(ogx<-300){ogx=-300;ogG=2;}if(ogx>325){ogx=325;ogG=2;}}//left line //right line
  if(ogy==350){if(ogx<-300){ogx=-300;ogG=1;}if(ogx>325){ogx=325;ogG=1;}}//left line //right line
  if((ogy==-25)&&(ogx<-310)){ogx=350;ogG=3;}if((ogy==-25)&&(ogx>340)){ogx=-320;ogG=4;}//through left//through right
  if((ogy>=-350)&&(ogy<-260)){if((ogx>-25)&&(ogx<-10)){ogx=-25;ogG=2;}if((ogx<50)&&(ogx>35)){ogx=50;ogG=2;}}//-350 -250//top middle left | //top middle right |
  if((ogy>-165)&&(ogy<-35)){if((ogx<-175)&&(ogx>-190)){ogx=-175;ogG=2;}if((ogx>200)&&(ogx<215)){ogx=200;ogG=2;}}//-175 -25//left up || //right up ||
  if((ogy>-15)&&(ogy<115)){if((ogx<-175)&&(ogx>-190)){ogx=-175;ogG=1;}if((ogx>200)&&(ogx<215)){ogx=200;ogG=1;}}//-25 125//left down || //right down ||
  if((ogx>=-300)&&(ogx<-185))//-300 -175
  {
    if((ogy>-175)&&(ogy<-160)){ogy=-175;ogG=4;}if((ogy<125)&&(ogy>110)){ogy=125;ogG=4;}//left up = //left down =
    if((ogy<-25)&&(ogy>-40)){ogy=-25;ogG=(int)random(3,5);}if((ogy>-25)&&(ogy<-10)){ogy=-25;ogG=(int)random(3,5);}//left middle up =//left middle down =
  }
  if((ogx>210)&&(ogx<=325))//200 325
  {
    if((ogy>-175)&&(ogy<-160)){ogy=-175;ogG=3;}if((ogy<125)&&(ogy>110)){ogy=125;ogG=3;}//right up =//right down =
    if((ogy<-25)&&(ogy>-40)){ogy=-25;ogG=(int)random(3,5);}if((ogy>-25)&&(ogy<-10)){ogy=-25;ogG=(int)random(3,5);}//right middle up = //right middle down =
  }
  if((ogx>=-300)&&(ogx<-260)){if((ogy>200)&&(ogy<215)){ogy=200;ogG=4;}if((ogy<275)&&(ogy>260)){ogy=275;ogG=4;}}//-300 -250//left dowm up - //left down down -
  if((ogx>285)&&(ogx<=325)){if((ogy>200)&&(ogy<215)){ogy=200;ogG=3;}if((ogy<275)&&(ogy>260)){ogy=275;ogG=3;}}//275 325//right dowm up - //right down down -
}