//main func 
void main() {
  print('Bai 2: List trong Dart');

  // //Create a list of String
  // List<String> fruits = ['Apple', 'Banana', 'Orange', 'Mango'];

  // print(fruits);

  // // 1. add an element to the list
  // fruits.add('Grapes');
  // print('After adding Grapes: $fruits');

  // // 2. remove an element from the list
  // fruits.remove('Banana');
  // print('After removing Banana: $fruits');

  // // 3 . access an element by index
  // print('Element at index 2: ${fruits[2]}');

  // //4. check if the list contains a specific element
  // print('Does the list contain Mango? ${fruits.contains('Mango')}');

  // //5. iterate through the list using a for loop

  // print('Iterating through the list:');
  // for (int i = 0; i < fruits.length; i++) {
  //   print('index Fruit $i: ${fruits[i]}');
  // }
  /* Bai tập thực hành:
Hãy thử tự viết chương trình quản lý danh sách chi tiêu với yêu cầu:
1. Tạo List<double> gồm 5 khoản chi tiêu.
2. In toàn bộ các khoản chi tiêu.
3. Thêm một khoản chi mới.
4. Xóa một khoản chi bất kỳ.
5. Tính tổng chi tiêu.
6. In ra số lượng khoản chi hiện tại.
  */
  print('chương trình quản lý danh sách chi tiêu');
  List<double> expenses = [100.5, 200.0, 150.75, 300.25, 250.0];

  // 2. In toàn bộ các khoản chi tiêu.
  print('Danh sách chi tiêu: $expenses');

  // 3. Thêm một khoản chi mới.

  expenses.add(400.0);
  print('Sau khi thêm khoản chi mới: $expenses');

  // 4. Xóa một khoản chi bất kỳ.
  expenses.removeAt(2); // Xóa khoản chi tại vị trí index 2
  print('Sau khi xóa khoản chi tại index 2: $expenses');

  // 5. Tính tổng chi tiêu.
  double totalExpenses = expenses.reduce((a, b) => a + b);
  print('Tổng chi tiêu: $totalExpenses');

  // 6. In ra số lượng khoản chi hiện tại.
  print('Số lượng khoản chi hiện tại: ${expenses.length}');
   for (int i = 0; i < expenses.length; i++) {
    print('index Expense $i: ${expenses[i]}');
   }

}