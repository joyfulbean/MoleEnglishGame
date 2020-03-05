// 3단계 문제 10개

void level3() {
  
  moleX = mouseX*2;  // 두더지 x좌표 이동
  moleY = mouseY*2;  // 두더지 y좌표 이동
    
  //문제 배경화면 설정  
  background(105,63,38);
  
  image(rock,550,h);   // rock
  image(ston1,130,w);  // stone
  image(ston2,80,w+70);  
  image(bone,380,w-400); // bone
   h+=1.5; 
   w+=1.5;
  if(h==1200) h=-184*3;
  if(w==1400) w=-250;
    drawMole();
  
  fill(255);
  textSize(40);

  //문제별 시작 설정
    if (modelevel3 == modelevel3_0){
    delay(20);
    number3_0(); 
  } else if (modelevel3 == modelevel3_1){
    delay(20);
    number3_1(); 
  } else if (modelevel3 == modelevel3_2){
    delay(20);
    number3_2();
  } else if (modelevel3 == modelevel3_3){
    delay(20);
    number3_3();
  } else if (modelevel3 == modelevel3_4){
    delay(20);
    number3_4();
  } else if (modelevel3 == modelevel3_5){
    delay(20);
    number3_5();
  } else if (modelevel3 == modelevel3_6){
    delay(20);
    number3_6();   
  } else if (modelevel3 == modelevel3_7){
    delay(20);
    number3_7();
  } else if (modelevel3 == modelevel3_8){
    delay(20);
    number3_8();
  } else if (modelevel3 == modelevel3_9){
    delay(20);
    number3_9();
  } else if (modelevel3 == modelevel3_10){
    delay(20);
    number3_10();
  } else if (modelevel3 == modelevel3_11){
    number3_11();
  }

  
  //점수, 시간, 생명 표시 설정
  textAlign(CENTER);
  textSize(20);
  text("SCORE :", 510, 30);
  text(score, 577, 30);
  text("TIME :", 520, 60);
  text(startTimer.getTime(), 577, 60);
  text("LIFE :", 522, 90);
  text(life, 583, 90);
  
  // 생명이 0이 되면 게임 종료
  if(life <= 0) modelevel3 = modelevel3_11;
  
}

//문제 1로 넘어갈 때 중복 mouse 인식을 방지하기 위해 만든 설정창
void number3_0() {
  delay(200);
  if(mousePressed) modelevel3 = modelevel3_1;   
}

//문제1 설정
void number3_1() {
  textFont(b);
  text("Q1.", 50,50);
  textFont(m);
  fill(255);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(20);
  text("Although Mr.Anderson has discussed the vacation time in his employment contract, he ____ needs to talk about the benefit package.",300,350,600,400);
  textSize(30);
  textAlign(LEFT);
  text("A) Besides",200,350);
  text("B) Also",200,400);
  text("C) Either",200,450);
  text("D) Too",200,500);
  
    //O,X 판별
  OXXX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) modelevel3 = modelevel3_2; 
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_2;
  }
}

//문제2 설정
void number3_2() {
  textFont(b);
  text("Q2.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textAlign(LEFT);
  PImage problem1;
  problem1 = loadImage("problem1.jpeg");
  image(problem1,300,150,300,250);
  textSize(30);
  text("A) More",200,350);
  text("B) Sure",200,400);
  text("C) none of this",200,450);
  text("D) Both A and B",200,500);
  
    //O,X 판별
  OXXX(); 
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) modelevel3 = modelevel3_3;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_3;
  }
}

//문제3 설정
void number3_3() {
  textFont(b);
  text("Q3.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textAlign(LEFT);
  PImage problem2;
  problem2 = loadImage("problem2.jpeg");
  image(problem2,300,150,300,250);
  textSize(30);
  text("A) First Prize",200,350);
  text("B) An addition",200,400);
  text("C) none of this",200,450);
  text("D) Both A and B",200,500);
  
    //O,X 판별
  OXXX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) modelevel3 = modelevel3_4;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_4;
  }
}

//문제4 설정
void number3_4() {
  textFont(b);
  text("Q4.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textAlign(LEFT);
  PImage problem3;
  problem3 = loadImage("problem3.jpeg");
  image(problem3,300,150,300,250);
  textSize(30);
  text("A) Cast",200,350);
  text("B) Ears",200,400);
  text("C) none of this",200,450);
  text("D) Both A and B",200,500);
  
    //O,X 판별
  OXXX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) modelevel3 = modelevel3_5;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_5;
  }
}

//문제5 설정
void number3_5() {
  textFont(b);
  text("Q5.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textAlign(LEFT);
  PImage problem4;
  problem4 = loadImage("problem4.jpeg");
  image(problem4,300,150,300,250);
  textSize(30);
  text("A) Money",200,350);
  text("B) Alone",200,400);
  text("C) none of this",200,450);
  text("D) Both A and B",200,500);
  
    //O,X 판별
  OXXX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) modelevel3 = modelevel3_6;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_6;
  }
}

//문제6 설정
void number3_6() {
  textFont(b);
  text("Q6.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textAlign(LEFT);
  PImage problem5;
  problem5 = loadImage("probelm5.jpeg");
  image(problem5,300,150,300,250);
  textSize(30);
  text("A) Spent",200,350);
  text("B) Courses",200,400);
  text("C) none of this",200,450);
  text("D) Both A and B",200,500);
  
    //O,X 판별
  XOXX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)) modelevel3 = modelevel3_7;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_7;
  }
}

//문제7 설정
void number3_7() {
  textFont(b);
  text("Q7.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(20);
  textAlign(CENTER);
  text("With the strategic placement of seismometers, geophysicists can trace the path of these earthquakes as they_____ move along with molten rock and gas toward the surface.",300,350,600,400);
  text("<What does the word they refer to?>",300,300);
  textSize(30);
  textAlign(LEFT);
  text("A) rock formations",200,350);
  text("B) seismometers",200,400);
  text("C) geophysicists",200,450);
  text("D) earthquakes",200,500);
  
    //O,X 판별
  XXXO();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) modelevel3 = modelevel3_8;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)))  modelevel3 = modelevel3_8;
  }
}

//문제8 설정
void number3_8() {
  textFont(b);
  text("Q8.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(20);
  textAlign(CENTER);
  text("The phenomenon_____ is caused by the ascension of magma and volcanic gas through fissures in the Earth crust, as pressure variances disturb underground rock formations, interfering with existing stress distributions. ",300,350,600,400);
  text("<What does the word phenomenon mean in this context?>",300,300);
  textSize(30);
  textAlign(LEFT);
  text("A) application",200,350);
  text("B) dissemination",200,400);
  text("C) emergency",200,450);
  text("D) occurrence",200,500);
  
    //O,X 판별
  XXXO();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) modelevel3 = modelevel3_9;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2))||((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2))||((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)))  modelevel3 = modelevel3_9;
  }
}

//문제9 설정
void number3_9() {
  textFont(b);
  text("Q9.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(20);
  textAlign(CENTER);
  text("Comprised of documents that defined the very architecture of legal systems and spell out the rules according to which the exercise of governmental power is carried out, constitutions ultimately reflect the political foundations of their_____ nations.  ",300,350,600,400);
  text("<What does the word their refer to?>",300,300);
  textSize(30);
  textAlign(LEFT);
  text("A) documents",200,350);
  text("B) systems",200,400);
  text("C) constitutions",200,450);
  text("D) rules",200,500);
  
    //O,X 판별
  XXOX();
  if(mousePressed){
   if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) modelevel3 = modelevel3_10;   
   else if (((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2))||((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)))  modelevel3 = modelevel3_10;
  }
}

//문제10 설정
void number3_10() {
  textFont(b);
  text("Q10.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(20);
  textAlign(CENTER);
  text("Gatherings of sketch artists would draw intricate chalk illustrations on the sidewalks, only to have the rain wash them _____ away, and shops found their windows covered by Dada works displaying images of banal or mundane objects.  ",300,350,600,400);
  text("<What does the word them refer to?>",300,300);
  textSize(30);
  textAlign(LEFT);
  text("A) Gatherings",200,350);
  text("B) Artists",200,400);
  text("C) Illustrations",200,450);
  text("D) sidewalks",200,500);
  
    //O,X 판별
  XXOX();
  if(mousePressed){
    if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) modelevel3 = modelevel3_11;   
    else if (((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2))||((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2))||((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)))  modelevel3 = modelevel3_11;
  }
}

//하늘이 내려왔는데 문제가 안 가려지는 것을 해결하도록 만드는 코드
void number3_11() {
  textSize(15);
  text("One more click!", 300,300);
  if(mousePressed)  mode = GAME_OVER;   
}
