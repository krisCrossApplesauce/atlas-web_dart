String longestPalindrome(String s) {
  String longest = '';
  String cPal = ''; // c stands for current, Pal is short for Palindrome
  Map middles = {'oddMiddles': [], 'evenMiddles': []};
  bool isPal = true;
  int m;

  for (var i = 2; i < s.length; i++) {
    if (s[i] == s[i - 1]) {
      middles['evenMiddles'].add(i);
    }
    if (s[i] == s[i - 2]) {
      middles['oddMiddles'].add(i - 1);
    }
  }

  for (var ii = 0; ii < middles['oddMiddles'].length; ii++) {
    m = middles['oddMiddles'][ii];
    isPal = true;
    cPal = s[m];
    for (var i = 1; isPal == true && i <= m && i < s.length - m; i++) {
      cPal = s[m - i] + cPal + s[m + i];
      if (cPal[0] != cPal[cPal.length - 1]) {
        isPal = false;
        cPal = '';
      }
      if (cPal.length > longest.length) {
        longest = cPal;
      }
    }
  }

  for (var ii = 0; ii < middles['evenMiddles'].length; ii++) {
    m = middles['evenMiddles'][ii];
    isPal = true;
    cPal = '';
    for (var i = 0; isPal == true && i < m && i < s.length - m; i++) {
      cPal = s[m - i - 1] + cPal + s[m + i];
      if (cPal[0] != cPal[cPal.length - 1]) {
        isPal = false;
        cPal = '';
      }
      if (cPal.length > longest.length) {
        longest = cPal;
      }
    }
  }

  if (longest.length < 3) { longest = 'none'; }

  return longest;
}
