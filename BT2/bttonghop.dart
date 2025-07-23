void main ()
{
  int toan = 8; 
  int van = 7; 
  int tong = 0; 

  tong += toan;
  tong += van;

  double diemTB = tong / 2;

  String? kqua;
  kqua ??= 'Chua xet';

  if (diemTB >=5)
  {
    print("Dat");
  }

  print("Diem TB: $diemTB");
  print("Ket qua: $kqua");

}