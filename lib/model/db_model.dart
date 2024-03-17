class User {
  int? id;
  String tittle;
  String content;

  User({
    this.id,
    required this.tittle,
    required this.content,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }

  static User fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      tittle: map['tittle'],
      content: map['content'],
    );
  }
}
