public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (noSpaces(noCapitals(onlyLetters(word))).equals(reverse(noSpaces(noCapitals(onlyLetters(word)))))) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length()-1 ; i >= 0; i--) {
      sNew += str.substring(i,i+1);
    }
    return sNew;
}
public String noSpaces(String sWord){
  String sNew = new String();
  for(int i = 0; i<sWord.length(); i++) {
    if (sWord.substring(i,i+1).equals(" ")) {
      continue;
    }
    sNew += sWord.substring(i,i+1);
  }
  return sNew;
}
public String onlyLetters(String sString){
  String sNew = new String();
  for(int i = 0; i < sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      sNew += sString.substring(i,i+1);
    }
  }
  return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
