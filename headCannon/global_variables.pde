//sound related
import processing.sound.*;
SoundFile bang;
SoundFile allyDeath;
SoundFile hitTarget;
SoundFile allySaved;

//game related 
int score;
int finalScore;
boolean gameOver;
int gameTime = 30;
int faceTargetRatio = 3;
int startTime;
int timeLeft;
boolean targetUp, allyUp, enemyUp;
boolean shotFired;
PVector tPos;
int cSize = width;
boolean onTarget;
int choice = 0;
int pointScale = 10;
int band;
//where are the good and bad targets at any time
float tarX, tarY, emoX, emoY;
//Cannon head logo
PImage logo;
PVector emojiPos;
//is their score good enough for the leaderboard?
boolean topScore;
String nameEntry;


//menuPageDisplay
boolean inGame;
boolean onLeaderboard;
boolean onInstructions;
boolean over1;
boolean over2;
boolean over3;



//instruction text
String instructionText;




//leaderboard text
String leaderboardText;
String nicknameText;
String scoreText;
String[] leaders;
IntList topScores;



//mouse related
boolean mouseOnSketch;
