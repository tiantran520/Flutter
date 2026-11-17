void main() {
  // Bai 10: Generics trong Dart
  print('Bai 10: Generics trong Dart');
  // Generics là một tính năng trong lập trình hướng đối tượng, cho phép bạn định nghĩa các lớp, phương thức hoặc hàm mà có thể hoạt động với nhiều kiểu dữ liệu khác nhau mà không cần phải viết lại mã nguồn cho từng kiểu dữ liệu cụ thể. Generics giúp tăng tính linh hoạt và tái sử dụng mã nguồn, đồng thời giúp giảm thiểu lỗi do việc sử dụng các kiểu dữ liệu không tương thích.
  // Ví dụ về Generics trong Dart
  //Khai báo một danh sách các số nguyên sử dụng Generics
  final nameBox = Box<String>('Thien');
  print('Giá trị trong nameBox: ${nameBox.value}'); // Output: Giá trị trong nameBox: Thien
  final ageBox = Box<int>(20);
  print('Giá trị trong ageBox: ${ageBox.value}'); // Output:

  //khoi tao danh sach cac so nguyen su dung Generics
  final firstName = getList<String>(['Thien', 'An', 'Binh'], 0);
  print('Giá trị trong firstName: $firstName'); // Output: Giá trị trong firstName: Thien
  final firstAge = getList<int>([20, 21, 19], 0);
  print('Giá trị trong firstAge: $firstAge'); // Output: Giá trị trong firstAge: 20 

}

// Tạo một class StringBox và IntBox sử dụng Generics
// class StringBox
class StringBox {
  String value;
  StringBox(this.value);
}

class IntBox {
  int value;
  IntBox(this.value);
}

//Tạo một class Box sử dụng Generics
class Box<T> {
  T value;
  Box(this.value);
}

// generic func Hàm trả về kiểu T 
T getList<T>(List<T> list, int index) {
  return list[index];
}