class UserModel{
  int? _age;
  String? _date;
  int? _id;
  String? _name;

  int? get age => _age;
  String? get date => _date;
  int? get id => _id;
  String? get name => _name;

  UserModel({
    int? age,
    String? date,
    int? id,
    String? name,
  }){
    _age = age;
    _date = date;
    _id = id;
    _name = name;
  }

  UserModel.fromJson(Map<String,dynamic> element){
    _age = element["Age"];
    _date = element["Date"];
    _id = element["ID"];
    _name = element["Nmae"];
  }

  // Map<String,dynamic> toJson(){
  //   final map = <String, dynamic>{};
  //   map["Age"] = _age;
  //   map["Date"] = _date;
  //   map["ID"] = _id;
  //   map["Nmae"] = _name;
  //   return map;
  // }

}

