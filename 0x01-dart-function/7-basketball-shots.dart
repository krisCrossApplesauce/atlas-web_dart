int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int Apoints = teamA['Free throws']! + (teamA['2 pointers']! * 2) + (teamA['3 pointers']! * 3);
  int Bpoints = teamB['Free throws']! + (teamB['2 pointers']! * 2) + (teamB['3 pointers']! * 3);
  if (Apoints > Bpoints) { return 1; }
  if (Apoints < Bpoints) { return 2; }
  return 0;
}
