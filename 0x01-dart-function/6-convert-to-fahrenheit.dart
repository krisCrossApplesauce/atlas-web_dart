List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((Ctemp) => double.parse(((Ctemp * 9 / 5) + 32).toStringAsFixed(2))).toList();
}
