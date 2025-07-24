import 'dart:math';
import 'dart:io';

void main ()
{
  double a = 0, b = 0, c = 0;
  do
  {
    stdout.write("Nhập số a (a!=0): ");
    String? input = (stdin.readLineSync()!);
    if (input != null)
    {
      a = double.tryParse(input) ?? 0 ;
    }
  }
  while(a==0);

  stdout.write("Nhập số b: ");
  String? inputB = (stdin.readLineSync()!);
  if (inputB != null)
  {
    b = double.tryParse(inputB) ?? 0 ;
  }

  stdout.write("Nhập số c: ");
  String? inputC = (stdin.readLineSync()!);
  if (inputC != null)
  {
    c = double.tryParse(inputC) ?? 0 ;
  }

  double d = b * b - 4 * a * c;
  print("Phương trình: ${a}x^2 + ${b}x + ${c} = 0");
  if (d < 0)
  {
    print("PTVN");
  }
  else if (d == 0)
  {
    print("PT 1 nghiem kep: ${(-b/(2*a)).toStringAsFixed(2)}");
  }
  else 
  {
    double x1 = (-b-sqrt(d))/(2*a);
    double x2 = (-b+sqrt(d))/(2*a);
    print("PT 2 nghiem phan biet: x1 = ${(x1).toStringAsFixed(2)} || x2 = ${(x2).toStringAsFixed(2)}");
  }
}