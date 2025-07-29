/*
  Dart là 1 ngôn ngữ OOP
  Các đối tượng tạo ra từ các lớp

  Mỗi đối tượng có thuộc tính và phương thức
  Thuộc tính lưu trữ dữ liệu, phương thức thực thi hành động
  Sử dụng dấu "." để tham chiếu đến 1 thuộc tính hoặc phương thức
*/
import 'dart:math';

class Point 
{
  double x,y;

  Point(this.x, this.y);  //giá trị truyền vào trước gán cho this.x và truyền sau là this.y

  double DistanceTo (Point other)
  {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx*dx + dy*dy);
  }
}

//Lớp 2 
class Point_2 
{
  double? x;  //Thuộc tính instance x, mặc định là null
  double z = 0; //Thuộc tính instance z, ban đầu có giá trị là 0


}
//===============
/*
  Phương thức Constructor giống với tên lớp hoặc ClassName.identifier
*/
double X_ = 1.5;

class Point3
{
  double? x = X_; //có thể truy cập khai báo không phụ thuộc vào this

  // double? y = this.x; ==> Error
  double? y;
  late double? z = this.x;  //Giá trị của z sẽ được gán khi x tồn tại giá trị

  Point3(this.x, this.y, this.z);
}

/*
  Getter và Setterr cung cấp quyền truy cạp đọc và ghi vào các thuộc tính của đối tượng
  Ta có thể tạo các thuộc tính bằng cách triển khai getter và setter thông qua từ khóa "get", "set"
*/
class Rectangle
{
  double left, top, weight, height;
  late double _z;  //đây là biến private, cho phép truy cập qua getter và setter

  Rectangle(this.left, this.top, this.weight, this.height);

  
  // Cách viết getter và setter trong Dart
  double get z => _z;
  set z (double value) => _z = value;

  @override
  String toString() {
    // TODO: implement toString
    return left.toString() + "," + top.toString() + "," + weight.toString() + "," + height.toString(); 
  }

  // Phương thức so sánh 2 đối tượng
  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    if (identical(this, other)) return true;
    if (other is!Rectangle) return false;

    return left == other.left &&
      top == other.top &&
      weight == other.weight &&
      height == other.height;

  }
}

//Phương thức static: Phương thức tĩnh, dùng để chia sẻ dữ liệu và chức năng giữa các đối tượng
// Điều này có nghĩa là ko cần tạo ra đối tượng để truy cập vào lớp này
class MyMath
{
  static const double PI = 3.14159;

  static double pow2(double x)
  {
    return x * x;
  }
}

void main ()
{
  Point a, b;

  // ------
  a = Point(0, -1);
  b = Point(2, 3);

  print(a.DistanceTo(b).toStringAsFixed(2));
  
  // ------
  Point_2 p2 = Point_2();
  print(p2.x);

  // -------
  print(MyMath.PI);
  print(MyMath.pow2(2));

  //-----
  Rectangle r = Rectangle(0, 0, 15, 10);
  r.z = 100;  //gán giá trị cho z thông qua setter
  print(r.z); //lấy ra z thông qua getter
  print(r.toString());

  // Test phương thức ==
  Rectangle r2 = Rectangle(1, 0, 15, 10);
  print(r == r2);
}