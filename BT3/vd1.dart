void main ()
{
  // expr1 ?? expr2;
  // Nếu expr1 ko null, trả về giá trị của nó, ngược lại trả về expr2
  // var kiemTra = (100 % 2 == 0) ? "100 là số chẵn" : "100 là số lẻ" ;
  // print(kiemTra);
  
  var x = 100;
  var y = x ?? 50;
  print(y);

  int? z;
  y = z ?? 30;
  print(y); 
}