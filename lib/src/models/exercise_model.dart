class Exercise {
  final int id;
  final String name;
  final String directions;
  final String book;

  Exercise({this.id, this.name, this.directions, this.book});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'book': book,
    };
  }

  Exercise.fromDb(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        directions = map['directions'],
        book = map['book'];

  @override
  String toString() {
    return 'Exercise{id: $id, name: $name, directions: $directions, book: $book}';
  }
}
