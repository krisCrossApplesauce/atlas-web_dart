void main(List<String> args) {
  String output = int.parse(args[0]) >= 80 ? 'You Passed' : 'Unhandled exception: Failed assertion: The score must be bigger or equal to 80';
  print(output);
}
