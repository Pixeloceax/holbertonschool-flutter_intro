class Character {
  String name = "";
  String img = "";
  int id = 0;

  Character(this.name, this.img, this.id);

  Character.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    img = json["image"];
    id = json["id"];
  }
}
