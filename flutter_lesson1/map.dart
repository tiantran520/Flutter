void main () {
  // map in flutter 
  // Định nghĩa map là một collection (tập hợp) các cặp key-value (khóa-giá trị). Mỗi key trong map là duy nhất và được sử dụng để truy cập giá trị tương ứng.
  print('Bài 3: Map trong Flutter');

  // 1. Tạo một map với các cặp key-value
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 35,
  };

  // 2. Truy cập giá trị trong map bằng key
  // khác nhau giữa map và list là map sử dụng key để truy cập giá trị, trong khi list sử dụng chỉ số (index).
  print('Tuổi của Alice: ${ages['Alice']}');
  print('Tuổi của Bob: ${ages['Bob']}');
  print('Tuổi của Charlie: ${ages['Charlie']}');

  print('Vị trí của Alice trong map: ${ages.keys.toList().indexOf('Alice')}');

  // 3. Thêm một cặp key-value mới vào map
  ages['David'] = 40;
  print('Sau khi thêm David: $ages');

  // 4. Xóa một cặp key-value khỏi map
  ages.remove('Bob');
  print('Sau khi xóa Bob: $ages');

  // 5. Kiểm tra xem một key có tồn tại trong map hay không
  print('Có tồn tại Charlie trong map không? ${ages.containsKey('Charlie')}');

  // 6. Duyệt các phần tử trong map bằng vòng lặp for
  print('Duyệt các phần tử trong map:');
  for (var entry in ages.entries) {
    print('${entry.key}: ${entry.value}');
  }

  // Duyet map bang foreach
  print('Duyệt các phần tử trong map bằng forEach:');
  ages.forEach((key, value) {
    print('$key: $value');
  });

  /* Bài tập thực hành:
Viết chương trình quản lý thông tin một sản phẩm với yêu cầu:
1. Tạo Map có các thông tin: name, price, quantity, category.
2. In thông tin sản phẩm.
3. Cập nhật price.
4. Thêm key description.
5. Xóa key category.
6. In toàn bộ Map sau khi cập nhật.
  */
  print('Chương trình quản lý thông tin sản phẩm:');
  // 1. Tạo Map có các thông tin: name, price, quantity, category.
  Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 1500,
    'quantity': 10,
    'category': 'Electronics',
  };  
// 2. In thông tin sản phẩm.
  print('Thông tin sản phẩm: $product');

  // 3. Cập nhật price.
  product['price'] = 1400;
  print('Sau khi cập nhật giá: $product');

  // 4. Thêm key description.
  product['description'] = 'A high-performance laptop.';
  print('Sau khi thêm mô tả: $product');

  // 5. Xóa key category.
  product.remove('category');
  print('Sau khi xóa category: $product');

  // 6. In toàn bộ Map sau khi cập nhật.
  print('Toàn bộ thông tin sản phẩm sau khi cập nhật: $product');

}