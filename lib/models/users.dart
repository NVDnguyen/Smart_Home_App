class Users {
  final String id;
  final String username;
  final String email;
  final String address;

  Users(
      {required this.id,
      required this.username,
      required this.email,
      required this.address});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      address: json['address'],
    );
  }
  Map<String,dynamic> toJson(){
    return {
      'id' : id,
      'username' :username,
      'email' : email,
      'address' : address
    };
  }
}
