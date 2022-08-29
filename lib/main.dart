import 'package:day007/story_item.dart';
import 'package:day007/feed_item.dart';
import 'package:day007/post_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'UI Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(222, 226, 230, 1),
      appBar: AppBar(
        title: Text(
          widget.title,
          // style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromRGBO(33, 37, 41, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(108, 117, 125, 1),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 20, left: 15, right: 15),
                  child: Row(
                    children: [
                      StoryItem(
                        titleText: 'Hello1',
                        descriptionText: 'New Ice Cream',
                        storyLink:
                            'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                        newStory: true,
                      ),
                      StoryItem(
                        titleText: 'Hello2',
                        descriptionText: 'Ice Cream',
                        storyLink:
                            'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                        newStory: false,
                      ),
                      StoryItem(
                        titleText: 'Hello3',
                        descriptionText: 'Old Ice Cream',
                        storyLink:
                            'https://images.unsplash.com/photo-1579202673506-ca3ce28943ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
                        newStory: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              // color: Colors.blueGrey.withOpacity(0.3),
              padding: const EdgeInsets.only(
                  top: 10, bottom: 20, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Posts',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  for (int i = 0; i < posts.length; i++)
                    FeedItem(
                      titleFeed: '${i + 1} | ${posts[i]}',
                      descriptionFeed: 'I am batman, I am batman, I am batman ',
                      imageLink:
                          'https://assets-prd.ignimgs.com/2022/02/28/the-batman-1646069186545.jpg?width=1280',
                    ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(33, 37, 41, 1),
        onPressed: () {
          // setState(() {
          //   posts.add('Batman');
          // });
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) {
              return const PostPage();
            }),
          ).then((value) {
            if (value is String) {
              setState(() {
                posts.add(value);
              });
            }
          });
        },
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
