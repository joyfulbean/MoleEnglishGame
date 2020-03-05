void drawMole() {
 pushMatrix();
 scale(0.5);
 rectMode(CORNER);
 smooth();
 strokeWeight(1.5);
 stroke(0);
 
 //두더지 전체 몸 그리기
 fill(254, 217, 61);
 ellipse(moleX-30, moleY+75, 30, 50); //다리
 ellipse(moleX+30, moleY+75, 30, 50); 
 ellipse(moleX-60, moleY, 50, 30); //팔
 ellipse(moleX+60, moleY, 50, 30); 
 ellipse(moleX-20, moleY-75, 20, 20); //귀
 ellipse(moleX+20, moleY-75, 20, 20); 
 ellipse(moleX, moleY, 100, 160); // 몸
 
 //코 그리기
 fill(255, 255, 255);
 ellipse(moleX, moleY-25, 40, 30);
 
 //배 그리기
 fill(255, 255, 255);
 ellipse(moleX, moleY+35, 56, 66);
 fill(0, 0, 0);
 line(moleX,moleY+50,moleX+5,moleY+55); //배꼽
 line(moleX+5,moleY+50,moleX,moleY+55);
 
 ellipse(moleX-20, moleY-45, 10, 10); // 눈
 ellipse(moleX+20, moleY-45, 10, 10);
 
 ellipse(moleX, moleY-30, 20, 10); // 코
 
 fill(255);
 rect(moleX, moleY-20,7,10); //이빨
 rect(moleX-7, moleY-20,7,10);
 line(moleX-15,moleY-30,moleX-30,moleY-35);
 line(moleX-15,moleY-25,moleX-30,moleY-20);
 line(moleX+15,moleY-30,moleX+30,moleY-35);
 line(moleX+15,moleY-25,moleX+30,moleY-20); 
 popMatrix();
} 
