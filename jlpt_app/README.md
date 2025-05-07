# Hanami App

**Hanami App** là nền tảng học tiếng Nhật hiện đại, hỗ trợ người học từ trình độ sơ cấp đến nâng cao (JLPT N5 đến N1). Ứng dụng tích hợp chương trình học theo giáo trình chuẩn, hệ thống quản lý tiến độ học, chức năng mua sách và trợ lý học tập thông minh bằng AI.

## Tính năng chính

### 1. Đăng nhập / Đăng ký người dùng
- Cho phép người dùng tạo tài khoản cá nhân để lưu lại tiến trình học.
- Xác thực qua email và mật khẩu.
- Hỗ trợ đăng nhập bằng tài khoản mạng xã hội (Google, Apple ID).
- Chức năng quên mật khẩu và cập nhật thông tin cá nhân.

### 2. Chương trình học theo sách và trình độ JLPT
- Nội dung học được phân chia theo giáo trình và cấp độ:
  - JLPT từ N5 đến N1
  - Các giáo trình phổ biến như Minna no Nihongo, Soumatome, Shinkanzen Master
- Bài học bao gồm:
  - Từ vựng
  - Ngữ pháp
  - Luyện nghe và đọc hiểu
  - Bài kiểm tra định kỳ
- Theo dõi tiến độ học tập và kết quả làm bài.

### 3. Mua sách học tiếng Nhật
- Cửa hàng tích hợp ngay trong ứng dụng.
- Người dùng có thể:
  - Tìm kiếm và xem chi tiết các đầu sách
  - Mua sách bản giấy hoặc bản điện tử (PDF bản quyền)
  - Thanh toán trực tuyến qua các cổng thanh toán phổ biến

### 4. Trợ lý học tập AI (Chatbox)
- Tích hợp hệ thống chat thông minh hỗ trợ người học:
  - Giải thích ngữ pháp
  - Gợi ý cách dùng từ vựng
  - Hỗ trợ làm bài tập
  - Mô phỏng hội thoại thực tế
- AI được huấn luyện với nội dung giáo trình tiếng Nhật phổ biến, giúp hỗ trợ chính xác và sát thực tế.

## Mục tiêu
Hanami App hướng đến việc cung cấp một nền tảng học tập hiệu quả, hiện đại và cá nhân hóa cho người học tiếng Nhật, đặc biệt là những người chuẩn bị cho kỳ thi năng lực tiếng Nhật JLPT hoặc cần sử dụng tiếng Nhật trong công việc và đời sống.

## Công nghệ sử dụng
- Flutter (đa nền tảng)
- Firebase (xác thực, cơ sở dữ liệu, lưu trữ)
- RESTful API / GraphQL (backend kết nối nội dung học và dữ liệu sách)
- OpenAI API (cho chatbox AI)

## Hướng dẫn cài đặt (Developer)
```bash
git clone https://github.com/your-org/hanami_app.git
cd hanami_app
flutter pub get
flutter run
