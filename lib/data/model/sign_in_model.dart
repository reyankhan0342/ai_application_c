class SignInModel {
  String? userId;
  final String? userName;
  final String? UserEmail;
  final String? userPassword;

  SignInModel({this.userName, this.UserEmail, this.userPassword, this.userId});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      userName: json['userName'] ?? '',
      userId: json['userId'] ?? ' ',
      UserEmail: json['email'] ?? '',
      userPassword: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'email': UserEmail,
      'password': userPassword,
      'userId': userId,
    };
  }
}
