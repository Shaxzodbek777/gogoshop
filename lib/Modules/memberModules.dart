class Member{
  String uid  = "";
  String name = "";
  String fullname = "";
  String borin = "";
  String email = "";
  String phone = '';

  Member(this.uid, this.email, this.fullname, this.phone, this.borin, this.name);
  Member.fromJson(Map<String, dynamic> json)
      : uid = json ['uid'],
        name = json ['name'],
        fullname = json ['fullname'],
        borin = json [ 'borin'],
        email = json ['email'],
        phone = json ['phone'];

  Map<String, dynamic> toJson ()=> {
    'uid' : uid,
    'name' : name,
    'fullname':fullname,
    'borin' :borin,
    'email':email,
    'phone':phone
  };
}