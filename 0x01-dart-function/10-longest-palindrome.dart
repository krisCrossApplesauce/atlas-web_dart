String longestPalindrome(String s) {
  String longest = '';
  String cPal = ''; // c stands for current, Pal is short for Palindrome
  String current = '';
  int? cMid = null; // c stands for current
  bool isPalindrome = false;

  for (var i = 0; i < s.length; i++) {
    if (!current.contains(s[i]) && cMid == null) {
      current += s[i];
//
    } else if (cMid == null) {
      if (s[i] == current[current.length - 1]) {
        cMid = current.length;
        current += s[i];
        cPal = current.substring(cMid - 1, current.length);
      } else if (s[i] == current[current.length - 2]) {
        cMid = current.length - 1;
        current += s[i];
        cPal = current.substring(cMid - 1, current.length);
      } else {
        cPal = '';
        current += s[i];
      }
//
    } else if (!current.contains(s[i]) || isPalindrome == true) {
      current = s[i];
//
    } else {
      if (s[i] == current[cMid - (current.length - cMid)]) {}
    }

    if (current.length > 3) {
      isPalindrome = true;
      for (var i = 0; i < (current.length / 2); i++) {
        if (current[i] != current[current.length - i - 1]) {
          isPalindrome = false;
        }
      }
    }

    if (current.length > 3 && current.length > longest.length && isPalindrome) {
      longest = current;
    }
  }

  if (longest.length == '') { longest = 'none'; }

  return longest;
}
