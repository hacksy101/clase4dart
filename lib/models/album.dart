class Album {
  int id;
  int userId;
  String title;

  Album({
    this.id,
    this.userId,
    this.title,

  });

  factory Album.fromJson(Map<String,dynamic> json){
    return Album(
      id: json['id'] ?? 1,
      userId: json['userId'] ?? 1 ,
      title: json['title'] ?? "",
    );
  }

  static List<Album> fromJsonList(List<dynamic> albumJsonList){
    List<Album> albumsList = List<Album>();
    albumJsonList.forEach((dynamic userJson){
      albumsList.add(Album.fromJson(userJson));
    });
    return albumsList;
  }
}
