void main() {
  // Bai 13: Future trong ngôn ngữ Dart
  print('Bai13: Future trong ngôn ngữ dart');
  // Định nghĩa Futeure
  /*
  1. Đồng bộ (Synchronous) và bất đồng bộ (Asynchronous).
  2. Future là gì?
  3. Future.value().
  4. Future.delayed().
  5. then(), catchError(), whenComplete().
  6. Future trong các thao tác đọc file, gọi API và lưu dữ liệu của Expense Tracker.
  */

  //1. Đồng bộ (Synchronous) và bất đồng bộ (Asynchronous).
  /*  
    Synchronous Đồng bộ nghĩa là chương trình thực hiện từng dòng theo thứ tự. Dòng sau phải chờ dòng trước hoàn thành.
    Asynchronous Bất đồng bộ cho phép chương trình bắt đầu một công việc mất thời gian mà không cần chặn toàn bộ luồng xử lý để chờ nó hoàn thành.
    2. Future là gì? 2. Future là gì?
    Future là một đối tượng đại diện cho kết quả sẽ có trong tương lai.

    Kết quả đó có thể là:
    1. Thành công: trả về dữ liệu.
    2. Thất bại: xảy ra lỗi.
    */
  print('Bắt đầu');

  getUserName().then((name) {
    print('Tên người dùng: $name');
  });

  print('Kết thúc');

  getExpense().then((expense) {
    print(expense.title);
    print(expense.amount);
  });

  Future.delayed(Duration(seconds: 2), () {
    return 'Hello Dart';
  });

  print('Đang tải dữ liệu...');

  Future.delayed(Duration(seconds: 3), () {
    print('Tải dữ liệu thành công!');
  });

  print('Chương trình vẫn đang chạy');

  //then()
  getNumber().then((number) {
    print('Kết quả: $number');
  });
  // catchError
  getNumber()
      .then((number) {
        print('Kết quả: $number');
      })
      .catchError((error) {
        print('Đã xảy ra lỗi: $error');
      });

  getData()
      .then((data) {
        print(data);
      })
      .catchError((error) {
        print('Lỗi: $error');
      })
      .whenComplete(() {
        print('Đã hoàn thành thao tác');
      });
}

Future<String> getUserName() {
  return Future.value('Nguyen Van A');
}

// vi du voi expense tracker
class Expense {
  final String title;
  final double amount;
  Expense(this.title, this.amount);
}

// Tạo Feature có sẵn kết quả
Future<Expense> getExpense() {
  final expense = Expense('Ăn trưa', 50000);

  return Future.value(expense);
}

//  then(), catchError(), whenComplete()
// 1. then() được gọi khi Future hoàn thành thành công.
Future<int> getNumber() {
  return Future.value(100);
}

// 2. catchError() – Xử lý khi xảy ra lỗi
Future<int> getNumber1() {
  return Future.error(Exception('Không thể lấy dữ liệu'));
}

// 3. whenComplete() – Luôn thực hiện khi Future kết thúc
Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () => 'Dữ liệu Expense');
}
