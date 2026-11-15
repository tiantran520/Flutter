void main() {
  // Set in Flutter

  print('Bai 4: Set in Flutter');

  // định nghĩa set trong flutter là một tập hợp các giá trị không trùng lặp. Set trong Flutter được sử dụng để lưu trữ các giá trị duy nhất và không có thứ tự cụ thể.
  // Đặc điểm của set là không cho phép các phần tử trùng lặp, do đó nếu bạn cố gắng thêm một phần tử đã tồn tại trong set, nó sẽ không được thêm vào.
  // Set trong Flutter có thể được tạo ra bằng cách sử dụng cú pháp {} hoặc bằng cách sử dụng lớp Set.
  // 1. Tạo set bằng cú pháp {}
  Set<String> fruits = {'apple', 'banana', 'orange', 'apple'};
  print(fruits); // Output: {apple, banana, orange}
  // 2. Tạo set bằng cách sử dụng lớp Set
  Set<int> numbers = Set.from([1, 2, 3, 4, 5, 1]);
  print(numbers); // Output: {1, 2, 3, 4, 5}

  Set<String> colors = Set.from(['red', 'green', 'blue', 'red']);
  print(colors); // Output: {red, green, blue}

  // 3. Thêm phần tử vào set
  fruits.add('grape');
  print(fruits); // Output: {apple, banana, orange, grape}

  // 4. Xóa phần tử khỏi set
  fruits.remove('banana');
  print(fruits); // Output: {apple, orange, grape}

  // 5. Kiểm tra xem một phần tử có tồn tại trong set hay không
  print(fruits.contains('orange')); // Output: true 

  // 6. Duyệt các phần tử trong set bằng vòng lặp for
  print('Duyệt các phần tử trong set:');
  for (var fruit in fruits) {
    print(fruit); 
  }

  //  /* Bài tập thực hành:
  /*
  Viết chương trình quản lý danh sách email đăng ký với yêu cầu:
1. Tạo một List<String> gồm 6 email, trong đó có ít nhất 2 email bị trùng.
2. Chuyển List thành Set để loại bỏ email trùng.
3. Thêm một email mới.
4. Xóa một email bất kỳ.
5. Kiểm tra một email có tồn tại không.
6. In số lượng email duy nhất.
  */
  print('Chương trình quản lý danh sách email đăng ký:');
  // 1. Tạo một List<String> gồm 6 email, trong đó có ít nhất 2 email bị trùng.
  List<String> emailList = [
    'user1@example.com',
    'user2@example.com',
    'user3@example.com',
    'user1@example.com',
    'user4@example.com',
    'user2@example.com'
  ];
  print('Danh sách email gốc:');
  print(emailList);
  // 2. Chuyển List thành Set để loại bỏ email trùng.
  Set<String> emailSet = Set.from(emailList);
  print('Danh sách email sau khi loại bỏ trùng:');
  print(emailSet);
  // 3. Thêm một email mới.
  emailSet.add('user5@example.com');
  print('Danh sách email sau khi thêm email mới:');
  print(emailSet);
  // 4. Xóa một email bất kỳ.
  emailSet.remove('user2@example.com');
  print('Danh sách email sau khi xóa email:');
  print(emailSet);
  // 5. Kiểm tra một email có tồn tại không.
  print('Email user3@example.com có tồn tại không? ${emailSet.contains('user3@example.com')}');
  // 6. In số lượng email duy nhất.
  print('Số lượng email duy nhất: ${emailSet.length}');
}