void main() {
  // Bai 6: Class và Object trong Dart

  print('Bai 6: Class và Object trong Dart');
  // Class là một khuôn mẫu để tạo ra các đối tượng (object) trong lập trình hướng đối tượng. Class định nghĩa các thuộc tính (properties) và phương thức (methods) mà các đối tượng của class đó sẽ có. Object là một thực thể cụ thể được tạo ra từ class, có thể chứa dữ liệu và thực hiện các hành động thông qua các phương thức của class.
  // Object là một thực thể cụ thể được tạo ra từ class, có thể chứa dữ liệu và thực hiện các hành động thông qua các phương thức của class.
  // ben dưới đã tạo ra một class student giờ tạo ra object
  Student student1 = Student('Thien', 20, 8.5);
  student1.displayInfo(); // Output: Tên: Thien, Tuổi: 20, Điểm: 8.5  
  print(student1.name); // Output: Thien
  print(student1.age); // Output: 20
  print(student1.core); // Output: 8.5
  //Tạo nhiều object từ class Student
  Student student2 = Student('An', 21, 9.0);
  student2.displayInfo(); // Output: Tên: An, Tuổi: 21
  Student student3 = Student('Binh', 19, 7.5);
  student3.displayInfo(); // Output: Tên: Binh, Tuổi: 19
  Student student4 = Student('Cuong', 22, 8.0);
  student4.displayInfo(); // Output: Tên: Cuong, Tuổi: 22

  print('-------------------');
  //Tạo nhiều object từ class Product
  Product product1 = Product('Laptop', 1500.0, 2);
  product1.showInfo(); // Output: Tên sản phẩm: Laptop, Giá: 1500.0, Số lượng: 2
  print('Tổng giá trị sản phẩm: ${product1.calculateTotal()}'); // Output: Tổng giá trị sản phẩm: 3000.0
  Product product2 = Product('Điện thoại', 800.0, 3);
  product2.showInfo(); // Output: Tên sản phẩm: Điện thoại, Giá: 800.0, Số lượng: 3
  print('Tổng giá trị sản phẩm: ${product2.calculateTotal()}'); // Output: Tổng giá trị sản phẩm: 2400.0
  Product product3 = Product('Tai nghe', 100.0, 5);
  product3.showInfo(); // Output: Tên sản phẩm: Tai nghe, Giá: 100.0, Số lượng: 5
  print('Tổng giá trị sản phẩm: ${product3.calculateTotal()}'); // Output: Tổng giá trị sản phẩm: 500.0
  // Lưu 3 Object vào List<Product>
  List<Product> productList = [product1, product2, product3];
  // Duyệt List và in thông tin từng sản phẩm
  print('Danh sách sản phẩm:');
  for (var product in productList) {
    product.showInfo();
    print('Tổng giá trị sản phẩm: ${product.calculateTotal()}');
  } 

}

// Tao mot class student
class Student {
  // Thuộc tính của class Student
  // Thược tính (properties) là các biến được định nghĩa trong class, chúng lưu trữ dữ liệu liên quan đến đối tượng của class đó. Các thuộc tính có thể có các kiểu dữ liệu khác nhau như số nguyên, chuỗi, danh sách, v.v.
  String name;
  int age;
  double core;
  // Constructor của class Student
  Student(this.name, this.age, this.core);
  // Phương thức của class Student 
  // Phương thức (methods) là các hàm được định nghĩa trong class, chúng xác định các hành động mà đối tượng của class có thể thực hiện. Các phương thức có thể truy cập và thao tác với các thuộc tính của đối tượng.
  void displayInfo() {
    print('Tên: $name, Tuổi: $age, Điểm: $core');
  }
}

/*
Tạo Class Product.
Có 3 thuộc tính: name, price, quantity.
Tạo phương thức showInfo() để in thông tin sản phẩm.
Tạo phương thức calculateTotal() để tính tổng giá trị sản phẩm (price * quantity).
Tạo ít nhất 3 Object từ Class Product.
Lưu 3 Object vào List<Product>.
Duyệt List và in thông tin từng sản phẩm.
*/

// Tạo Class Product
class Product {
  // Thuộc tính của class Product
  String name;
  double price;
  int quantity;
  // Constructor của class Product
  Product(this.name, this.price, this.quantity);
  // Phương thức của class Product
  void showInfo() {
    print('Tên sản phẩm: $name, Giá: $price, Số lượng: $quantity');
  }
  double calculateTotal() {
    return price * quantity;
  }
}