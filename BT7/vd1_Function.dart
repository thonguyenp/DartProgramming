/*
  Dart là OOP => hàm cũng có kiểu Function
  => Hàm có thể gán cho biến, hoặc truyền làm tham số
  Cũng có thể gọi 1 instance của 1 lớp như thể nó là 1 hàm
 */

// Hàm là 1 khối lệnh dùng để làm việc gì đó

//Viết đầy đủ
double TinhTong (var a, double b, double c)
{
  return a + b + c;
}

//Sử dụng cú pháp rút gọn "=>" thay cho return
// => expression là cách viết gọn của {return expression;}
// sau => ko được dùng lệnh (print, if, else, ....)
double TinhTong1 (var a, double b, double c) => a + b + c;

//Hàm với tên của tham số
// Khi gọi 1 hàm, ta có thể truyền giá trị thông qua tên biến paraName: value
//Ưu: Cho phép truyền vào không theo thứ tự
String createFullNam ({String? ho, String? chuLot, String? ten})
{
  return ho!+ " " + chuLot! + " " + ten!;
}

//Tham số tùy chọn: có hay không có tham số cũng được
//Cho phép gọi hàm mà ko cần cung cấp đầy đủ tham số. Khi các giá trị đó không được cung cấp
// => nhận mặc định giá trị null
 
double Sum (double a, [double? b, double? c, double? d])
{
  var result = a;
  result += (b != null) ? b : 0;
  result += (c != null) ? c : 0;
  result += (d != null) ? d : 0;
  
  return result;
}



//Hàm main là khởi động ứng dụng
void main ()
{
  // var x = TinhTong(1, 10, 100);
  // print(x);

  // var y = TinhTong1(1, 10, 100);
  // print(y);

  //Ưu: Cho phép truyền vào không theo thứ tự
  var fn= createFullNam(ho: "Nguyen", chuLot: "Phuoc", ten: "Tho");
  var fn2= createFullNam(ten: "Tho", ho: "Nguyen", chuLot: "Phuoc");

  
  print(fn);
  print(fn2);

  print(Sum(10));
  print(Sum(10, 2));
  print(Sum(10, 2, 3));
  print(Sum(10, 2, 3, 4));

  //Hàm ẩn danh
  // Trong Dart, ta có thể tạo 1 hàm ko tên gọi, còn gọi là hàm lambda hoặc closure
  var tong = (var a, var b) {
    return a + b;
  };

  print(tong(10, 20));
}