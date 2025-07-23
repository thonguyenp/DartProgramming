void main ()
{
  // ??=: gan gtri cho bien neu bien dang null. Neu ko null thi ko gan gtri
  int? b;
  b ??= 5;
  print('b = $b');

  b ??= 10; //b ko null, ko gan gtri
  print('b = $b');
}