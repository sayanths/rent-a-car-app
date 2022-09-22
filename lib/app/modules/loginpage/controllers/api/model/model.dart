class MobileNumber {
  String number;
  MobileNumber({
    required this.number,
  });

  Map<String, dynamic> toJson() => {
        "number": number,
      };
}
