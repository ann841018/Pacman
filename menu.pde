int cx = 10;int cy = 200;int d=50;int ym = 5;int xm = 5;int ra = -130;int rb = 130;int score=0;int level=1;int l=3;int time=0;int c = 15;int timeg=200;int timec=150;int timeche=30;float chex=10;float chey=50;
int[] x={-300,-275,-250,-225,-200,-175,-150,-125,-100,-75,-50,-25,0,25,50,75,100,125,150,175,200,225,250,275,300,325,350};int[] y={-350,-325,-300,-275,-250,-225,-200,-175,-150,-125,-100,-75,-50,-25,0,25,50,75,100,125,150,175,200,225,250,275,300,325,350,375};
boolean cherry=false;boolean eatGoast=false;boolean eatGoast1=false;boolean eatGoast2=false;boolean eatGoast3=false;boolean eatGoast4=false;boolean xy[][]=new boolean[26][29];
boolean play=true;boolean go =false;boolean start =true;boolean up = false;boolean down = false;boolean left = false;boolean right = false;boolean cp=true;boolean cm=false;

void menu()
{
   fill(255);textSize(35);noStroke();textSize(25);text("MADE BY",30,600);textSize(35);text("ANN",25,675);text("LiN",75,725);
   text("LEVEL",35,75);text(level,35,125);text("SCORE",35,225);text(score,35,275);text("LIVES",35,375);if(score<0)score=0;
   if(play==true){if(timeg==200){beginning.play();play=false;}}
   if((go==false)&&(l>0))
   {
     fill(255,150);textSize(100);text(timeg/60,485,410);timeg--;textSize(50);if((timeg<240)&&(timeg>150))text("READY",435,465);
     if((timeg<120)&&(timeg>60))text("GO",480,465);if(timeg<30){go=true;pDr=false;pDp=false;pDb=false;pDo=false;}
   }
   if(l==0)start=false;if((start==false)&&(l<=0)){fill(255);textSize(100);text("GAME OVER",210,400);}fill(255,255,0);
   if(l==1)fill(0);arc(20,425,35,35,radians(-130),radians(130),PIE);if(l==2)fill(0);arc(60,425,35,35,radians(-40),radians(220),PIE);
   if(l==3)fill(0);arc(100,425,35,35,radians(-230),radians(40),PIE);if(l==4)fill(0);arc(140,425,35,35,radians(50),radians(310),PIE);
}
void move()
{ 
  noStroke();fill(255,255,0);if(eatGoast==true)fill((int)random(100,255),(int)random(100,255),(int)random(100,255));arc(cx,cy,35,35,radians(ra), radians(rb),PIE);delay(d); 
  if(up==true){ra=ra-28;rb=rb+28;cy=cy-ym;if(ra<=-180){ra=-40;rb=220;}}if(down==true){ra=ra-28;rb=rb+28;cy=cy+ym;if(rb>=180){ra=-230;rb=40;}}
  if(left==true){ra=ra-10;rb=rb+10;cx=cx-xm;if(ra<=-180){ra=-130;rb=130;}}if(right==true){ra=ra-46;rb=rb+46;cx=cx+xm;if(ra<=-180){ra=50;rb=310;}}
}
void eat()
{
  for(int i=0;i<26;i++){for(int j=0;j<29;j++){stroke(255);strokeWeight(3);
  if(xy[i][j]==false){if(cx==x[i]){if((cy<y[j]+15)&&(cy>y[j]-15)){chomp.play();chomp.rewind();stroke(0);score=score+10;xy[i][j]=true;}}if(cy==y[j]){if((cx<x[i]+15)&&(cx>x[i]-15)){chomp.play();chomp.rewind();stroke(0);score=score+10;xy[i][j]=true;}}point(x[i],y[j]);}}}
  for(int m=0;m<26;m++){for(int n=8;n<19;n++)if((m<5)||(m>20))xy[m][n]=true;for(int n=5;n<25;n++){if((m<2)||(m>23))if(n>22)xy[m][n]=true;if((n<7)||(n>22)){if((m>2)&&(m<5))xy[m][n]=true;if((m>5)&&(m<8))xy[m][n]=true;if((m>8)&&(m<17))xy[m][n]=true;if((m>17)&&(m<20))xy[m][n]=true;if((m>20)&&(m<23))xy[m][n]=true;}}}
  for(int m=1;m<25;m++){if((m<5)||(m>20)){for(int n=1;n<4;n++)xy[m][n]=true;for(int n=5;n<7;n++)xy[m][n]=true;for(int n=20;n<22;n++)xy[m][n]=true;for(int n=26;n<28;n++)xy[m][n]=true;}}
  for(int m=3;m<23;m++){if((m<5)||(m>20))xy[m][22]=true;}for(int m=5;m<21;m++){if((m<6)||(m>19))for(int n=26;n<28;n++)xy[m][n]=true;}for(int m=6;m<20;m++){for(int n=8;n<19;n++){xy[m][n]=true;}}for(int m=12;m<14;m++){for(int n=0;n<28;n++)if(n!=4)xy[m][n]=true;}
  for(int m=6;m<20;m++){if((m<8)||(m>17))for(int n=7;n<26;n++)if((n<8)||(n>24))xy[m][n]=true;if((m<11)||(m>14)){for(int n=1;n<4;n++)xy[m][n]=true;for(int n=20;n<22;n++)xy[m][n]=true;for(int n=26;n<28;n++)xy[m][n]=true;}}
  if(
  (xy[0][0]==true)&&(xy[0][1]==true)&&(xy[0][2]==true)&&(xy[0][3]==true)&&(xy[0][4]==true)&&(xy[0][5]==true)&&(xy[0][6]==true)&&(xy[0][7]==true)&&(xy[0][8]==true)&&(xy[0][9]==true)&&(xy[0][10]==true)&&(xy[0][11]==true)&&(xy[0][12]==true)&&(xy[0][13]==true)&&(xy[0][14]==true)&&(xy[0][15]==true)&&(xy[0][16]==true)&&(xy[0][17]==true)&&(xy[0][18]==true)&&(xy[0][19]==true)&&(xy[0][20]==true)&&(xy[0][21]==true)&&(xy[0][22]==true)&&(xy[0][23]==true)&&(xy[0][24]==true)&&(xy[0][25]==true)&&(xy[0][26]==true)&&(xy[0][27]==true)&&(xy[0][28]==true)&&
  (xy[1][0]==true)&&(xy[1][1]==true)&&(xy[1][2]==true)&&(xy[1][3]==true)&&(xy[1][4]==true)&&(xy[1][5]==true)&&(xy[1][6]==true)&&(xy[1][7]==true)&&(xy[1][8]==true)&&(xy[1][9]==true)&&(xy[1][10]==true)&&(xy[1][11]==true)&&(xy[1][12]==true)&&(xy[1][13]==true)&&(xy[1][14]==true)&&(xy[1][15]==true)&&(xy[1][16]==true)&&(xy[1][17]==true)&&(xy[1][18]==true)&&(xy[1][19]==true)&&(xy[1][20]==true)&&(xy[1][21]==true)&&(xy[1][22]==true)&&(xy[1][23]==true)&&(xy[1][24]==true)&&(xy[1][25]==true)&&(xy[1][26]==true)&&(xy[1][27]==true)&&(xy[1][28]==true)&&
  (xy[2][0]==true)&&(xy[2][1]==true)&&(xy[2][2]==true)&&(xy[2][3]==true)&&(xy[2][4]==true)&&(xy[2][5]==true)&&(xy[2][6]==true)&&(xy[2][7]==true)&&(xy[2][8]==true)&&(xy[2][9]==true)&&(xy[2][10]==true)&&(xy[2][11]==true)&&(xy[2][12]==true)&&(xy[2][13]==true)&&(xy[2][14]==true)&&(xy[2][15]==true)&&(xy[2][16]==true)&&(xy[2][17]==true)&&(xy[2][18]==true)&&(xy[2][19]==true)&&(xy[2][20]==true)&&(xy[2][21]==true)&&(xy[2][22]==true)&&(xy[2][23]==true)&&(xy[2][24]==true)&&(xy[2][25]==true)&&(xy[2][26]==true)&&(xy[2][27]==true)&&(xy[2][28]==true)&&
  (xy[3][0]==true)&&(xy[3][1]==true)&&(xy[3][2]==true)&&(xy[3][3]==true)&&(xy[3][4]==true)&&(xy[3][5]==true)&&(xy[3][6]==true)&&(xy[3][7]==true)&&(xy[3][8]==true)&&(xy[3][9]==true)&&(xy[3][10]==true)&&(xy[3][11]==true)&&(xy[3][12]==true)&&(xy[3][13]==true)&&(xy[3][14]==true)&&(xy[3][15]==true)&&(xy[3][16]==true)&&(xy[3][17]==true)&&(xy[3][18]==true)&&(xy[3][19]==true)&&(xy[3][20]==true)&&(xy[3][21]==true)&&(xy[3][22]==true)&&(xy[3][23]==true)&&(xy[3][24]==true)&&(xy[3][25]==true)&&(xy[3][26]==true)&&(xy[3][27]==true)&&(xy[3][28]==true)&&
  (xy[4][0]==true)&&(xy[4][1]==true)&&(xy[4][2]==true)&&(xy[4][3]==true)&&(xy[4][4]==true)&&(xy[4][5]==true)&&(xy[4][6]==true)&&(xy[4][7]==true)&&(xy[4][8]==true)&&(xy[4][9]==true)&&(xy[4][10]==true)&&(xy[4][11]==true)&&(xy[4][12]==true)&&(xy[4][13]==true)&&(xy[4][14]==true)&&(xy[4][15]==true)&&(xy[4][16]==true)&&(xy[4][17]==true)&&(xy[4][18]==true)&&(xy[4][19]==true)&&(xy[4][20]==true)&&(xy[4][21]==true)&&(xy[4][22]==true)&&(xy[4][23]==true)&&(xy[4][24]==true)&&(xy[4][25]==true)&&(xy[4][26]==true)&&(xy[4][27]==true)&&(xy[4][28]==true)&&
  (xy[5][0]==true)&&(xy[5][1]==true)&&(xy[5][2]==true)&&(xy[5][3]==true)&&(xy[5][4]==true)&&(xy[5][5]==true)&&(xy[5][6]==true)&&(xy[5][7]==true)&&(xy[5][8]==true)&&(xy[5][9]==true)&&(xy[5][10]==true)&&(xy[5][11]==true)&&(xy[5][12]==true)&&(xy[5][13]==true)&&(xy[5][14]==true)&&(xy[5][15]==true)&&(xy[5][16]==true)&&(xy[5][17]==true)&&(xy[5][18]==true)&&(xy[5][19]==true)&&(xy[5][20]==true)&&(xy[5][21]==true)&&(xy[5][22]==true)&&(xy[5][23]==true)&&(xy[5][24]==true)&&(xy[5][25]==true)&&(xy[5][26]==true)&&(xy[5][27]==true)&&(xy[5][28]==true)&&
  (xy[6][0]==true)&&(xy[6][1]==true)&&(xy[6][2]==true)&&(xy[6][3]==true)&&(xy[6][4]==true)&&(xy[6][5]==true)&&(xy[6][6]==true)&&(xy[6][7]==true)&&(xy[6][8]==true)&&(xy[6][9]==true)&&(xy[6][10]==true)&&(xy[6][11]==true)&&(xy[6][12]==true)&&(xy[6][13]==true)&&(xy[6][14]==true)&&(xy[6][15]==true)&&(xy[6][16]==true)&&(xy[6][17]==true)&&(xy[6][18]==true)&&(xy[6][19]==true)&&(xy[6][20]==true)&&(xy[6][21]==true)&&(xy[6][22]==true)&&(xy[6][23]==true)&&(xy[6][24]==true)&&(xy[6][25]==true)&&(xy[6][26]==true)&&(xy[6][27]==true)&&(xy[6][28]==true)&&
  (xy[7][0]==true)&&(xy[7][1]==true)&&(xy[7][2]==true)&&(xy[7][3]==true)&&(xy[7][4]==true)&&(xy[7][5]==true)&&(xy[7][6]==true)&&(xy[7][7]==true)&&(xy[7][8]==true)&&(xy[7][9]==true)&&(xy[7][10]==true)&&(xy[7][11]==true)&&(xy[7][12]==true)&&(xy[7][13]==true)&&(xy[7][14]==true)&&(xy[7][15]==true)&&(xy[7][16]==true)&&(xy[7][17]==true)&&(xy[7][18]==true)&&(xy[7][19]==true)&&(xy[7][20]==true)&&(xy[7][21]==true)&&(xy[7][22]==true)&&(xy[7][23]==true)&&(xy[7][24]==true)&&(xy[7][25]==true)&&(xy[7][26]==true)&&(xy[7][27]==true)&&(xy[7][28]==true)&&
  (xy[8][0]==true)&&(xy[8][1]==true)&&(xy[8][2]==true)&&(xy[8][3]==true)&&(xy[8][4]==true)&&(xy[8][5]==true)&&(xy[8][6]==true)&&(xy[8][7]==true)&&(xy[8][8]==true)&&(xy[8][9]==true)&&(xy[8][10]==true)&&(xy[8][11]==true)&&(xy[8][12]==true)&&(xy[8][13]==true)&&(xy[8][14]==true)&&(xy[8][15]==true)&&(xy[8][16]==true)&&(xy[8][17]==true)&&(xy[8][18]==true)&&(xy[8][19]==true)&&(xy[8][20]==true)&&(xy[8][21]==true)&&(xy[8][22]==true)&&(xy[8][23]==true)&&(xy[8][24]==true)&&(xy[8][25]==true)&&(xy[8][26]==true)&&(xy[8][27]==true)&&(xy[8][28]==true)&&
  (xy[9][0]==true)&&(xy[9][1]==true)&&(xy[9][2]==true)&&(xy[9][3]==true)&&(xy[9][4]==true)&&(xy[9][5]==true)&&(xy[9][6]==true)&&(xy[9][7]==true)&&(xy[9][8]==true)&&(xy[9][9]==true)&&(xy[9][10]==true)&&(xy[9][11]==true)&&(xy[9][12]==true)&&(xy[9][13]==true)&&(xy[9][14]==true)&&(xy[9][15]==true)&&(xy[9][16]==true)&&(xy[9][17]==true)&&(xy[9][18]==true)&&(xy[9][19]==true)&&(xy[9][20]==true)&&(xy[9][21]==true)&&(xy[9][22]==true)&&(xy[9][23]==true)&&(xy[9][24]==true)&&(xy[9][25]==true)&&(xy[9][26]==true)&&(xy[9][27]==true)&&(xy[9][28]==true)&&
  (xy[10][0]==true)&&(xy[10][1]==true)&&(xy[10][2]==true)&&(xy[10][3]==true)&&(xy[10][4]==true)&&(xy[10][5]==true)&&(xy[10][6]==true)&&(xy[10][7]==true)&&(xy[10][8]==true)&&(xy[10][9]==true)&&(xy[10][10]==true)&&(xy[10][11]==true)&&(xy[10][12]==true)&&(xy[10][13]==true)&&(xy[10][14]==true)&&(xy[10][15]==true)&&(xy[10][16]==true)&&(xy[10][17]==true)&&(xy[10][18]==true)&&(xy[10][19]==true)&&(xy[10][20]==true)&&(xy[10][21]==true)&&(xy[10][22]==true)&&(xy[10][23]==true)&&(xy[10][24]==true)&&(xy[10][25]==true)&&(xy[10][26]==true)&&(xy[10][27]==true)&&(xy[10][28]==true)&&
  (xy[11][0]==true)&&(xy[11][1]==true)&&(xy[11][2]==true)&&(xy[11][3]==true)&&(xy[11][4]==true)&&(xy[11][5]==true)&&(xy[11][6]==true)&&(xy[11][7]==true)&&(xy[11][8]==true)&&(xy[11][9]==true)&&(xy[11][10]==true)&&(xy[11][11]==true)&&(xy[11][12]==true)&&(xy[11][13]==true)&&(xy[11][14]==true)&&(xy[11][15]==true)&&(xy[11][16]==true)&&(xy[11][17]==true)&&(xy[11][18]==true)&&(xy[11][19]==true)&&(xy[11][20]==true)&&(xy[11][21]==true)&&(xy[11][22]==true)&&(xy[11][23]==true)&&(xy[11][24]==true)&&(xy[11][25]==true)&&(xy[11][26]==true)&&(xy[11][27]==true)&&(xy[11][28]==true)&&
  (xy[12][0]==true)&&(xy[12][1]==true)&&(xy[12][2]==true)&&(xy[12][3]==true)&&(xy[12][4]==true)&&(xy[12][5]==true)&&(xy[12][6]==true)&&(xy[12][7]==true)&&(xy[12][8]==true)&&(xy[12][9]==true)&&(xy[12][10]==true)&&(xy[12][11]==true)&&(xy[12][12]==true)&&(xy[12][13]==true)&&(xy[12][14]==true)&&(xy[12][15]==true)&&(xy[12][16]==true)&&(xy[12][17]==true)&&(xy[12][18]==true)&&(xy[12][19]==true)&&(xy[12][20]==true)&&(xy[12][21]==true)&&(xy[12][22]==true)&&(xy[12][23]==true)&&(xy[12][24]==true)&&(xy[12][25]==true)&&(xy[12][26]==true)&&(xy[12][27]==true)&&(xy[12][28]==true)&&
  (xy[13][0]==true)&&(xy[13][1]==true)&&(xy[13][2]==true)&&(xy[13][3]==true)&&(xy[13][4]==true)&&(xy[13][5]==true)&&(xy[13][6]==true)&&(xy[13][7]==true)&&(xy[13][8]==true)&&(xy[13][9]==true)&&(xy[13][10]==true)&&(xy[13][11]==true)&&(xy[13][12]==true)&&(xy[13][13]==true)&&(xy[13][14]==true)&&(xy[13][15]==true)&&(xy[13][16]==true)&&(xy[13][17]==true)&&(xy[13][18]==true)&&(xy[13][19]==true)&&(xy[13][20]==true)&&(xy[13][21]==true)&&(xy[13][22]==true)&&(xy[13][23]==true)&&(xy[13][24]==true)&&(xy[13][25]==true)&&(xy[13][26]==true)&&(xy[13][27]==true)&&(xy[13][28]==true)&&
  (xy[14][0]==true)&&(xy[14][1]==true)&&(xy[14][2]==true)&&(xy[14][3]==true)&&(xy[14][4]==true)&&(xy[14][5]==true)&&(xy[14][6]==true)&&(xy[14][7]==true)&&(xy[14][8]==true)&&(xy[14][9]==true)&&(xy[14][10]==true)&&(xy[14][11]==true)&&(xy[14][12]==true)&&(xy[14][13]==true)&&(xy[14][14]==true)&&(xy[14][15]==true)&&(xy[14][16]==true)&&(xy[14][17]==true)&&(xy[14][18]==true)&&(xy[14][19]==true)&&(xy[14][20]==true)&&(xy[14][21]==true)&&(xy[14][22]==true)&&(xy[14][23]==true)&&(xy[14][24]==true)&&(xy[14][25]==true)&&(xy[14][26]==true)&&(xy[14][27]==true)&&(xy[14][28]==true)&&
  (xy[15][0]==true)&&(xy[15][1]==true)&&(xy[15][2]==true)&&(xy[15][3]==true)&&(xy[15][4]==true)&&(xy[15][5]==true)&&(xy[15][6]==true)&&(xy[15][7]==true)&&(xy[15][8]==true)&&(xy[15][9]==true)&&(xy[15][10]==true)&&(xy[15][11]==true)&&(xy[15][12]==true)&&(xy[15][13]==true)&&(xy[15][14]==true)&&(xy[15][15]==true)&&(xy[15][16]==true)&&(xy[15][17]==true)&&(xy[15][18]==true)&&(xy[15][19]==true)&&(xy[15][20]==true)&&(xy[15][21]==true)&&(xy[15][22]==true)&&(xy[15][23]==true)&&(xy[15][24]==true)&&(xy[15][25]==true)&&(xy[15][26]==true)&&(xy[15][27]==true)&&(xy[15][28]==true)&&
  (xy[16][0]==true)&&(xy[16][1]==true)&&(xy[16][2]==true)&&(xy[16][3]==true)&&(xy[16][4]==true)&&(xy[16][5]==true)&&(xy[16][6]==true)&&(xy[16][7]==true)&&(xy[16][8]==true)&&(xy[16][9]==true)&&(xy[16][10]==true)&&(xy[16][11]==true)&&(xy[16][12]==true)&&(xy[16][13]==true)&&(xy[16][14]==true)&&(xy[16][15]==true)&&(xy[16][16]==true)&&(xy[16][17]==true)&&(xy[16][18]==true)&&(xy[16][19]==true)&&(xy[16][20]==true)&&(xy[16][21]==true)&&(xy[16][22]==true)&&(xy[16][23]==true)&&(xy[16][24]==true)&&(xy[16][25]==true)&&(xy[16][26]==true)&&(xy[16][27]==true)&&(xy[16][28]==true)&&
  (xy[17][0]==true)&&(xy[17][1]==true)&&(xy[17][2]==true)&&(xy[17][3]==true)&&(xy[17][4]==true)&&(xy[17][5]==true)&&(xy[17][6]==true)&&(xy[17][7]==true)&&(xy[17][8]==true)&&(xy[17][9]==true)&&(xy[17][10]==true)&&(xy[17][11]==true)&&(xy[17][12]==true)&&(xy[17][13]==true)&&(xy[17][14]==true)&&(xy[17][15]==true)&&(xy[17][16]==true)&&(xy[17][17]==true)&&(xy[17][18]==true)&&(xy[17][19]==true)&&(xy[17][20]==true)&&(xy[17][21]==true)&&(xy[17][22]==true)&&(xy[17][23]==true)&&(xy[17][24]==true)&&(xy[17][25]==true)&&(xy[17][26]==true)&&(xy[17][27]==true)&&(xy[17][28]==true)&&
  (xy[18][0]==true)&&(xy[18][1]==true)&&(xy[18][2]==true)&&(xy[18][3]==true)&&(xy[18][4]==true)&&(xy[18][5]==true)&&(xy[18][6]==true)&&(xy[18][7]==true)&&(xy[18][8]==true)&&(xy[18][9]==true)&&(xy[18][10]==true)&&(xy[18][11]==true)&&(xy[18][12]==true)&&(xy[18][13]==true)&&(xy[18][14]==true)&&(xy[18][15]==true)&&(xy[18][16]==true)&&(xy[18][17]==true)&&(xy[18][18]==true)&&(xy[18][19]==true)&&(xy[18][20]==true)&&(xy[18][21]==true)&&(xy[18][22]==true)&&(xy[18][23]==true)&&(xy[18][24]==true)&&(xy[18][25]==true)&&(xy[18][26]==true)&&(xy[18][27]==true)&&(xy[18][28]==true)&&
  (xy[19][0]==true)&&(xy[19][1]==true)&&(xy[19][2]==true)&&(xy[19][3]==true)&&(xy[19][4]==true)&&(xy[19][5]==true)&&(xy[19][6]==true)&&(xy[19][7]==true)&&(xy[19][8]==true)&&(xy[19][9]==true)&&(xy[19][10]==true)&&(xy[19][11]==true)&&(xy[19][12]==true)&&(xy[19][13]==true)&&(xy[19][14]==true)&&(xy[19][15]==true)&&(xy[19][16]==true)&&(xy[19][17]==true)&&(xy[19][18]==true)&&(xy[19][19]==true)&&(xy[19][20]==true)&&(xy[19][21]==true)&&(xy[19][22]==true)&&(xy[19][23]==true)&&(xy[19][24]==true)&&(xy[19][25]==true)&&(xy[19][26]==true)&&(xy[19][27]==true)&&(xy[19][28]==true)&&
  (xy[20][0]==true)&&(xy[20][1]==true)&&(xy[20][2]==true)&&(xy[20][3]==true)&&(xy[20][4]==true)&&(xy[20][5]==true)&&(xy[20][6]==true)&&(xy[20][7]==true)&&(xy[20][8]==true)&&(xy[20][9]==true)&&(xy[20][10]==true)&&(xy[20][11]==true)&&(xy[20][12]==true)&&(xy[20][13]==true)&&(xy[20][14]==true)&&(xy[20][15]==true)&&(xy[20][16]==true)&&(xy[20][17]==true)&&(xy[20][18]==true)&&(xy[20][19]==true)&&(xy[20][20]==true)&&(xy[20][21]==true)&&(xy[20][22]==true)&&(xy[20][23]==true)&&(xy[20][24]==true)&&(xy[20][25]==true)&&(xy[20][26]==true)&&(xy[20][27]==true)&&(xy[20][28]==true)&&
  (xy[21][0]==true)&&(xy[21][1]==true)&&(xy[21][2]==true)&&(xy[21][3]==true)&&(xy[21][4]==true)&&(xy[21][5]==true)&&(xy[21][6]==true)&&(xy[21][7]==true)&&(xy[21][8]==true)&&(xy[21][9]==true)&&(xy[21][10]==true)&&(xy[21][11]==true)&&(xy[21][12]==true)&&(xy[21][13]==true)&&(xy[21][14]==true)&&(xy[21][15]==true)&&(xy[21][16]==true)&&(xy[21][17]==true)&&(xy[21][18]==true)&&(xy[21][19]==true)&&(xy[21][20]==true)&&(xy[21][21]==true)&&(xy[21][22]==true)&&(xy[21][23]==true)&&(xy[21][24]==true)&&(xy[21][25]==true)&&(xy[21][26]==true)&&(xy[21][27]==true)&&(xy[21][28]==true)&&
  (xy[22][0]==true)&&(xy[22][1]==true)&&(xy[22][2]==true)&&(xy[22][3]==true)&&(xy[22][4]==true)&&(xy[22][5]==true)&&(xy[22][6]==true)&&(xy[22][7]==true)&&(xy[22][8]==true)&&(xy[22][9]==true)&&(xy[22][10]==true)&&(xy[22][11]==true)&&(xy[22][12]==true)&&(xy[22][13]==true)&&(xy[22][14]==true)&&(xy[22][15]==true)&&(xy[22][16]==true)&&(xy[22][17]==true)&&(xy[22][18]==true)&&(xy[22][19]==true)&&(xy[22][20]==true)&&(xy[22][21]==true)&&(xy[22][22]==true)&&(xy[22][23]==true)&&(xy[22][24]==true)&&(xy[22][25]==true)&&(xy[22][26]==true)&&(xy[22][27]==true)&&(xy[22][28]==true)&&
  (xy[23][0]==true)&&(xy[23][1]==true)&&(xy[23][2]==true)&&(xy[23][3]==true)&&(xy[23][4]==true)&&(xy[23][5]==true)&&(xy[23][6]==true)&&(xy[23][7]==true)&&(xy[23][8]==true)&&(xy[23][9]==true)&&(xy[23][10]==true)&&(xy[23][11]==true)&&(xy[23][12]==true)&&(xy[23][13]==true)&&(xy[23][14]==true)&&(xy[23][15]==true)&&(xy[23][16]==true)&&(xy[23][17]==true)&&(xy[23][18]==true)&&(xy[23][19]==true)&&(xy[23][20]==true)&&(xy[23][21]==true)&&(xy[23][22]==true)&&(xy[23][23]==true)&&(xy[23][24]==true)&&(xy[23][25]==true)&&(xy[23][26]==true)&&(xy[23][27]==true)&&(xy[23][28]==true)&&
  (xy[24][0]==true)&&(xy[24][1]==true)&&(xy[24][2]==true)&&(xy[24][3]==true)&&(xy[24][4]==true)&&(xy[24][5]==true)&&(xy[24][6]==true)&&(xy[24][7]==true)&&(xy[24][8]==true)&&(xy[24][9]==true)&&(xy[24][10]==true)&&(xy[24][11]==true)&&(xy[24][12]==true)&&(xy[24][13]==true)&&(xy[24][14]==true)&&(xy[24][15]==true)&&(xy[24][16]==true)&&(xy[24][17]==true)&&(xy[24][18]==true)&&(xy[24][19]==true)&&(xy[24][20]==true)&&(xy[24][21]==true)&&(xy[24][22]==true)&&(xy[24][23]==true)&&(xy[24][24]==true)&&(xy[24][25]==true)&&(xy[24][26]==true)&&(xy[24][27]==true)&&(xy[24][28]==true)&&
  (xy[25][0]==true)&&(xy[25][1]==true)&&(xy[25][2]==true)&&(xy[25][3]==true)&&(xy[25][4]==true)&&(xy[25][5]==true)&&(xy[25][6]==true)&&(xy[25][7]==true)&&(xy[25][8]==true)&&(xy[25][9]==true)&&(xy[25][10]==true)&&(xy[25][11]==true)&&(xy[25][12]==true)&&(xy[25][13]==true)&&(xy[25][14]==true)&&(xy[25][15]==true)&&(xy[25][16]==true)&&(xy[25][17]==true)&&(xy[25][18]==true)&&(xy[25][19]==true)&&(xy[25][20]==true)&&(xy[25][21]==true)&&(xy[25][22]==true)&&(xy[25][23]==true)&&(xy[25][24]==true)&&(xy[25][25]==true)&&(xy[25][26]==true)&&(xy[25][27]==true)&&(xy[25][28]==true)
  ){fill(255);textSize(125);text("YOU WIN",-250,50);start=false;}
  noStroke();fill(255);if(c==15){cp=true;cm=false;}if(cp==true)c++;if(c==20){cp=false;cm=true;}if(cm==true)c--;
  if(eatGoast1==false){ellipse(x[0],y[2],c,c);xm=5;ym=5;rgm=5;pgm=5;bgm=5;ogm=5;if(cx==x[0]){if((cy<y[2]+20)&&(cy>y[2]-20)){eatGoast1=true;eatGoast=true;timec=150;}}}
  if(eatGoast2==false){ellipse(x[25],y[2],c,c);xm=5;ym=5;rgm=5;pgm=5;bgm=5;ogm=5;if(cx==x[25]){if((cy<y[2]+20)&&(cy>y[2]-20)){eatGoast2=true;eatGoast=true;timec=150;}}}
  if(eatGoast3==false){ellipse(x[0],y[22],c,c);xm=5;ym=5;rgm=5;pgm=5;bgm=5;ogm=5;if(cx==x[0]){if((cy<y[22]+20)&&(cy>y[22]-20)){eatGoast3=true;eatGoast=true;timec=150;}}}
  if(eatGoast4==false){ellipse(x[25],y[22],c,c);xm=5;ym=5;rgm=5;pgm=5;bgm=5;ogm=5;if(cx==x[25]){if((cy<y[22]+20)&&(cy>y[22]-20)){eatGoast4=true;eatGoast=true;timec=150;}}}
  if(eatGoast==true)
  {
    timec--;xm=10;ym=10;rgUpDown();rgLeftRight();rgOutside();rgm=5;pgUpDown();pgLeftRight();pgOutside();pgm=5;bgUpDown();bgLeftRight();bgOutside();bgm=5;ogUpDown();ogLeftRight();ogOutside();ogm=5;
    if(rgD==false){if(rgx==cx){if((rgy<cy+35)&&(rgy>cy-35))rgD=true;if((rgy<cy+10)&&(rgy>cy-10))score=score+300;}if(rgy==cy){if((rgx<cx+35)&&(rgx>cx-35))rgD=true;if((rgx<cx+10)&&(rgx>cx-10))score=score+300;}}
    if(pgD==false){if(pgx==cx){if((pgy<cy+35)&&(pgy>cy-35))pgD=true;if((pgy<cy+10)&&(pgy>cy-10))score=score+300;}if(pgy==cy){if((pgx<cx+35)&&(pgx>cx-35))pgD=true;if((pgx<cx+10)&&(pgx>cx-10))score=score+300;}}
    if(bgD==false){if(bgx==cx){if((bgy<cy+35)&&(bgy>cy-35))bgD=true;if((bgy<cy+10)&&(bgy>cy-10))score=score+300;}if(bgy==cy){if((bgx<cx+35)&&(bgx>cx-35))bgD=true;if((bgx<cx+10)&&(bgx>cx-10))score=score+300;}}
    if(ogD==false){if(ogx==cx){if((ogy<cy+35)&&(ogy>cy-35))ogD=true;if((ogy<cy+10)&&(ogy>cy-10))score=score+300;}if(ogy==cy){if((ogx<cx+35)&&(ogx>cx-35))ogD=true;if((ogx<cx+10)&&(ogx>cx-10))score=score+300;}}
    if(timec<=0){eatGoast=false;rgD=false;pgD=false;bgD=false;ogD=false;xm=5;ym=5;}
  }
  if((rgD==true)&&(pgD==true)&&(bgD==true)&&(ogD==true))l=5;
}

void cherry()
{
  if(cherry==false)
  {
    if((time>800)&&(time<1200))
    {
      noStroke();fill(0);ellipse(chex,chey,10,10);stroke(0,200,50);curve(chex,chey-15,chex,chey-15,chex-8,chey+5,chex-20,chey+5);curve(chex-5,chey-15,chex,chey-15,chex+10,chey+5,chex,chey+5);
      noStroke();fill(0,200,50);ellipse(chex+1,chey-15,10,4);fill(255,0,0);ellipse(chex-8,chey+10,15,15);ellipse(chex+9,chey+10,15,15);fill(255);ellipse(chex-10,chey+8,5,5);ellipse(chex+7,chey+8,5,5);
    }
    if(cy==chey){if((cx<chex+15)&&(cx>chex-15)){score=score+300;cherry=true;}}
  }
  if(cherry==true){timeche--;textSize(25);if(timeche>0)text("300",chex-20,chey+10);}if((cherry==true)&&(time>2000))cherry=false;
}

void keyPressed()
{
  if(keyCode==UP){up=true;down=false;left=false;right=false;ra=-40;rb=220;}if(keyCode==DOWN){up=false;down=true;left=false;right=false;ra=-230;rb=40;}
  if(keyCode==LEFT){up=false;down=false;left=true;right=false;ra=-130;rb=130;}if(keyCode==RIGHT){up=false;down=false;left=false;right=true;ra=50;rb=310;}
  if(keyCode==' '){up=false;down=false;left=false;right=false;rgG=5;pgG=5;bgG=5;ogG=5;}
  if(keyCode=='1'){level=1;d=40;}if(keyCode=='2'){level=2;d=39;}if(keyCode=='3'){level=3;d=38;}if(keyCode=='4'){level=4;d=37;}if(keyCode=='5'){level=5;d=36;}
  if(keyCode=='6'){level=6;d=35;}if(keyCode=='7'){level=7;d=35;}if(keyCode=='8'){level=8;d=33;}if(keyCode=='9'){level=9;d=32;}if(keyCode=='0'){level=10;d=30;}
}