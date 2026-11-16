void main() {
  // Bài 8 Enum trong Dart
  print('Bai 8 Enum trong Dart');
  // Enum (Enumeration) là một kiểu dữ liệu đặc biệt trong Dart, được sử dụng để định nghĩa một tập hợp các hằng số có tên. Enum giúp làm cho mã nguồn trở nên dễ đọc hơn và giảm thiểu lỗi do việc sử dụng các giá trị hằng số không rõ ràng. Enum thường được sử dụng để đại diện cho các trạng thái, loại, hoặc các giá trị có giới hạn trong một ứng dụng.
  // Ví dụ về Enum trong Dart
  // gọi sử dụng enum PaymentStatus
  PaymentStatus status = PaymentStatus.refunded;
  print('Trạng thái thanh toán hiện tại: $status'); // Output: Trạng thái thanh toán hiện tại: PaymentStatus.refunded
  // Kiểm tra trạng thái thanh toán
  // sử dụng enum với switch case
  showPaymentStatus(status);
 // Lấy tên giá trị của enum 
  print('Tên trạng thái thanh toán: ${status.name}'); // Output: Tên trạng thái thanh toán: refunded

}
// Tạo một enum payments
 enum PaymentStatus {
  pending, // Đang chờ xử lý
  completed, // Đã hoàn thành
  failed, // Thất bại
  refunded, // Đã hoàn tiền
  canceled, // Đã hủy
 }

 void showPaymentStatus(PaymentStatus status) {
  switch (status) {
    case PaymentStatus.pending:
      print('Trạng thái thanh toán: Đang chờ xử lý');
      break;
    case PaymentStatus.completed:
      print('Trạng thái thanh toán: Đã hoàn thành');
      break;
    case PaymentStatus.failed:
      print('Trạng thái thanh toán: Thất bại');
      break;
    case PaymentStatus.refunded:
      print('Trạng thái thanh toán: Đã hoàn tiền');
      break;
    case PaymentStatus.canceled:
      print('Trạng thái thanh toán: Đã hủy');
      break;
  }
} 