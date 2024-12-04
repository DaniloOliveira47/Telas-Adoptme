class Usuario {
  final String username;
  final String email;
  final String phone;
  final String password;
  final String confirmpassword;

  Usuario( {
   required this.username, 
   required this.email, 
   required this.phone, 
   required this.password, 
   required this.confirmpassword});

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      confirmpassword: json['confirmpassword'],
    );
  }
}
