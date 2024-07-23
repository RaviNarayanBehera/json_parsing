import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/post_provider.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Post Provider',style: TextStyle(fontSize: 25),),
          ),
        body: ListView.builder(
            itemCount: postProvider.postModel.posts.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: ListTile(
                horizontalTitleGap: 10,
                leading: Text(postProvider.postModel.posts[index].id.toString()),
                title: Text(postProvider.postModel.posts[index].title,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                subtitle: Text("            ${postProvider.postModel.posts[index].body}"),
                trailing: Text("Views : ${postProvider.postModel.posts[index].views}\nLikes : ${postProvider.postModel.posts[index].reactions.likes}\nDislikes : ${postProvider.postModel.posts[index].reactions.dislikes}"),
              ),
            ),
          ),
      ),
    );
  }
}

// Card(
// color: const Color(0xff222428),
// child: Padding(
// padding: const EdgeInsets.all(8.0),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// ElevatedButton(
// onPressed: () {},
// child: Text(
// 'User Id : ${postProvider.postModel.posts[index].userId.toString()}',
// style: TextStyle(fontSize: 15)),
// ),
// const SizedBox(height: 2),
// Text(
// "'${postProvider.postModel.posts[index].title}'"),
// const SizedBox(height: 2),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: List.generate(
// postProvider.postModel.posts[index].tags.length,
// (index) => Text(
// '${postProvider.postModel.posts[index].tags[index]}, ')),
// ),
// const SizedBox(height: 2),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Text(
// 'likes : ${postProvider.postModel.posts[index].reactions.likes.toString()}  '),
// Text(
// 'dislikes : ${postProvider.postModel.posts[index].reactions.dislikes.toString()}'),
// ],
// ),
// ],
// ),
// ),
// ),