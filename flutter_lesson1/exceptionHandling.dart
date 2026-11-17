void main() {
  // Bai 12 exception handling
  print('Bai12 Exception Handling');
  //1. Try - catch
  try {
    int result = 10 ~/ 0;

    print(result);
  } catch (e, stackTrace) {
    print('Đã xảy ra lỗi');
    print('Lỗi: $e');
    print('Stack Trace: $stackTrace');
  }

  // Bai 2 Try - On bat mot loi cu the
   try {
    int result = 10 ~/ 0;

    print(result);
  // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print('Không thể chia cho 0');
  }

  // tương tự như defer trong ngon ngu swwift Finally luoon duoc goi cuối cùng
    try {
    print('Bắt đầu');

    int result = 10 ~/ 0;

    print(result);
  } catch (e) {
    print('Đã xảy ra lỗi');
  } finally {
    print('Kết thúc chương trình');
  }
  //Throw trong ngôn ngữu dart
  try {
    checkAmount(-100000);
  } catch (e) {
    print('Lỗi: $e');
  }
}

// viết func ném ra lỗi throw
void checkAmount(double amount) {
  if (amount <= 0) {
    throw Exception('Số tiền phải lớn hơn 0');
  }

  print('Số tiền hợp lệ');
}