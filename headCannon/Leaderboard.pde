void leaderboard()
{
  //load leaderboard text file
  int i = 0;
  //nicknames = new String[5];
  //scores = new int[5];
  ArrayList<String> nicknames = new ArrayList<String>();
  IntList scores = new IntList();
  leaders = loadStrings("leaderboard.txt");
  //puts names and scores in individual arrays
  for (String leader : leaders)
  {
    String[] nameScore = split(leader, ",");
    nicknames.add(nameScore[0]);
    scores.append(int(nameScore[1]));
    i++;
  }



  //title
  textAlign(CENTER, TOP);
  textSize(width/8);
  fill(#FF721A);
  text("Leaderboard", width/2, height/100);

  //Leaderboard content box
  noStroke();
  fill(#FFD1F9);
  rect(width/20, height/6, 9 * width/10, 9 * height/12, 50);

  //Leaderboard retrieval and display top 5
  leaderboardText = "1. " + "\n" + "2. " + "\n" + "3. " + "\n" + "4. " + "\n" + "5. ";
  nicknameText = nicknames.get(0) + "\n" + nicknames.get(1) + "\n" + nicknames.get(2) + "\n" + nicknames.get(3) + "\n" + nicknames.get(4);
  scoreText = scores.get(0) + "\n" + scores.get(1) + "\n" + scores.get(2) + "\n" + scores.get(3) + "\n" + scores.get(4);

  textAlign(CENTER, CENTER);
  fill(0);
  textSize(width/17);
  text("Nickname", 11 * width/32, height/5);
  text("Score", 7 * width/10, height/5);
  fill(#0063FF);
  textSize(width/50);
  text("-click anywhere to exit-", width/2, 7 * height/8);
  textSize(width/13);
  textAlign(LEFT, CENTER);
  text(leaderboardText, width/10, height/5, width/10, 2 * height/3);
  text(nicknameText, width/5, height/5, 9 * width/16, 2 * height/3);
  text(scoreText, 5 * width/8, height/5, 9 * width/10, 2 * height/3);
}
