class SignInClassModel {
  String useremail;
  String userPassword;
  SignInClassModel({
    required this.useremail,
    required this.userPassword,
  });

  // factory SignInClassModel.fromJson(Map<String, dynamic> json) =>
  //     SignInClassModel(
  //       useremail: json["user_mail"],
  //       userPassword: json["user_password"],
  //     );

  Map<String, dynamic> toJson() => {
        "user_mail": useremail,
        "user_password": userPassword,
      };
}

class SignInResponse {
  bool status;
  String message;
  String token;

  SignInResponse({
    required this.message,
    required this.status,
    required this.token,
  });

  factory SignInResponse.fromJson(Map<String, dynamic> json) {
    return SignInResponse(
      message: json['message'],
      status: json['status'],
      token: json['token'],
    );
  }

  // Map<String, dynamic> toJson() => {
  //       "message": message,
  //       "status": status,
  //       "token": token,
  //     };
}
