void main ()
{
  int x = 100;
  double y = 100.5;

  //num: co the chua ca gtri int va double
  num z = 10;
  num t = 10.6;

  //chuyen chuoi sang so nguyen
  var one = int.parse("1");
  print(one == 1 ? "True" : "False");

  //Chuoi -> so nguyen
  String oneAsString = 1.toString();
  print(oneAsString);

  // chuoi -> so thuc
  String piAsString= 3.14159.toStringAsFixed(2);
  print(piAsString);
}