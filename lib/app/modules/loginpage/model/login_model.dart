class LoginModel {
  String? email;
  String? password;

  LoginModel({
     this.email,
     this.password,
  });

  // factory LoginModel.fromJson(Map<String, dynamic> json) {
  //   return LoginModel(
  //     email: json['user_mail'],
  //     password: json['user_password'],
  //   );
  // }

  Map<String, dynamic> toJson() => {
        "user_mail": email,
        "user_password": password,
      };
}

class LoginResponse {
  bool? status;
  String? message;
  String? token;

  LoginResponse({
     this.status,
     this.message,
     this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'],
      message: json['message'],
      token: json['token'],
    );
  }
}
