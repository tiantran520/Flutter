void main() {
  // Bài 5 Lambda và Higher-Order Functions trong Dart
  print('Bai 5: Lambda và Higher-Order Functions trong Dart');
  // Lambda function là một hàm ẩn danh, không có tên và có thể được định nghĩa trực tiếp trong một biểu thức. Lambda function thường được sử dụng để truyền vào các hàm khác như tham số hoặc để thực hiện các tác vụ ngắn gọn.
  // Higher-Order Functions là các hàm có thể nhận các hàm khác làm tham số hoặc trả về các hàm khác. Higher-Order Functions cho phép chúng ta tạo ra các
  // hàm linh hoạt và tái sử dụng mã nguồn.
  // 1. Ví dụ về Lambda function
  var add = (int a, int b) => a + b;
  print('Kết quả của add(3, 5): ${add(3, 5)}'); // Output: 8

  var sayHello = (String name) => 'Hello, $name!';
  print(sayHello('Thien')); // Output: Hello, Thien!

  // 2. arrow function
  // arrow function là một cú pháp ngắn gọn để định nghĩa các hàm trong Dart. Arrow function sử dụng ký hiệu "=>" để chỉ ra rằng hàm trả về giá trị của biểu thức phía sau nó. Arrow function thường được sử dụng cho các hàm ngắn gọn và đơn giản.
  var multiply = (int a, int b) => a * b;
  print('Kết quả của multiply(4, 6): ${multiply(4, 6)}'); // Output: 24

  //3. Ví dụ về Higher-Order Functions
  // Higher-Order Functions là các hàm có thể nhận các hàm khác làm tham số hoặc trả về các hàm khác. Higher-Order Functions cho phép chúng ta tạo ra các
  // hàm linh hoạt và tái sử dụng mã nguồn.
  // Ví dụ về Higher-Order Functions
  List<int> numbers = [1, 2, 3, 4, 5];
  // Sử dụng hàm map để nhân đôi các phần tử trong danh sách
  List<int> doubledNumbers = numbers.map((number) => number * 2).toList();
  print('Danh sách các số nhân đôi: $doubledNumbers'); // Output: [2, 4, 6, 8, 10]
}