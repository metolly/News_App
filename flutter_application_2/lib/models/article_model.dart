class articleModel {
  final String? image;
  final String? title;
  final String? Subtitle;
  articleModel(
      {required this.image, required this.title, required this.Subtitle});
  factory articleModel.fromJeson(json) {
    return articleModel(
        image: json['urlToImage'],
        title: json['title'],
        Subtitle: json['description']);
  }
}
