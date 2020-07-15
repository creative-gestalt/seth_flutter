class Quote {
  final int id;
  final String quote;
  final String book;

  Quote({this.id, this.quote, this.book});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quote': quote,
      'book': book,
    };
  }

  @override
  String toString() {
    return 'Quote{id: $id, quote: $quote, book: $book}';
  }
}
