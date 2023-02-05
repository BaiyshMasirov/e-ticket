class Result {
  final bool isSuccess;
  final String message;
  final String? token;

  Result({required this.isSuccess, required this.message, this.token});

  factory Result.fromJson(Map<String, dynamic> json) => Result(
      isSuccess: json["succeed"] as bool,
      message: json["messages"][0] as String,
      token: json["jwtToken"][0] as String);
}
