class Practice {
  final int id;
  final String name;
  final String directions;
  final String book;

  Practice({this.id, this.name, this.directions, this.book});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'book': book,
    };
  }

  Practice.fromDb(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        directions = map['directions'],
        book = map['book'];

  @override
  String toString() {
    return 'Practice{id: $id, name: $name, directions: $directions, book: $book}';
  }
}
