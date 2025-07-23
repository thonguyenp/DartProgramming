import 'dart:io';

void main ()
{
  //nhap ten nguoi dung
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;  //! la dam bao rang se doc vao gia tri o dong nay

  //nhap tuoi nguoi dung
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);  //! la dam bao rang se doc vao gia tri o dong nay

  print("Xin chao $name, tuoi cua ban la: $age");
}