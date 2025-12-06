class Word {
  const Word({
    required this.id,
    required this.term,
    required this.meaning,
    this.example = '',
  });

  final String id;
  final String term;
  final String meaning;
  final String example;

  Word copyWith({
    String? term,
    String? meaning,
    String? example,
  }) {
    return Word(
      id: id,
      term: term ?? this.term,
      meaning: meaning ?? this.meaning,
      example: example ?? this.example,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'term': term,
        'meaning': meaning,
        'example': example,
      };

  factory Word.fromJson(Map<String, dynamic> json) {
    return Word(
      id: json['id'] as String,
      term: json['term'] as String,
      meaning: json['meaning'] as String,
      example: json['example'] as String? ?? '',
    );
  }
}
