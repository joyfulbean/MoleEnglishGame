class Timer
{
  float Time;
  
  Timer(float set) { // Counstuctor when you create a new Timer
    Time = set;
  }
  int getTime() { // return the current time
    return(int(Time));
  }
  void setTime(float set) { // set the timer to whatever you put as you temp varable ie. 10, 60 seconds
    Time = set;
  }
  void countDown() { // update the timer by counting down. this need to be called within void draw() to work.
    Time -= 1/frameRate;
    if(Time <= 0 ) mode = GAME_OVER; // 시간이 0이 되면 게임 종료
  }
}
