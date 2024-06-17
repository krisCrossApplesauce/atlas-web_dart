void outer(String name, String id) {
  final splitName = name.split(' ');
  String inner() {
    return 'Hello Agent ' + splitName[1][0] + '.' + splitName[0] + ' your id is ' + id;
  }
  print(inner());
}
