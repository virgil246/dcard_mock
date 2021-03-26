import 'package:dcard_mock/Class/DcardPosts.dart';
import 'package:http/http.dart' as http;

class DcardApi {
  var rootUrl = Uri.https("www.dcard.tw", "/service/api/v2");

  Future<List<Posts>> GetPosts() async {
    var postUri = Uri.https(rootUrl.authority, rootUrl.path + "/posts");
    print(postUri);
    var response = await http.get(postUri);
    if (response.statusCode == 200) {
       List<Posts> posts=postsFromJson(response.body);
      posts.forEach((element) {print(element.title);});
      return posts;
    }
  }
}
