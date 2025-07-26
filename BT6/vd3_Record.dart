/*
  Record là 1 loại dữ liệu tổng hợp được giới thiệu từ dart 3.0
  Cho phép nhóm nhiều giá trị có kiểu khác nhau thành 1 đơn vị duy nhất
  Record là immutable: ko thể thay đổi khi đã tạo ra
 */
void main ()
{
  var r = ('first', x : 2, 5, 10.5);

  var point = (123, 456);

  var person = (name: 'Tho', age: 21);

  //truy cập giá trị trong record
  //dùng chỉ số
  print(r.$1);  //truy xuất thành phần giá trị đầu tiên
  print(r.$2);  //truy xuất thành phần giá trị thứ hai
  print(r.$3);  //truy xuất thành phần giá trị thứ ba

  //truy xuất dùng tên
  print(person.name);
  print(person.age);
  // print(r);
}