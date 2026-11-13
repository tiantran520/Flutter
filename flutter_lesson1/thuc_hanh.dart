// Chạy file bằng lệnh: dart thuc_hanh.dart
void main() {
  print('Bai 1: Xin chào Dart!');

  // Viết code thực hành của bạn ở đây.
  //Kiểu dữ liệu thường dùng trong Dart
  String name = "Nguyễn Văn A";
  int age = 20;
  double height = 1.75;
  bool isStudent = false;

  print('Tên: $name');
  print('Tuổi: $age');
  print('Chiều cao: $height');
  print('Là sinh viên: $isStudent');

  //Phân biệt var và final, const
  var  category = "Food"; // Có thể thay đổi giá trị
  final String brand = "Apple"; // Không thể thay đổi giá trị
  const int maxUsers = 100; // Không thể thay đổi giá trị

  /**
   * var là một từ khóa trong Dart được sử dụng để khai báo biến m à không cần chỉ định kiểu dữ liệu cụ thể. Khi bạn sử dụng var, Dart sẽ tự động suy luận kiểu dữ liệu dựa trên giá trị được gán cho biến đó. Tuy nhiên, sau khi biến được gán giá trị lần đầu tiên, kiểu dữ liệu của nó sẽ được cố định và không thể thay đổi.
   * conts là một từ khóa trong Dart được sử dụng để khai báo hằng số (constant). Khi bạn sử dụng const, giá trị của biến sẽ được xác định tại thời điểm biên dịch và không thể thay đổi trong suốt quá trình thực thi chương trình. Hằng số const thường được sử dụng cho các giá trị mà bạn biết trước và không muốn thay đổi.
   * final là một từ khóa trong Dart được sử dụng để khai báo biến mà giá trị của nó chỉ có thể được gán một lần duy nhất. Khi bạn sử dụng final, giá trị của biến sẽ được xác định tại thời điểm chạy (runtime) và không thể thay đổi sau khi đã được gán. Điều này có nghĩa là bạn có thể gán giá trị cho biến final trong quá trình thực thi chương trình, nhưng sau đó không thể thay đổi giá trị đó.
   * hiểu đơn giản conts là gán luôn giá trị ban đầu, với final ban đầu chưa biết giá trị sau khi gán giá trị rồi thì sẽ không thể thay đổi nữa
   */
   //call func
  sayHello();
  double totalPrice = caculateTotalPrice(price: 10.0, quantity: 5);
  print('Tổng giá trị: $totalPrice');

}


//Func và named parameters trong ngôn ngữ Dart
// func không có named parameters
void sayHello() {
  print('nice to meet you');
}

// func có named parameters
//func có required parameters là func buộc người dùng phải truyền tham số vào trong phương thức
double caculateTotalPrice({required double price, required int quantity}) {
  return price * quantity;
}

// 1. Bắt buộc
void example1({
  required String name,
}) {}

// 2. Không bắt buộc, mặc định null
void example2({
  String? name,
}) {}

// 3. Không bắt buộc, có giá trị mặc định
void example3({
  String name = 'Unknown',
}) {}