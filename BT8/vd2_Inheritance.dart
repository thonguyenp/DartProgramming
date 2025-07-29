class Product 
{
  double price;
  int quantity;
  String name;

  Product(this.price, this.quantity, this.name);

  void showTotal ()
  {
    print("Total price: ${price * quantity}");
  }
}

class Tablet extends Product
{
  double width = 0;
  double height = 0;

  Tablet(this.width, this.height, double price, int quantity, String name)
    :super(price, quantity, name);
  
  @override
  void showTotal() {
    // TODO: implement showTotal
    print("Name of Tablet: $name");
    super.showTotal();
  }
}

void main ()
{
  Product p = Product(6_000_000, 1, "San Pham A");
  Product p1 = new Tablet(7, 6, 20_000_000, 10, "Ipad Pro");

  p.showTotal();

  p1.showTotal();
}