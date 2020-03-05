// 1단계 문제 10개

void level1() {
  
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
  textSize(48);

  //문제별 시작 설정
    if (modelevel1 == modelevel1_1){
    number1_1();
  } else if (modelevel1 == modelevel1_2){
    number1_2();
  } else if (modelevel1 == modelevel1_3){
    number1_3();
  } else if (modelevel1 == modelevel1_4){
    number1_4();
  } else if (modelevel1 == modelevel1_5){
    number1_5();
  } else if (modelevel1 == modelevel1_6){
    number1_6();   
  } else if (modelevel1 == modelevel1_7){
    number1_7();
  } else if (modelevel1 == modelevel1_8){
    number1_8();
  } else if (modelevel1 == modelevel1_9){
    number1_9();
  } else if (modelevel1 == modelevel1_10){
    number1_10();
  }

  
  //게임 점수, 생명, 시간 표시
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
void number1_1() {  
  textFont(b);
  text("Q1.", 50,50);
  textFont(m);
  PImage rose;
  rectMode(CENTER);
  rose = loadImage("rose.jpeg");
  image(rose,300,100,200,150);
  text("rose",150,300,48*4,48);
  text("rise",450,300,48*4,48);
  
    //O,X 판별
  OX(); 
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_2;  
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_2;
  }
  
}

//문제2 설정
void number1_2() {
  textFont(b);
  text("Q2.", 50,50);
  textFont(m);
  PImage sea;
  rectMode(CENTER);
  sea = loadImage("sea.jpeg");
  image(sea,300,100,200,150);
  text("see",150,300,48*4,48);
  text("sea",450,300,48*4,48);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
    if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_3;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_3;  
  }
}

//문제3 설정
void number1_3() {
  textFont(b);
  text("Q3.", 50,50);
  textFont(m);
  PImage brake;
  rectMode(CENTER);
  brake = loadImage("brake.jpeg");
  image(brake,300,100,200,150);
  text("brake",150,300,48*4,48);
  text("break",450,300,48*4,48);
  
    //O,X 판별
  OX(); 
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_4;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_4;
  }
}

//문제4 설정
void number1_4() {
  textFont(b);
  text("Q4.", 50,50);
  textFont(m);
  PImage mop;
  rectMode(CENTER);
  mop = loadImage("mop.jpeg");
  image(mop,300,100,200,150);
  text("mop",150,300,48*4,48);
  text("mob",450,300,48*4,48);
  
    //O,X 판별
  OX(); 
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_5;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_5;
  }
}

//문제5 설정
void number1_5() {
  textFont(b);
  text("Q5.", 50,50);
  textFont(m);
  PImage meat;
  rectMode(CENTER);
  meat = loadImage("meat.jpeg");
  image(meat,300,100,200,150);
  text("meet",150,300,48*4,48);
  text("meat",450,300,48*4,48);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
   if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_6;
   else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_6;  
  }
}

//문제6 설정
void number1_6() {
  textFont(b);
  text("Q6.", 50,50);
  textFont(m);
  PImage bride;
  rectMode(CENTER);
  bride = loadImage("bride.jpeg");
  image(bride,300,100,200,150);
  text("bribe",150,300,48*4,48);
  text("bride",450,300,48*4,48);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
    if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_7;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_7;  
  }
}

//문제7 설정
void number1_7() {
  textSize(48);
  textFont(b);
  text("Q7.", 50,50);
  textFont(m);
  textSize(40);
  PImage dessert;
  rectMode(CENTER);
  dessert = loadImage("dessert.jpeg");
  image(dessert,300,100,200,150);
  text("desert",150,305,48*4,48);
  text("dessert",450,305,48*4,48);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
    if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_8;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_8;  
  }
}

//문제8 설정
void number1_8() {
  textSize(48);
  textFont(b);
  text("Q8.", 50,50);
  textFont(m);
  textSize(30);
  PImage compliment;
  rectMode(CENTER);
  compliment = loadImage("compliment.jpeg");
  image(compliment,300,100,200,150);
  text("compliment",150,310,48*4,48);
  text("complement",450,310,48*4,48);
  
    //O,X 판별
  OX(); 
  if(mousePressed){
    if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_9;
    else if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_9;
  }
}

//문제9 설정
void number1_9() {
  textSize(48);
  textFont(b);
  text("Q9.", 50,50);
  textFont(m);
  PImage purse;
  rectMode(CENTER);
  purse = loadImage("purse.jpeg");
  image(purse,300,100,200,150);
  text("pulse",150,300,48*4,48);
  text("purse",450,300,48*4,48);
  
    //O,X 판별
  XO();
  if(mousePressed){
   if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_10;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  modelevel1 = modelevel1_10;
  } 
}

//문제10 설정
void number1_10() {
  textSize(48);
  textFont(b);
  text("Q10.", 50,50);
  textFont(m); 
  textSize(30);
  PImage stationery;
  rectMode(CENTER);
  stationery = loadImage("stationery.jpeg");
  image(stationery,300,100,200,150);

  text("stationary",150,310,48*4,48);
  text("stationery",450,310,48*4,48);
  
    //O,X 판별
  XO(); 
  if(mousePressed){
    if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  mode = GAME_OVER;
    else if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2))  mode = GAME_OVER;
  }
}
