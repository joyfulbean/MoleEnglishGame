// 2단계 문제 10개

void level2() {
  
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
    if (modelevel2 == modelevel2_1){
    delay(20);
    number2_1();
  } else if (modelevel2 == modelevel2_2){
    delay(20);
    number2_2();
  } else if (modelevel2 == modelevel2_3){
    delay(20);
    number2_3();
  } else if (modelevel2 == modelevel2_4){
    delay(20);
    number2_4();
  } else if (modelevel2 == modelevel2_5){
    delay(20);
    number2_5();
  } else if (modelevel2 == modelevel2_6){
    delay(20);
    number2_6();   
  } else if (modelevel2 == modelevel2_7){
    delay(20);
    number2_7();
  } else if (modelevel2 == modelevel2_8){
    delay(20);
    number2_8();
  } else if (modelevel2 == modelevel2_9){
    delay(20);
    number2_9();
  } else if (modelevel2 == modelevel2_10){
    delay(20);
    number2_10();
  }
  
  
  //시간, 점수, 생명 표시
  textAlign(CENTER);
  textSize(20);
  text("SCORE :", 510, 30);
  text(score, 577, 30);
  text("TIME :", 520, 60);
  text(startTimer.getTime(), 577, 60);
  text("LIFE :", 522, 90);
  text(life, 583, 90);
  
  //시간이나 생명이 0이 되면 게임 종료
  if(life <= 0) mode = GAME_OVER;
}

//문제1 설정
void number2_1() {
  textFont(b);
  text("Q1.", 50,50);
  textFont(m);
  fill(255);
  rectMode(CENTER);
  textSize(40);
  text("confirm",150,305,48*4,48);
  text("conform",450,305,48*4,48);
  textSize(30);
  text("when can you ______ the order?",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_2;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_2;
  }
}

//문제2 설정
void number2_2() {
  textFont(b);
  text("Q2.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("accepted",150,305,48*4,48);
  text("recieved",450,305,48*4,48);
  textSize(30);
  text("She _____ a letter.",300,150);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_3;
    else if ((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_3;
  }
}

//문제3 설정
void number2_3() {
  textFont(b);
  text("Q3.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("wish",150,305,48*4,48);
  text("hope",450,305,48*4,48);
  textSize(30);
  text("I ____ I was taller than him.",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_4;
    else if ((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) modelevel2 = modelevel2_4;
  }
}

//문제4 설정
void number2_4() {
  textFont(b);
  text("Q4.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(25);
  text("convenient",150,310,48*4,48);
  text("comfortable",450,310,48*4,48);
  textSize(25);
  text("It is very ______ to pay by credit card.",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_5;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_5;
  }
}

//문제5 설정
void number2_5() {
  textFont(b);
  text("Q5.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("bare",150,305,48*4,48);
  text("naked",450,305,48*4,48);
  textSize(25);
  text("She likes to walk around in ____ feet.",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_6;   
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_6;
  }
}

//문제6 설정
void number2_6() {
  textFont(b);
  text("Q6.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("say",150,305,48*4,48);
  text("tell",450,305,48*4,48);
  textSize(30);  
  text("What did she ___ to you?",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_7;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_7;
  }
}

//문제7 설정
void number2_7() {
  textFont(b);
  text("Q7.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("listen",150,305,48*4,48);
  text("hear",450,305,48*4,48);
  textSize(30);  
  text("Are you ____ing to me?",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_8;  
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_8;
  }
}

//문제8 설정
void number2_8() {
  textFont(b);
  text("Q8.", 50,50);
  textFont(m);
  rectMode(CENTER);
  textSize(25);
  text("promise",150,310,48*4,48);
  text("appointment",450,310,48*4,48);
  textSize(30);  
  text("He didn't keep his _____. ",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_9;   
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_9;
  }
}

//문제9 설정
void number2_9() {
  textFont(b);
  text("Q9.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("problem",150,305,48*4,48);
  text("trouble",450,305,48*4,48);
  textSize(30);  
  text("I have a _____ with my computer.",300,150);
  
    //O,X 판별
  OX();
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_10; 
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel2 = modelevel2_10;
  }
}

//문제10 설정
void number2_10() {
  textFont(b);
  text("Q10.", 50,50);
  textFont(m);
  rectMode(CENTER);
  text("nice",150,310,48*4,48);
  text("kind",450,310,48*4,48);
  textSize(30);  
  text("She was so ____ as to help me.",300,150);
  
    //O,X 판별
  XO();
  if(mousePressed){
    if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  mode = GAME_OVER;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  mode = GAME_OVER; 
  }
}
