class Post {
  int id;
  int userId;
  String title;
  String body;

  Post({
    this.id,
    this.userId,
    this.title,
    this.body,

  });

  factory Post.fromJson(Map<String,dynamic> json){
    return Post(
      id: json['id'] ?? 1,
      userId: json['userId'] ?? 1 ,
      title: json['title'] ?? "",
      body: json['body'] ?? "",
    );
  }

  static List<Post> fromJsonList(List<dynamic> postJsonList){
    List<Post> postsList = List<Post>();
    postJsonList.forEach((dynamic userJson){
      postsList.add(Post.fromJson(userJson));
    });
    return postsList;
  }
}
