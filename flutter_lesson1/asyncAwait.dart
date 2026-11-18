
import 'dart:async';

// Model đại diện cho một giao dịch
class Expense {
  final int id;
  final String title;
  final double amount;

  Expense({
    required this.id,
    required this.title,
    required this.amount,
  });

  void display() {
    print('$id. $title: ${amount.toStringAsFixed(0)} VND');
  }
}

// Service mô phỏng việc lấy dữ liệu từ server
class ExpenseService {
  Future<List<Expense>> fetchExpenses() async {
    print('Đang kết nối đến server...');

    // Giả lập server mất 2 giây để trả dữ liệu
    await Future.delayed(const Duration(seconds: 2));

    // Dữ liệu giả lập
    return [
      Expense(id: 1, title: 'Ăn sáng', amount: 30000),
      Expense(id: 2, title: 'Ăn trưa', amount: 50000),
      Expense(id: 3, title: 'Cà phê', amount: 25000),
      Expense(id: 4, title: 'Đi xe bus', amount: 10000),
    ];
  }
}

// Repository xử lý dữ liệu
class ExpenseRepository {
  final ExpenseService service;

  ExpenseRepository(this.service);

  Future<List<Expense>> getExpenses() async {
    try {
      final expenses = await service.fetchExpenses();
      return expenses;
    } catch (e) {
      print('Lỗi khi lấy dữ liệu: $e');
      rethrow;
    }
  }
}

// Class xử lý nghiệp vụ
class ExpenseManager {
  final ExpenseRepository repository;

  ExpenseManager(this.repository);

  Future<void> showExpenses() async {
    try {
      print('\n===== EXPENSE TRACKER =====');
      print('Đang tải danh sách giao dịch...\n');

      // Chờ dữ liệu được trả về
      final expenses = await repository.getExpenses();

      print('===== DANH SÁCH GIAO DỊCH =====');

      for (final expense in expenses) {
        expense.display();
      }

      // Tính tổng chi tiêu
      final total = expenses.fold<double>(
        0,
        (sum, expense) => sum + expense.amount,
      );

      print('\n===== THỐNG KÊ =====');
      print('Tổng số giao dịch: ${expenses.length}');
      print('Tổng chi tiêu: ${total.toStringAsFixed(0)} VND');
    } catch (e) {
      print('Không thể hiển thị giao dịch: $e');
    }
  }
}

// Hàm main
Future<void> main() async {
  final service = ExpenseService();
  final repository = ExpenseRepository(service);
  final manager = ExpenseManager(repository);

  print('Ứng dụng bắt đầu chạy');

  await manager.showExpenses();

  print('\nỨng dụng kết thúc');
}
