int x1 = -335;int x2 = 360;int y1 = -385;int y2 = 385;//left right up down
void map()
{
  noStroke();fill(0);rectMode(CORNER);rect(-325,-150,140,250);rect(220,-150,150,250);rect(-165,-165,345,270);stroke(0,0,255);strokeWeight(3);
  line(x1,y1,x2,y1);line(x1+10,y1+10,x2-10,y1+10);rect(x1+335,y1+10,25,100);stroke(0);line(x1+338,y1+10,x1+357,y1+10);stroke(0,0,255);//top
  line(x1+10,y2-10,x2-10,y2-10);line(x1,y2,x2,y2);//bottom
  line(x1+10,-150,x1+135,-150);line(x1,-140,x1+125,-140);line(x1,-60,x1+125,-60);line(x1,-50,x1+135,-50);line(x1,0,x1+135,0);line(x1,10,x1+125,10);line(x1,90,x1+125,90);line(x1+10,100,x1+135,100);//left=
  line(x2-10,-150,x2-135,-150);line(x2,-140,x2-125,-140);line(x2,-60,x2-125,-60);line(x2,-50,x2-135,-50);line(x2,0,x2-135,0);line(x2,10,x2-125,10);line(x2,90,x2-125,90);line(x2-10,100,x2-135,100);//right=
  line(x1+10,y1+10,x1+10,y1+235);line(x1,y1,x1,y1+245);line(x1,y2,x1,y2-295);line(x1+10,y2-10,x1+10,y2-285);line(x1+125,-140,x1+125,-60);line(x1+135,-150,x1+135,-50);line(x1+125,10,x1+125,90);line(x1+135,0,x1+135,100);rect(x1+10,y2-160,50,25);stroke(0);line(x1+10,y2-157,x1+10,y2-138);//left||
  stroke(0,0,255);line(x2-10,y1+10,x2-10,y1+235);line(x2,y1,x2,y1+245);line(x2,y2,x2,y2-295);line(x2-10,y2-10,x2-10,y2-285);line(x2-125,-140,x2-125,-60);line(x2-135,-150,x2-135,-50);line(x2-125,10,x2-125,90);line(x2-135,0,x2-135,100);rect(x2-60,y2-160,50,25);stroke(0);line(x2-10,y2-157,x2-10,y2-138);//right||
  stroke(0,0,255);rect(x1+60,y1+60,75,50);rect(x1+185,y1+60,100,50);rect(x1+60,y1+160,75,25);rect(x1+185,y2-385,25,100);rect(x1+185,y2-235,100,25);rect(x1+60,y2-235,75,25);rect(x1+110,y2-210,25,75);stroke(0);line(x1+113,y2-210,x1+132,y2-210);//left rect
  stroke(0,0,255);rect(x2-135,y1+60,75,50);rect(x2-285,y1+60,100,50);rect(x2-135,y1+160,75,25);rect(x2-210,y2-385,25,100);rect(x2-285,y2-235,100,25);rect(x2-135,y2-235,75,25);rect(x2-135,y2-235,25,100);stroke(0);line(x2-110,y2-232,x2-110,y2-213);//right rect
  stroke(0,0,255);rect(x1+335,y1+160,25,100);rect(x1+260,y1+160,175,25);stroke(0);line(x1+338,y1+185,x1+357,y1+185);//up middle T
  stroke(0,0,255);rect(x1+335,y1+460,25,100);rect(x1+260,y1+460,175,25);stroke(0);line(x1+338,y1+485,x1+357,y1+485);//middle T
  stroke(0,0,255);rect(x1+335,y2-160,25,100);rect(x1+260,y2-160,175,25);stroke(0);line(x1+338,y2-135,x1+357,y2-135);//bottom T
  stroke(0,0,255);rect(-75,-75,175,100);rect(-65,-65,155,80);stroke(0);rect(-25,-75,75,25);stroke(0,0,255);line(-25,-75,-25,-65);line(50,-75,50,-65);//middle rect
  rect(x1+185,y1+160,25,175);rect(x1+210,y1+235,75,25);stroke(0);line(x1+210,y1+238,x1+210,y1+257);//left T
  stroke(0,0,255);rect(x1+185,y2-160,25,75);rect(x1+60,y2-85,225,25);stroke(0);line(x1+188,y2-85,x1+207,y2-85);//bottom left T
  stroke(0,0,255);rect(x2-210,y1+160,25,175);rect(x2-285,y1+235,75,25);stroke(0);line(x2-210,y1+238,x2-210,y1+257);//right T
  stroke(0,0,255);rect(x2-210,y2-160,25,75);rect(x2-285,y2-85,225,25);stroke(0);line(x2-188,y2-85,x2-207,y2-85);//bottom right T
  stroke(255);line(-25,-70,50,-70);//white line
}
void upDown()
{
  //left
  if((cx>-290)&&(cx<-185))//-300 -175
  {
    if((cy>-350)&&(cy<-335))cy=-350;if((cy<-250)&&(cy>-265))cy=-250;//left up left rect up - //left up left rect down -
    if((cy>-250)&&(cy<-235))cy=-250;if((cy<-175)&&(cy>-190))cy=-175;//left down rect up - //left dwn rect down -
    if((cy>125)&&(cy<140))cy=125;if((cy<200)&&(cy>185))cy=200;//left 7 up - //left 7 down -
  }
  if((cx>-165)&&(cx<-35))//-175 -25
  {
    if((cy>-350)&&(cy<-335))cy=-350;if((cy<-250)&&(cy>-265))cy=-250;//left up right rect up - //left up right rect down -
    if((cy>125)&&(cy<140))cy=125;if((cy<200)&&(cy>185))cy=200;//left down rect up - //left down rect down -
    if((cy>-175)&&(cy<-160))cy=-175;if((cy<-100)&&(cy>-115))cy=-100;//left up T up - //left up T down -
  }
  if((cx>-240)&&(cx<-185)){if((cy<275)&&(cy>260))cy=275;}//short //-250 -175//left 7 down -
  if((cx>-165)&&(cx<-110))//short //-175 -100
  {
    if((cy>-250)&&(cy<-235))cy=-250;if((cy<-25)&&(cy>-40))cy=-25;//left up T up - //left up T down -
    if((cy>-25)&&(cy<-10))cy=-25;if((cy<125)&&(cy>110))cy=125;//left down up rect up -  //left down up rect down - 
    if((cy>200)&&(cy<215))cy=200;//left down T up -
  }
  if((cx>-290)&&(cx<-35)){if((cy>275)&&(cy<290))cy=275;if((cy<350)&&(cy>335))cy=350;}//long //-300 -35//left down T up - //left down T down -
  //middle
  if((cx>-90)&&(cx<115))//long //-100 125
  {
    if((cy>-250)&&(cy<-235))cy=-250;if((cy<-175)&&(cy>-190))cy=-175;//middle up T up - //middle up T down -
    if((cy<50)&&(cy>35))cy=50;if((cy>-10)&&(cy<5))cy=-10;//middle rect down = //middle rect inside down =
    if((cy>50)&&(cy<65))cy=50;if((cy<125)&&(cy>110))cy=125;//middle middle T up -//middle middle T down -
    if((cy>200)&&(cy<215))cy=200;if((cy<275)&&(cy>260))cy=275;//middle down T up - //middle down T down -
  }
  if((cx>-15)&&(cx<40))//short //-25 -50
  {
    if((cy<-250)&&(cy>-265))cy=-250;if((cy<-100)&&(cy>-115))cy=-100;//top middle - //middle up T down -
    if((cy<200)&&(cy>180))cy=200;if((cy<350)&&(cy>335))cy=350;//middle middle T down - //middle down T down -
  }
  if((cx>-90)&&(cx<-10))//-100 0
  {
    if((cy>-100)&&(cy<-85))cy=-100;//middle rect left up =
    if((cy<-40)&&(cy>-55))cy=-40;//middle rect left inside up =
  }
  if((cx>35)&&(cx<115)){if((cy>-100)&&(cy<-85))cy=-100;if((cy<-40)&&(cy>-55))cy=-40;}//25 125//middle rect right up = //middle rect right inside up =
  //right
  if((cx>60)&&(cx<190))//50 200
  {
    if((cy>-350)&&(cy<-335))cy=-350;if((cy<-250)&&(cy>-265))cy=-250;//right up left rect up -//right up left rect down -
    if((cy>125)&&(cy<140))cy=125;if((cy<200)&&(cy>185))cy=200;//right down rect up - //right down rect down -
    if((cy>-175)&&(cy<-160))cy=-175;if((cy<-100)&&(cy>-115))cy=-100;//right up T up -//right up T down -
  }
  if((cx>210)&&(cx<315))//200 325
  {
    if((cy>-350)&&(cy<-335))cy=-350;if((cy<-250)&&(cy>-265))cy=-250;//right up rect up - //right up rect down -
    if((cy>-250)&&(cy<-235))cy=-250;if((cy<-175)&&(cy>-190))cy=-175;//right down rect up -//right dwn rect down -
    if((cy>125)&&(cy<140))cy=125;if((cy<200)&&(cy>185))cy=200;//right 7 up -//right 7 down -
  }
  if((cx>210)&&(cx<265)){if((cy<275)&&(cy>260))cy=275;}//short //200 275//right 7 down -
  if((cx>135)&&(cx<190))//short //125 200
  {
    if((cy>-250)&&(cy<-235))cy=-250;if((cy<-25)&&(cy>-40))cy=-25;//right up T up - //right up T down -
    if((cy>-25)&&(cy<-10))cy=-25;if((cy<125)&&(cy>110))cy=125;//right down up rect up - //right down up rect down - 
    if((cy>200)&&(cy<215))cy=200;//right down T up -
  }
  if((cx>60)&&(cx<315)){if((cy>275)&&(cy<290))cy=275;if((cy<350)&&(cy>335))cy=350;}//long //50 325//right down T up - //right down T down -
}
void leftRight()
{
  if((cy>=-340)&&(cy<-260))//-350 -250
  {
    if((cx>-300)&&(cx<-285))cx=-300;if((cx<-175)&&(cx>-190))cx=-175;//left up left rect left | //lefe up left rect right |
    if((cx>-175)&&(cx<-160))cx=-175;if((cx<-25)&&(cx>-40))cx=-25;//left up right rect left | //left up right rect right |
    if((cx>50)&&(cx<65))cx=50;if((cx<200)&&(cx>185))cx=200;//right up left rect right |
    if((cx>200)&&(cx<215))cx=200;if((cx<325)&&(cx>310))cx=325;//right up right rect left | //right up right rect right |
  }
  if((cy>-240)&&(cy<-185))//-250 -175
  {
    if((cx>-300)&&(cx<-285))cx=-300;
    if((cx<-175)&&(cx>-190))cx=-175;//left down left rect left | //lefe down left rect right |
    if((cx>-100)&&(cx<-85))cx=-100;if((cx<125)&&(cx>110))cx=125;//middle up T left | //middle up T right |
    if((cx>200)&&(cx<215))cx=200;if((cx<325)&&(cx>310))cx=325;//right up right rect left | //right up right rect right |
  }
  if((cy>-240)&&(cy<-35))//-250 -25
  {
    if((cx>-175)&&(cx<-160))cx=-175;if((cx<-100)&&(cx>-115))cx=-100;//left up T left | //left up T right |
    if((cx>125)&&(cx<140))cx=125;if((cx<200)&&(cx>185))cx=200;//right up T left | //lright up T right |
  }
  if((cy>-240)&&(cy<-110)){if((cx>-25)&&(cx<-10))cx=-25;if((cx<50)&&(cx>35))cx=50;}//-250 -100//middle up T left | //middle up T right |
  if((cy>-165)&&(cy<-110)){if((cx<-25)&&(cx>-40))cx=-25;if((cx>50)&&(cx<65))cx=50;}//short //-175 -100//left up T right | //right up T left |
  if((cy>-90)&&(cy<-50)){if((cx<0)&&(cx>-20))cx=0;if((cx>25)&&(cx<40))cx=25;}//-100 -40//middle rect up left || //middle rect up right || 
  if((cy>-90)&&(cy<40))//-100 50
  {
    if((cx>-100)&&(cx<-85))cx=-100;if((cx<-40)&&(cx>-55))cx=-40;//middle rect left || //middle rect inside left ||
    if((cx<125)&&(cx>110))cx=125;if((cx>65)&&(cx<80))cx=65;//middle rect right || //middle rect inside right ||
  }
  if((cy>-15)&&(cy<115))//-25 125
  {
    if((cx>-175)&&(cx<-160))cx=-175;if((cx<-100)&&(cx>-115))cx=-100;//left down rect left | //left down rect right |
    if((cx>125)&&(cx<140))cx=125;if((cx<200)&&(cx>185))cx=200;//right down rect left | //right down rect right |
  }
  if((cy>60)&&(cy<115)){if((cx>-100)&&(cx<115))cx=-100;if((cx<125)&&(cx>110))cx=125;}//short //50 125//middle middle T left | //middle middle T right |
  if((cy>60)&&(cy<190)){if((cx>-25)&&(cx<-10))cx=-25;if((cx<50)&&(cx>35))cx=50;}//50 200//middle middle T left | //middle middle T right |
  if((cy>135)&&(cy<190))//short //125 200
  {
    if((cx>-300)&&(cx<-285))cx=-300;if((cx<325)&&(cx>310))cx=325;//left 7 left | //right 7 left |
    if((cx>-175)&&(cx<-160))cx=-175;if((cx<-25)&&(cx>-40))cx=-25;//left down rect left | //left down rect right |
    if((cx>50)&&(cx<65))cx=50;if((cx<200)&&(cx>185))cx=200;//right down rect left | //right down rect right |
  }
  if((cy>135)&&(cy<265))//125 275
  {
    if((cx>-250)&&(cx<-235))cx=-250;if((cx<-175)&&(cx>-190))cx=-175;//left 7 left |//left 7 right |
    if((cx>200)&&(cx<215))cx=200;if((cx<275)&&(cx>260))cx=275;//right 7 left |//right 7 right |
  }
  if((cy>210)&&(cy<265))//short //200 275
  {
    if(cx<-250)cx=-250;if(cx>275)cx=275;//left down | //right down |
    if((cx>-100)&&(cx<-85))cx=-100;if((cx<125)&&(cx>110))cx=125;//middle down T left |//middle down T left |
  }
  if((cy>210)&&(cy<340))//200 350
  {
    if((cx>-175)&&(cx<-160))cx=-175;if((cx<-100)&&(cx>-115))cx=-100;//left down T left | //left down T right |
    if((cx>-25)&&(cx<-10))cx=-25;if((cx<50)&&(cx>35))cx=50;//middle down T left | //middle down T right |
    if((cx>125)&&(cx<140))cx=125;if((cx<200)&&(cx>185))cx=200;//right down T left | //right down T right |
  }
  if((cy>285)&&(cy<340))//short //275 350
  {
    if((cx>-300)&&(cx<-285))cx=-300;if((cx<-25)&&(cx>-40))cx=-25;//left down T left | //left down T right |
    if((cx>50)&&(cx<65))cx=50;if((cx<325)&&(cx>310))cx=325;//right down T left | //right down T right |
  }
}
void outside()
{
  //touch wall out side
  if(cy<-350)cy=-350; if(cy>350)cy=350;//top line //bottom line
  if((cy>=-350)&&(cy<=-175)){if(cx<-300)cx=-300;if(cx>325)cx=325;}//left line //right line
  if((cy>=125)&&(cy<=350)){if(cx<-300)cx=-300;if(cx>325)cx=325;}//left line //right line
  if((cy==-25)&&(cx<-320))cx=350;if((cy==-25)&&(cx>350))cx=-320;//through left//through rightt
  if((cy>=-350)&&(cy<-260)){if((cx>-25)&&(cx<-10))cx=-25;if((cx<50)&&(cx>35))cx=50;}//-350 -250//top middle left | //top middle right |
  if((cy>-165)&&(cy<-35)){if((cx<-175)&&(cx>-190))cx=-175;if((cx>200)&&(cx<215))cx=200;}//-175 -25//left up || //right up ||
  if((cy>-15)&&(cy<115)){if((cx<-175)&&(cx>-190))cx=-175;if((cx>200)&&(cx<215))cx=200;}//-25 125//left down || //right down ||
  if((cx>-325)&&(cx<-185))//-315 -175
  {
    if((cy>-175)&&(cy<-160))cy=-175;if((cy<125)&&(cy>110))cy=125;//left up = //left down =
    if((cy<-25)&&(cy>-40))cy=-25;if((cy>-25)&&(cy<-10))cy=-25;//left middle up =//left middle down =
    if(cy==-25)ym=0;//left middle double =
  }
  if((cx>210)&&(cx<360))//200 350
  {
    if((cy>-175)&&(cy<-160))cy=-175;if((cy<125)&&(cy>110))cy=125;//right up =//right down =
    if((cy<-25)&&(cy>-40))cy=-25;if((cy>-25)&&(cy<-10))cy=-25;//right middle up = //right middle down =
    if(cy==-25)ym=0;//right middle double =
  }
  if((cx>=-175)&&(cx<=200)){if(eatGoast==false)ym=5;}{if(eatGoast==true)ym=10;}//debug
  if((cx>=-300)&&(cx<-260)){if((cy>200)&&(cy<215))cy=200;if((cy<275)&&(cy>260))cy=275;}//-300 -250//left dowm up - //left down down -
  if((cx>285)&&(cx<=325)){if((cy>200)&&(cy<215))cy=200;if((cy<275)&&(cy>260))cy=275;}//275 325//right dowm up - //right down down -
}