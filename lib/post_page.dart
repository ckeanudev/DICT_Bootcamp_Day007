import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  var _textEditingControllerTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add New Post'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const Text(
                "Post's Title:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              TextField(
                autofocus: true,
                controller: _textEditingControllerTitle,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, _textEditingControllerTitle.text);
                    },
                    child: Row(children: const [
                      Icon(Icons.add),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Post to Timeline'),
                      SizedBox(
                        width: 5,
                      ),
                    ]),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
