import 'dart:convert';
import 'package:FutureApp/models/album.dart';
import 'package:FutureApp/models/post.dart';
import 'package:http/http.dart' as http;
import 'package:FutureApp/models/user.dart';
import 'package:http/http.dart';

typedef void UserListCallback(List<User> users);
typedef void PostListCallback(List<Post> posts);
typedef void AlbumListCallback(List<Album> albums);

class WebServices{
  String usersUrl = "https://jsonplaceholder.typicode.com/users";
  String postsUrl = "https://jsonplaceholder.typicode.com/posts";
  String albumsUrl = "https://jsonplaceholder.typicode.com/albums";

  void getUsers(UserListCallback callback) async{
    await http.get(usersUrl).then((response) {
      List<User> users = User.fromJsonList(json.decode(response.body));
      if(callback!=null) {
        callback(users);
      }
    });
  }

  void getPosts(PostListCallback callback) async{
    await http.get(postsUrl).then((response) {
      List<Post> posts = Post.fromJsonList(json.decode(response.body));
      if(callback!=null) {
        callback(posts);
      }
    });
  }

  void getAlbums(AlbumListCallback callback) async{
    await http.get(albumsUrl).then((response) {
      List<Album> albums = Album.fromJsonList(json.decode(response.body));
      if(callback!=null) {
        callback(albums);
      }
    });
  }

  Future<String> getStarWarsPeople(int id) async{
    String url = "https://swapi.co/api/people/${id}/";
    Response response = await http.get(url);
    if(response.statusCode == 200){
      return response.body;
    }else{
      throw Exception('No existe ese personaje de Star Wars');
    }
  }
}



