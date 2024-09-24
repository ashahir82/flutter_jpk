class Pelajar {
  int? id;
  String? name;
  String? gender;
  int? statusHadir;

  Pelajar({this.id, this.name, this.gender, this.statusHadir});

  Pelajar.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    gender = json["gender"];
    statusHadir = json["status_hadir"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["gender"] = gender;
    _data["status_hadir"] = statusHadir;
    return _data;
  }

  Pelajar copyWith({
    int? id,
    String? name,
    String? gender,
    int? statusHadir,
  }) =>
      Pelajar(
        id: id ?? this.id,
        name: name ?? this.name,
        gender: gender ?? this.gender,
        statusHadir: statusHadir ?? this.statusHadir,
      );
}
