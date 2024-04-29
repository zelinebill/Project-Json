class Sample {
  final String? name;
  final int? age;
  final List<String>? hobi;
  final Github? github;
  final List<Movie>? movie;

  Sample({this.name, this.age, this.hobi, this.github, this.movie});

  factory Sample.fromJson(Map<String, dynamic> json){
    return Sample(
      name: json["name"] ?? '',
      age: json["age"] ?? 0,
      hobi: List<String>.from(json["hobi"] ?? []),
      github: Github.fromJson(json["github"]),
      movie: List<Movie>.from(json["movie"].map((movie) => Movie.fromJson(movie)) ??[])
    );
  }

  @override
  String toString() {
    return 'Sample{name: $name, age:$age, hobi: $hobi, github: $github, movie: $movie}';
  }
}
class Github{
  final String username;
  final int repositories;
  final bool isGDE;

  Github({required this.username, required this.repositories, required this.isGDE});
  factory Github.fromJson(Map<String, dynamic> json) {
    return Github(
      username: json["username"],
      repositories: json["repositories"],
      isGDE: json["isGDE"]
    );
  }

  @override
  String toString() {
    return 'Github{username: $username, repositories: $repositories, isGDE: $isGDE}';
  }
}

class Movie {
  final int? id;
  final String? title;
  final String? sinopsis;

  Movie({this.id, this.title, this.sinopsis});
  factory Movie.fromJson(Map<String, dynamic> json){
    return Movie(
      id: json["id"] ?? 0,
      title: json["title"] ?? "",
      sinopsis: json["sinopsis"] ?? "",
    );
  }
}