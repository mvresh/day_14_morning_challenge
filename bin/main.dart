// Challenge 1
// Write test cases for the next two challenges and let them fail

// Challenge 2
// Create a function that takes a number and returns its multiplicative persistence,
// which is the number of times you must multiply the digits in num until you reach a single digit.
// multiplicative(39) ➞ 3
/// Because 3 * 9 = 27, 2 * 7 = 14, 1 * 4 = 4 and 4 has only one digit.
int multiplicative(int number) {
  int count  = 0;

  while(number>10){
    //List stringNumberList = number.toString().split("");
    //Had to create new numberList because forEach doesnt allow for the modification of the looping list
    //elements are passed-as-reference instead of pass-by-value
    //its the same with most other languages
    //collections are passed as references and the arrays and lists are immutable

    List<int>numberList = [];
    number.toString().split("").forEach((stringNumber)=>numberList.add(int.parse(stringNumber)));
    number = numberList.reduce((value,element)=> value*element);
    count ++;
  }

  return count;
}

// Challenge 3
// Mexican Wave Simulator
/// The wave (known as a Mexican wave in the English-speaking world outside North
/// America) is an example of metachronal rhythm achieved in a packed stadium when successive groups of spectators briefly stand, yell, and raise their arms.
//  https://s3.amazonaws.com/edabit-images/mex.gif
//  Create a function that takes a string and turns it into a Mexican Wave.
//  Examples
//  wave("edabit") ➞ ["Edabit", "eDabit", "edAbit", "edaBit", "edabIt", "edabiT"]

//  wave("just do it") ➞ ["Just do it", "jUst do it", "juSt do it", "jusT do it", "just Do it", "just dO it", "just do It", "just do iT"]

//  wave(" ") ➞ []
List<String> wave(String word) {

  //instead of writing a different func(){}, if I implemented it in line 51 directly ,I'm getting empty list
  //dont know why
  List<String> newList = [];
  int index = 0;
  func(letter){
    if(letter != " ") {
      newList.add(word.substring(0, index) + letter.toUpperCase() + word.substring(index + 1));
    };
    index++;
  }
  word.split("").forEach((letter)=>func(letter));
  return newList;
}

main() {
  String word = "asdfgh";
  print(word.substring(0,1));
  print(multiplicative(39));
  print(wave("edabit"));
  print(wave("just do it"));


}
