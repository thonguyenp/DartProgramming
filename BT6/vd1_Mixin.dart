/*
Mixin là 1 lớp chức các phương thức và thuộc tinshh dùng để gộp và 1 lớp khác

Mixin ko dùng để tạo đối tượng trực tiếp. Để dùng Mixin, ta dùng từ khóa with
 */

void main ()
{
  var c = C();
  c.displayInformation();
}

class B 
{
  int?  a;
  String name = 'Class B';
  void displayInformation ()
  {
    print("Infor from B");
  }
}

class C extends B with M
{
  @override
  void displayInformation() {
    // TODO: implement displayInformation
    // super.displayInformation();
    showSomething();  //dùng showSomething được vì đã ghép với B với lớp M (lớp Mixin)
    a = 100;
  }
}

mixin M 
{
  void showSomething()
  {
    print("Print Message: ...");
  }
}