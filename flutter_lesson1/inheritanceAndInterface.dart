void main() {
  // Bai 9: Inheritance và Interface trong Dart
  print('Bai 9: Inheritance và Interface trong Dart');
  //
  /* Inheritance (Kế thừa) là một khái niệm trong lập trình hướng đối tượng,
   cho phép một class (lớp con) kế thừa các thuộc tính và phương thức từ một class khác (lớp cha).
  Điều này giúp tái sử dụng mã nguồn, giảm thiểu sự trùng lặp và tạo ra các mối quan hệ giữa các class. 
  Trong Dart, một class có thể kế thừa từ một class khác bằng cách sử dụng từ khóa "extends". 
  Lớp con có thể truy cập các thuộc tính và phương thức của lớp cha, và cũng có thể ghi đè (override) các 
  phương thức của lớp cha để thay đổi hành vi của chúng. Dart hỗ trợ kế thừa đơn, 
  nghĩa là một class chỉ có thể kế thừa từ một class cha duy nhất. Tuy nhiên, Dart hỗ trợ mixins, 
  cho phép một class kết hợp các thuộc tính và phương thức từ nhiều class khác nhau mà không cần phải kế thừa trực tiếp từ chúng. 
  Mixins giúp tăng tính linh hoạt và khả năng tái sử dụng mã nguồn trong lập trình hướng đối tượng. Ngoài ra, Dart cũng hỗ trợ interface, 
  cho phép một class triển khai nhiều interface khác nhau. Interface định nghĩa các phương thức mà một class phải triển khai, 
  giúp tạo ra các hợp đồng (contracts) giữa các class. Một class có thể triển khai nhiều interface bằng cách sử dụng từ khóa "implements".
   Khi một class triển khai một interface, nó phải cung cấp các định nghĩa cho tất cả các phương thức được khai báo trong interface đó. 
   Điều này giúp đảm bảo rằng class tuân thủ các quy tắc và hành vi được định nghĩa bởi interface, 
   đồng thời cho phép tạo ra các mối quan hệ linh hoạt giữa các class trong lập trình hướng đối tượng.
   */
//1. extends: kế thừa Class.
//2. implements: triển khai Interface.
//3. abstract class: Class trừu tượng.
//4. @override: ghi đè phương thức.\
//5. super: gọi Constructor hoặc phương thức của Class cha.
  // Tạo một object từ class Dog
  final dog = Dog('Lucky');
  dog.eat(); // Output: kế thừa phương thức eat() từ class Animal, Output: Lucky đang ăn.
  dog.bark(); // Output: Lucky đang sủa.

  // Tạo một object từ class CreditCard
  final creditCard = CreditCard();
  creditCard.pay(); // Output: Thanh toán bằng thẻ tín dụng 
  final cash = Cash();
  cash.pay(); // Output: Thanh toán bằng tiền mặt 
}

// Tạo một class animal có thuộc tính name và phương thức eat
class Animal {
  String name;
  Animal(this.name);
  void eat() {
    print('$name đang ăn.');
  }
}

//Tao class Dog kế thừa từ class Animal và có phương thức sủa
class Dog extends Animal {
  Dog(String name) : super(name);
  
  void bark() {
    print('$name đang sủa.');
  }
}
//2. implements triển khai Interface
class Payable {
  void pay() {
    print('Thanh toán');
  }
}

class CreditCard implements Payable {
  @override
  void pay() {
    print('Thanh toán bằng thẻ tín dụng');
  }
}

class Cash implements Payable {
  @override
  void pay() {
    print('Thanh toán bằng tiền mặt');
  }
}
