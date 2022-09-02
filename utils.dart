import 'dart:io';

int readInt(String message) {
  print(message);
  return int.parse(stdin.readLineSync()!);
}

double readDouble(String message) {
  print(message);
  return double.parse(stdin.readLineSync()!);
}

String readString(String message) {
  print(message);
  return stdin.readLineSync()!;
}
