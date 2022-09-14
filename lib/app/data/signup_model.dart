class SignUpClassModel {
  SignUpClassModel({
    required this.userName,
    required this.userMail,
    required this.userPassword,
  });

  String userName;
  String userMail;
  String userPassword;

  factory SignUpClassModel.fromJson(Map<String, dynamic> json) =>
      SignUpClassModel(
        userName: json["user_name"],
        userMail: json["user_mail"],
        userPassword: json["user_password"],
      );

  Map<String, dynamic> toJson() => {
        "user_name": userName,
        "user_mail": userMail,
        "user_password": userPassword,
      };
}
