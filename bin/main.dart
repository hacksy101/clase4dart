import 'package:FutureApp/models/post.dart';
import 'package:FutureApp/models/user.dart';
import 'package:FutureApp/webservices.dart';

void main() {
  WebServices ws = WebServices();
 /* List<User> globalUsers;
  await ws.getUsers((List<User> users){
    globalUsers = users;
    users.forEach((User user){
      print("Nombre1: ${user.name}, Telefono:${user.phone}");
    });
  });

  await ws.getPosts((List<Post> posts){
    posts.forEach((Post post){
      print("Title: ${post.title}, Body:${post.body}");
    });
  });
  print(globalUsers);
  */

   ws.getStarWarsPeople(1).catchError((error){
     print(error.toString());
   }).then((body){
     print(body);
  });

}
