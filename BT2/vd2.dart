void main ()
{
  // print(2 == 3);
  // print(2 != 3);
  // print(2 > 3);
  Object obj = "Hello";

  if (obj is String)
  {
    print("Dung");
  }
  if (obj is! int)  //phai ! o phia sau toan tu is
  {
    print("obj ko la int");
  }

  // Ep kieu
  String str = obj as String;
  print(str.toUpperCase());
}