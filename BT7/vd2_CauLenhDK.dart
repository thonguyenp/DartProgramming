void main ()
{
  int x = 100;
  bool isNum = false;
  bool isEven = true;

  if (!(x is int))
  {
    print("Đây không phải là số");
  }
  else if (x % 2 == 0)
  {
    print("Đây là số chẵn");
  }
  else 
  {
    print("Đây là số lẻ");
  }

  int thang = 5;
  switch (thang) {
    case 2:
      print("Thang $thang co 28 ngay");
      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("Thang $thang co 31 ngay");
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print("Thang $thang co 30 ngay");
      break;
    default:
      print("Nhap vao 1 thang");
  }
}