class Practice {
  final int id;
  final String name;
  final String directions;
  final String book;
  final int favorite;

  Practice({this.id, this.name, this.directions, this.book, this.favorite});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'directions': directions,
      'book': book,
      'favorite': favorite,
    };
  }

  Practice.fromDb(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        directions = map['directions'],
        book = map['book'],
        favorite = map['favorite'];

  @override
  String toString() {
    return 'Practice{id: $id, name: $name, directions: $directions, book: $book, favorite: $favorite}';
  }
}
