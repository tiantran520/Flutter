void main() {
  // Bai 11 : Null Safety trong Dart
  print('Bai 11: Null Safety trong Dart');
  // Null Safety là một tính năng trong Dart giúp ngăn chặn lỗi null reference (null pointer exception) bằng cách đảm bảo rằng các biến không thể chứa giá trị null trừ khi chúng được khai báo là nullable. Điều này giúp tăng tính an toàn và độ tin cậy của mã nguồn, giảm thiểu các lỗi liên quan đến null và cải thiện hiệu suất của ứng dụng
  // Ví dụ về Null Safety trong Dart
  // Khai báo một biến không thể null
  int nonNullableInt = 10;
  print('Giá trị của nonNullableInt: $nonNullableInt'); // Output: Giá trị của nonNullableInt: 10
  // nonNullableInt = null; // Lỗi: A value of type 'Null' can't be assigned to a variable of type 'int'
  // Khai báo một biến có thể null
  int? nullableInt = null;
  print('Giá trị của nullableInt: $nullableInt'); // Output: Giá trị của nullableInt: null
  nullableInt = 20;
  print('Giá trị mới của nullableInt: $nullableInt'); // Output: Giá trị mới của nullableInt: 20
  // Sử dụng toán tử null-aware để kiểm tra và gán giá trị mặc định nếu biến là null
  int? anotherNullableInt = null;
  int value = anotherNullableInt ?? 30; // Nếu anotherNullableInt là null, gán giá trị mặc định là 30
  print('Giá trị của value: $value'); // Output: Giá trị của value: 30

  // Toan tu ?, !, ??, ??=
  //1. Toán tử ? (null-aware operator): Được sử dụng để kiểm tra xem một biến có phải là null hay không trước khi truy cập vào thuộc tính hoặc phương thức của nó. Nếu biến là null, toán tử ? sẽ trả về null thay vì gây ra lỗi.
  String? nullableString = null;
  print('Giá trị của nullableString: ${nullableString?.length}'); // Output: Giá trị của nullableString: null
  //2. Toán tử ! (null-assertion operator): Được sử dụng để ép kiểu một biến nullable thành non-nullable. Khi sử dụng toán tử !, bạn đang nói với trình biên dịch rằng bạn chắc chắn biến đó không phải là null tại thời điểm sử dụng. Nếu biến thực sự là null, sẽ gây ra lỗi runtime.
  // Nhược điểm của toán tử ! là nếu bạn sử dụng nó một cách không cẩn thận, có thể dẫn đến lỗi runtime. Do đó, nên sử dụng toán tử ! chỉ khi bạn chắc chắn rằng biến không thể là null.
  String? anotherNullableString = 'Hello, Dart!';
  print('Độ dài của anotherNullableString: ${anotherNullableString!.length}'); // Output: Độ dài của anotherNullableString: 12    
  // 3. Toán tử ?? (null-coalescing operator): Được sử dụng để cung cấp một giá trị mặc định nếu biến nullable là null. Nếu biến không phải là null, giá trị của biến sẽ được sử dụng.
  String? yetAnotherNullableString = null;
  String result = yetAnotherNullableString ?? 'Giá trị mặc định';
  print('Giá trị của result: $result'); // Output: Giá trị của result: Giá trị mặc định
  // 4. Toán tử ??= (null-coalescing assignment operator): Được sử dụng để gán giá trị cho một biến nullable chỉ khi biến đó là null. Nếu biến không phải là null, giá trị của biến sẽ không bị thay đổi
  String? nullableStringToAssign = null;
  nullableStringToAssign ??= 'Giá trị được gán';
  print('Giá trị của nullableStringToAssign: $nullableStringToAssign'); // Output: Giá trị của nullableStringToAssign: Giá trị được gán
  // 5 late trong Dart: Từ khóa late được sử dụng để khai báo một biến mà giá trị của nó sẽ được gán sau khi biến được khai báo. Điều này hữu ích khi bạn muốn trì hoãn việc khởi tạo một biến cho đến khi nó thực sự cần thiết, nhưng vẫn muốn đảm bảo rằng biến đó sẽ được khởi tạo trước khi sử dụng.
  // Ví dụ về late
  late String bienLate;

  bienLate = 'Late khai bao';
  print(bienLate);
}