class LearningPackage {
  final String packageId;
  final String title;
  final String language;
  final String level;
  final String description;
  final String iconUrl;
  final int    version;
  final String lastUpdatedDate;
  final String author;
  final List<Word> words;

  const LearningPackage({
    required this.packageId,
    required this.title,
    required this.language,
    required this.level,
    required this.description,
    required this.iconUrl,
    required this.version,
    required this.lastUpdatedDate,
    required this.author,
    required this.words,
  });
}

class Word {
  final String text;
  final List<Definition> definitions;
  final List<Sentence> sentences;
  const Word({required this.text, required this.definitions, required this.sentences});
}

class Definition {
  final String text;
  final String? source;
  const Definition({required this.text, this.source});
}

class Sentence {
  final String text;
  final List<Resource> resources;
  const Sentence({required this.text, required this.resources});
}

class Resource {
  final String title;
  final String url;
  final String type; // Photo | Video | Website
  const Resource({required this.title, required this.url, required this.type});
}