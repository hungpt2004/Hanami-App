import 'dart:convert';

class User {
  final String fullName;
  final String email;
  final String password;
  String? phone;

  // Constructor
  User({
    required this.fullName,
    required this.email,
    required this.password,
    this.phone,
  });

  // User to Map
  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'email': email,
      'password': password,
      'phone': phone,
    };
  }

  // Map to User
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      fullName: map['fullName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      phone: map['phone'] as String?,
    );
  }

  // User to JSON
  String toJson() => json.encode(toMap());

  // JSON to User
  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  // Optional: Override toString for better debugging
  @override
  String toString() {
    return 'User(fullName: $fullName, email: $email, password: $password, phone: $phone)';
  }
}