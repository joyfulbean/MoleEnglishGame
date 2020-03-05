
void OX () {          //O,X 판별
  if (mousePressed){
    //정답 클릭시 O 출력
  if((moleX > (150-48)*2) && (moleX < (150+62)*2) && (moleY > (300-15)*2) && (moleY < (300+15)*2)) {
    Osound.jump(0.1);
    noFill();
    strokeWeight(10);
    stroke(0,0,255,240);
    ellipse(150,300,50,50);
    delay(200);
    //정답 클릭시 점수 +10
    score = score + 10;
  }
  //오답 클릭시 X 출력
  if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) {
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    noFill();
    strokeWeight(10);
    stroke(255,0,0,240);
    line(425,275,475,325);
    line(475,275,425,325);
    delay(200);
    //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
 }
}

void XO () {          //X,O 판별
  if (mousePressed) {
    //정답 클릭시 X 출력
  if((moleX>(150-48)*2) && (moleX<(150+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) {
   Xsound.jump(2.7);
   Xsound.rate(1.5);
   noFill();
   strokeWeight(10);
   stroke(255,0,0,240);
   line(125,275,175,325);
   line(175,275,125,325);
   delay(200);
   //오답 클릭시 생명 -1
   if(life > 0) life = life - 1;
  }
  //정답 클릭시 O 출력
  if((moleX>(450-48)*2) && (moleX<(450+62)*2) && (moleY>(300-15)*2) && (moleY<(300+15)*2)) {
    Osound.jump(0.1);
    noFill();
    strokeWeight(10);
    stroke(0,0,255,240);
    ellipse(450,300,50,50);
    delay(200);
    //정답 클릭시 점수 +10
    score = score + 10;
  }
 }
}


void OXXX () { // third_ A is correct.
 strokeWeight(5);
 noFill();
 if (mousePressed){
   //정답 클릭시 O 출력
  if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) {
    Osound.jump(0.1);
    stroke(0,0,255,240);
    ellipse(213,340,40,40);
    Osound.jump(0.1);
    delay(200);
    //정답 클릭시 점수 +10
    score = score + 10;
  }
  //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)) {
    stroke(255,0,0,240);
    line(197,370,227,400);
    line(227,370,197,400);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
    //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
  //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) {
    stroke(255,0,0,240);
    line(197,420,227,450);
    line(227,420,197,450);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
    //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
  //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) {
    stroke(255,0,0,240);
    line(197,470,227,500);
    line(227,470,197,500);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
    //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
   }
  }
 }
 
void XOXX () { // third_ B is correct.
 strokeWeight(5);
 noFill();
 if (mousePressed){
   //오답 클릭시 X 출력
   if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) {
     stroke(255,0,0,240);
    line(197,320,227,350);
    line(227,320,197,350);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
    //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
  //정답  클릭시 O 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)) {
    stroke(0,0,255,240);
    ellipse(213,390,40,40);
    Osound.jump(0.1);
    delay(200);
    //정답 클릭시 점수 +10
    score = score + 10;
  }
  //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) {
    stroke(255,0,0,240);
    line(197,420,227,450);
    line(227,420,197,450);
    Xsound.jump(2.7);
    Xsound.rate(1.5);    
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
    //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) {
    stroke(255,0,0,240);
    line(197,470,227,500);
    line(227,470,197,500);
    Xsound.jump(2.7);
    Xsound.rate(1.5);    
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
   }
  }
 }
 
void XXOX () { // third_ C is correct.
 strokeWeight(5);
 noFill();
 if (mousePressed){
     //오답 클릭시 X 출력
  if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) {
    stroke(255,0,0,240);
    line(197,320,227,350);
    line(227,320,197,350);
    Xsound.jump(2.7);
    Xsound.rate(1.5);    
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
    }
    //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)) {
    stroke(255,0,0,240);
    line(197,370,227,400);
    line(227,370,197,400);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
    //정답 클릭시 O 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) {
    stroke(0,0,255,240);
    ellipse(213,440,40,40);
    Osound.jump(0.1);    
    delay(200);
     //정답 클릭시 점수 +10
    score = score + 10;
  }
    //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) {
    stroke(255,0,0,240);
    line(197,470,227,500);
    line(227,470,197,500);
    Xsound.jump(2.7);
    Xsound.rate(1.5);    
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
 }
}
 
 
 
 void XXXO () { // third_ D is correct.
 strokeWeight(5);
 noFill();
 if (mousePressed){
     //오답 클릭시 X 출력
   if((moleX>200*2) && (moleX<400*2) && (moleY>315*2) && (moleY<360*2)) {
    stroke(255,0,0,240);
    line(197,320,227,350);
    line(227,320,197,350);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
    //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>360*2) && (moleY<405*2)) {
    stroke(255,0,0,240);
    line(197,370,227,400);
    line(227,370,197,400);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
    //오답 클릭시 X 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>405*2) && (moleY<450*2)) {
    stroke(255,0,0,240);
    line(197,420,227,450);
    line(227,420,197,450);
    Xsound.jump(2.7);
    Xsound.rate(1.5);
    delay(200);
      //오답 클릭시 생명 -1
    if(life > 0) life = life - 1;
  }
    //정답 클릭시 O 출력
  else if((moleX>200*2) && (moleX<400*2) && (moleY>450*2) && (moleY<495*2)) {
    stroke(0,0,255,240);
    ellipse(213,490,40,40);
    Osound.jump(0.1);
    delay(200);
    //정답 클릭시 점수 +10
    score = score + 10;
    }
   }
  }
