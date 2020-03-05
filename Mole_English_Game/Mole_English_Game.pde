Timer startTimer;

int BEFORE_INTRO = -1;
int INTRO = 0;
int LEVEL1_PLAY = 1;
int LEVEL2_PLAY = 2;
int LEVEL3_PLAY = 3;
int GAME_OVER = 4;
int life = 3;

int mode = -1; // -1 means Before intro screen. 0 means intro screen. 1 means level1 play. 2 means level2 play 3 means game has ended

int modelevel1 = 0;
int modelevel2 = 0;
int modelevel3 = -1;

int modelevel1_1 = 0;
int modelevel1_2 = 1;
int modelevel1_3 = 2;
int modelevel1_4 = 3;
int modelevel1_5 = 4;
int modelevel1_6 = 5;
int modelevel1_7 = 6;
int modelevel1_8 = 7;
int modelevel1_9 = 8;
int modelevel1_10 =9;

int modelevel2_1 = 0;
int modelevel2_2 = 1;
int modelevel2_3 = 2;
int modelevel2_4 = 3;
int modelevel2_5 = 4;
int modelevel2_6 = 5;
int modelevel2_7 = 6;
int modelevel2_8 = 7;
int modelevel2_9 = 8;
int modelevel2_10 = 9; 

int modelevel3_0 = -1;
int modelevel3_1 = 0;
int modelevel3_2 = 1;
int modelevel3_3 = 2;
int modelevel3_4 = 3;
int modelevel3_5 = 4;
int modelevel3_6 = 5;
int modelevel3_7 = 6;
int modelevel3_8 = 7;
int modelevel3_9 = 8;
int modelevel3_10 = 9;
int modelevel3_11 = 10;

float r = -330;

int h = 550;
int w = -200;
PImage rock;
PImage ston1;
PImage ston2;
PImage bone;
PFont m;
PFont b;
int R;
int G;
int B;

int i = 300*2;
int j = 650*2;
float moleX=i;
float moleY=j;

int score=0;

import processing.sound.*;
SoundFile file;
SoundFile Osound;
SoundFile Xsound;

//게임 배경 화면 설정
void setup() {
  size(600,600);
  smooth();
  rock = loadImage("rock.PNG");
  ston1 = loadImage("ston1.PNG");
  ston2 = loadImage("ston2.PNG");
  bone = loadImage("bone.PNG");
  b = loadFont("AlienEncounters-48.vlw");
  m=loadFont("MDSol-48.vlw");
  textFont(m);
  textAlign(CENTER);
  imageMode(CENTER);
  
  file = new SoundFile(this, "Splashing_Around.wav");
  Osound = new SoundFile(this, "Osound.wav");
  Xsound = new SoundFile(this, "Xsound.wav");
  file.loop();
}

//단계별 게임 시작 설정
void draw() {

  if (mode == BEFORE_INTRO) { // this is waht to do fot the Before intro screen.
    doBeforeIntro();
  } else if (mode == INTRO){ // this is waht to do fot the intro screen.
    doIntroMode();
  } else if (mode == LEVEL1_PLAY){ // this is what to do for level1 play.
    doLEVEL1Play();
    startTimer.countDown(); // 시간 설정
  } else if (mode == LEVEL2_PLAY){ // this is what to do for level2 play.
    doLEVEL2Play();
    startTimer.countDown(); // 시간 설정
  } else if (mode == LEVEL3_PLAY) { // this is what to do for level3 plat.
    doLEVEL3Play();
    startTimer.countDown(); // 시간 설정
  } else if (mode == GAME_OVER){ // this is what to do when the game is over
    doGameOver();
  }   
}


//시작 화면 설정
public void doBeforeIntro(){
  
  background(105,63,38);
  R=int(random(0,255));
  G=int(random(0,255));
  B=int(random(0,255));
  delay(150);
  fill(R,G,B);
  textFont(b);
  textAlign(CENTER);
  textSize(100);
  text("Mole",300,120);
  text("English",300,220);
  text("Game",300,320);
  drawMole();
  if(moleY != 430*2) moleY -= 20;
  if(moleY == 430*2) {
    rectMode(CENTER);
    textSize(60);
    fill(0);
    rect(300,475,260,70,5);
    fill(255,255,0);
    textFont(m);
    text("START",300,495);
  if(mousePressed && ((mouseX>170) && (mouseX<430) && (mouseY>435) && (mouseY<515))) mode = INTRO;
  }
}


//단계 선택 화면 설정
public void doIntroMode(){
  
  background(105,63,38);
  textAlign(CENTER);
  rectMode(CENTER);
  textSize(60);
  fill(0);
  rect(300,160,260,70,5);
  rect(300,290,260,70,5);
  rect(300,420,260,70,5);
  fill(255,255,0);
  text("Level 1",300,182);
  text("Level 2",300,313);
  text("Level 3",300,444);

  //클릭시 단계별 게임 실행 and 게임 시작 시 제한시간을 level별로 60,120,180으로 설정한다.
    if (mousePressed) {    
        if ((mouseX>170) && (mouseX<430) && (mouseY>115) && (mouseY<185)) {
          mode=LEVEL1_PLAY; 
          startTimer = new Timer(60);
          if (file.isPlaying()) { 
            file.pause();
            file.cue(33.3);
            file.play();
          }
        }
        if ((mouseX>170) && (mouseX<430) && (mouseY>255) && (mouseY<330)) {
          mode=LEVEL2_PLAY;
          startTimer = new Timer(90);
          if (file.isPlaying()) {
            file.pause();
            file.cue(33.3);
            file.play();
          }
        }
        if ((mouseX>170) && (mouseX<430) && (mouseY>385) && (mouseY<455)) {
          mode=LEVEL3_PLAY;
          startTimer = new Timer(120);
          if (file.isPlaying()) {
            file.pause();
            file.cue(33.3);
            file.play();
          }  
        }
      }
}

//LEVEL1 시작
public void doLEVEL1Play(){ 
   level1();
}

//LEVEL2 시작
public void doLEVEL2Play(){
    level2();
}

//LEVEL1 시작
public void doLEVEL3Play(){  
    level3();
}

//게임 종료 설정
public void doGameOver(){

    fill(#08B3FF);
    stroke(#08B3FF);
    rect(0,r,600,330);
    r++;
    
    //두더지 그리기 설정 
    drawMole();
    if(r>0) {
     r=0;
     h=0;
     w=0;
     
     //게임 종료시 점수와 재시작 방법 표시
    text ("Game Over: You got "  + score, 150, 300);
    text ("Hit space to play again", 150, 400);
  
    //게임 초기 설정값(점수, 시간, 생명) 설정
    if(keyPressed && key==' ') {
        mode = INTRO;
        score = 0;
        life = 3;
        
        //게임 시작시 1번 문제로 시작
        modelevel1 = modelevel1_1;
        modelevel2 = modelevel2_1;
        modelevel3 = modelevel3_0;
        r=-330;
      
    }

}

}

//단계 클릭시 게임 시작 설정
public void mouseClicked() {
 if ((mouseX>170) && (mouseX<430) && (mouseY>175) && (mouseY<245)){
       doLEVEL1Play();
 }
 if ((mouseX>170) && (mouseX<430) && (mouseY>315) && (mouseY<385)){
       doLEVEL2Play();
 }
 if ((mouseX>170) && (mouseX<430) && (mouseY>315) && (mouseY<385)){
       doLEVEL3Play(); 
 }
}
