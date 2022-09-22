class SignUpModel {
  String email;
  String password;

  SignUpModel({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "user_mail": email,
        "user_password": password,
      };
}

class SignUpResponse {
  bool? status;
  int? id;

  SignUpResponse({
    required this.status,
    required this.id,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) {
    return SignUpResponse(
      status: json['status'],
      id: json['id'],
    );
  }
}
