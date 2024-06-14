class RegistrationRequest {
  String ? firstname;
  String ? lastname;
  String? email;
  String? password;
  String? role;
  String? phone;
  

  RegistrationRequest(
      {this.firstname,
      this.lastname,
      this.email,
      this.password,
      this.role,
      this.phone,
      });

  RegistrationRequest.fromJson(Map<String, dynamic> json) {
    firstname = json['firstname'];
    lastname = json['lastname'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    phone = json['phone'];
   
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['email'] = email;
    data['password'] = password;
    data['role'] = role;
    data['phone'] = phone;
    return data;
  }
}