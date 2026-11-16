void main() {
  // Bai 7: Constructor trong Dart
  print('Bai 7: Constructor trong Dart');
  // Constructor là một phương thức đặc biệt trong class, được sử dụng để khởi tạo các đối tượng (object) của class đó. Constructor có cùng tên với class và không có kiểu trả về. Khi tạo một đối tượng mới từ class, constructor sẽ được gọi để thiết lập các
  // thuộc tính ban đầu của đối tượng. Constructor có thể nhận các tham số để cung cấp giá trị cho các thuộc tính của đối tượng khi nó được tạo ra.
  // Student student1 = Student('Thien', 20, 8.5);
  // student1.displayInfo(); // Output: Tên: Thien, Tuổi: 20, Điểm: 8.5
  // Student student2 = Student('An', 21, 9.0);
  // student2.displayInfo(); // Output: Tên: An, Tuổi: 21, Điểm: 9.0
  // Student student3 = Student('Binh', 19, 7.5);
  // student3.displayInfo(); // Output: Tên: Binh, Tuổi: 19, Điểm: 7.5
  //Tạo default constructor
  Student student4 = Student();
}

// Tạo class Student với constructor
class Student {
  // String name;
  // int age;
  // double core;
  //Default constructor
  String name = 'Unknow';
  int age = 18;
  double core = 5.0;


  // // Constructor của class Student
  // Student(this.name, this.age, this.core);

  void displayInfo() {
    print('Tên: $name, Tuổi: $age, Điểm: $core');
  }
}

