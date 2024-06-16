void main(List<String> args) {
  print(${args[3] >= 80 ? 'You passed' : 'Uncaught Error: Assertion failed: The score must be bigger or equal to 80'});
}