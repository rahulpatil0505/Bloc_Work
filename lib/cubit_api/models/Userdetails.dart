
class UserDetails {
  List<Users>? users;
  int? total;
  int? skip;
  int? limit;

  UserDetails({this.users, this.total, this.skip, this.limit});

  UserDetails.fromJson(Map<String, dynamic> json) {
    if(json["users"] is List) {
      users = json["users"] == null ? null : (json["users"] as List).map((e) => Users.fromJson(e)).toList();
    }
    if(json["total"] is int) {
      total = json["total"];
    }
    if(json["skip"] is int) {
      skip = json["skip"];
    }
    if(json["limit"] is int) {
      limit = json["limit"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(users != null) {
      _data["users"] = users?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  int? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? domain;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;

  Users({this.id, this.firstName, this.lastName, this.maidenName, this.age, this.gender, this.email, this.phone, this.username, this.password, this.birthDate, this.image, this.bloodGroup, this.height, this.weight, this.eyeColor, this.hair, this.domain, this.ip, this.address, this.macAddress, this.university, this.bank, this.company, this.ein, this.ssn, this.userAgent});

  Users.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["firstName"] is String) {
      firstName = json["firstName"];
    }
    if(json["lastName"] is String) {
      lastName = json["lastName"];
    }
    if(json["maidenName"] is String) {
      maidenName = json["maidenName"];
    }
    if(json["age"] is int) {
      age = json["age"];
    }
    if(json["gender"] is String) {
      gender = json["gender"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["phone"] is String) {
      phone = json["phone"];
    }
    if(json["username"] is String) {
      username = json["username"];
    }
    if(json["password"] is String) {
      password = json["password"];
    }
    if(json["birthDate"] is String) {
      birthDate = json["birthDate"];
    }
    if(json["image"] is String) {
      image = json["image"];
    }
    if(json["bloodGroup"] is String) {
      bloodGroup = json["bloodGroup"];
    }
    if(json["height"] is int) {
      height = json["height"];
    }
    if(json["weight"] is double) {
      weight = json["weight"];
    }
    if(json["eyeColor"] is String) {
      eyeColor = json["eyeColor"];
    }
    if(json["hair"] is Map) {
      hair = json["hair"] == null ? null : Hair.fromJson(json["hair"]);
    }
    if(json["domain"] is String) {
      domain = json["domain"];
    }
    if(json["ip"] is String) {
      ip = json["ip"];
    }
    if(json["address"] is Map) {
      address = json["address"] == null ? null : Address.fromJson(json["address"]);
    }
    if(json["macAddress"] is String) {
      macAddress = json["macAddress"];
    }
    if(json["university"] is String) {
      university = json["university"];
    }
    if(json["bank"] is Map) {
      bank = json["bank"] == null ? null : Bank.fromJson(json["bank"]);
    }
    if(json["company"] is Map) {
      company = json["company"] == null ? null : Company.fromJson(json["company"]);
    }
    if(json["ein"] is String) {
      ein = json["ein"];
    }
    if(json["ssn"] is String) {
      ssn = json["ssn"];
    }
    if(json["userAgent"] is String) {
      userAgent = json["userAgent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstName"] = firstName;
    _data["lastName"] = lastName;
    _data["maidenName"] = maidenName;
    _data["age"] = age;
    _data["gender"] = gender;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["username"] = username;
    _data["password"] = password;
    _data["birthDate"] = birthDate;
    _data["image"] = image;
    _data["bloodGroup"] = bloodGroup;
    _data["height"] = height;
    _data["weight"] = weight;
    _data["eyeColor"] = eyeColor;
    if(hair != null) {
      _data["hair"] = hair?.toJson();
    }
    _data["domain"] = domain;
    _data["ip"] = ip;
    if(address != null) {
      _data["address"] = address?.toJson();
    }
    _data["macAddress"] = macAddress;
    _data["university"] = university;
    if(bank != null) {
      _data["bank"] = bank?.toJson();
    }
    if(company != null) {
      _data["company"] = company?.toJson();
    }
    _data["ein"] = ein;
    _data["ssn"] = ssn;
    _data["userAgent"] = userAgent;
    return _data;
  }
}

class Company {
  Address1? address;
  String? department;
  String? name;
  String? title;

  Company({this.address, this.department, this.name, this.title});

  Company.fromJson(Map<String, dynamic> json) {
    if(json["address"] is Map) {
      address = json["address"] == null ? null : Address1.fromJson(json["address"]);
    }
    if(json["department"] is String) {
      department = json["department"];
    }
    if(json["name"] is String) {
      name = json["name"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(address != null) {
      _data["address"] = address?.toJson();
    }
    _data["department"] = department;
    _data["name"] = name;
    _data["title"] = title;
    return _data;
  }
}

class Address1 {
  String? address;
  String? city;
  Coordinates1? coordinates;
  String? postalCode;
  String? state;

  Address1({this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address1.fromJson(Map<String, dynamic> json) {
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["coordinates"] is Map) {
      coordinates = json["coordinates"] == null ? null : Coordinates1.fromJson(json["coordinates"]);
    }
    if(json["postalCode"] is String) {
      postalCode = json["postalCode"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address"] = address;
    _data["city"] = city;
    if(coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    _data["postalCode"] = postalCode;
    _data["state"] = state;
    return _data;
  }
}

class Coordinates1 {
  double? lat;
  double? lng;

  Coordinates1({this.lat, this.lng});

  Coordinates1.fromJson(Map<String, dynamic> json) {
    if(json["lat"] is double) {
      lat = json["lat"];
    }
    if(json["lng"] is double) {
      lng = json["lng"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["lng"] = lng;
    return _data;
  }
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({this.cardExpire, this.cardNumber, this.cardType, this.currency, this.iban});

  Bank.fromJson(Map<String, dynamic> json) {
    if(json["cardExpire"] is String) {
      cardExpire = json["cardExpire"];
    }
    if(json["cardNumber"] is String) {
      cardNumber = json["cardNumber"];
    }
    if(json["cardType"] is String) {
      cardType = json["cardType"];
    }
    if(json["currency"] is String) {
      currency = json["currency"];
    }
    if(json["iban"] is String) {
      iban = json["iban"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["cardExpire"] = cardExpire;
    _data["cardNumber"] = cardNumber;
    _data["cardType"] = cardType;
    _data["currency"] = currency;
    _data["iban"] = iban;
    return _data;
  }
}

class Address {
  String? address;
  String? city;
  Coordinates? coordinates;
  String? postalCode;
  String? state;

  Address({this.address, this.city, this.coordinates, this.postalCode, this.state});

  Address.fromJson(Map<String, dynamic> json) {
    if(json["address"] is String) {
      address = json["address"];
    }
    if(json["city"] is String) {
      city = json["city"];
    }
    if(json["coordinates"] is Map) {
      coordinates = json["coordinates"] == null ? null : Coordinates.fromJson(json["coordinates"]);
    }
    if(json["postalCode"] is String) {
      postalCode = json["postalCode"];
    }
    if(json["state"] is String) {
      state = json["state"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address"] = address;
    _data["city"] = city;
    if(coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    _data["postalCode"] = postalCode;
    _data["state"] = state;
    return _data;
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    if(json["lat"] is double) {
      lat = json["lat"];
    }
    if(json["lng"] is double) {
      lng = json["lng"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["lng"] = lng;
    return _data;
  }
}

class Hair {
  String? color;
  String? type;

  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    if(json["color"] is String) {
      color = json["color"];
    }
    if(json["type"] is String) {
      type = json["type"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    _data["type"] = type;
    return _data;
  }
}